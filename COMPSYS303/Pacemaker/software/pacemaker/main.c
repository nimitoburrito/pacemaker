#include <system.h>
#include <stdint.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sccharts.h"
#include "timing.h"
#include "sys/alt_alarm.h"
#include <sys/alt_irq.h>
#include "altera_avalon_uart_regs.h"
#include "altera_avalon_uart.h"

// variables for c implementation

volatile uint8_t AS_input;
volatile uint8_t VS_input;

volatile uint8_t AS_temp;
volatile uint8_t VS_temp;

volatile uint8_t AP_output;
volatile uint8_t VP_output;

volatile uint8_t LRI_state = 0;

volatile uint8_t URI_state = 0;
volatile uint8_t URI_timeout = 0;

volatile uint8_t PVARP_state = 0;
volatile uint8_t PVARP_timeout = 0;

volatile uint8_t VRP_state = 0;
volatile uint8_t VRP_timeout = 0;

volatile uint8_t AVI_state = 0;
volatile uint8_t AEI_state = 0;

volatile int LRI_timer, URI_timer, PVARP_timer, VRP_timer, AVI_timer, AEI_timer = 0;

// System time ISR
alt_u32 timerISR(void* context) {
    int* timecount = (int*)context;
    (*timecount)++;

    LRI_timer++;
    URI_timer++;
    PVARP_timer++;
    VRP_timer++;
    AVI_timer++;
    AEI_timer++;

    return 1;
}


// assigning temporary variables when receiving UART inputs
void uart_isr() {
	 if (IORD_ALTERA_AVALON_UART_STATUS(UART_BASE) & ALTERA_AVALON_UART_STATUS_RRDY_MSK) {
		 char received = IORD_ALTERA_AVALON_UART_RXDATA(UART_BASE);
		 if (received == 'A') {
			 AS_temp = 1;
		 } else if (received == 'V') {
			 VS_temp = 1;
		 }
	 }
}

// register the UART
void uart_init() {
    IOWR_ALTERA_AVALON_UART_CONTROL(UART_BASE,0);
    IOWR_ALTERA_AVALON_UART_CONTROL(UART_BASE, ALTERA_AVALON_UART_CONTROL_RRDY_MSK);
    alt_ic_isr_register(UART_IRQ_INTERRUPT_CONTROLLER_ID, UART_IRQ, uart_isr, NULL, NULL);
}

// function to send 1 character over UART
void send_uart(char c) {
	 while (!(IORD_ALTERA_AVALON_UART_STATUS(UART_BASE) & ALTERA_AVALON_UART_STATUS_TRDY_MSK));
	 IOWR_ALTERA_AVALON_UART_TXDATA(UART_BASE, c);
}


// Reset all signals at end of each tick in SCCharts
void resetHeartEvents(TickData* d) {

    d->AS = 0;
    d->AP = 0;
    d->VS = 0;
    d->VP = 0;
}


// C implementation logic
void c_implementation() {

	// LRI
	// Ensures that a ventricular pacing (VP) event occurs if no ventricular sense (VS) is detected within a set interval.
	if (LRI_state == 0) {
		if (VS_input || VP_output) { // Reset LRI timer on VS or VP
			LRI_state = 1;
			LRI_timer = 0;
		}
	} else {
		if ((VS_input || VP_output)) {
			LRI_timer = 0; // Reset LRI timer on VS or VP
		}
		if (LRI_timer >= LRI_VALUE) { // Trigger ventricular pacing (VP) if LRI expires
			VP_output = 1;
			LRI_timer = 0;
		}
	}

	//URI
	// Prevents excessive ventricular pacing by ensuring a minimum delay between events
	if (URI_state == 0) {
		if (VS_input || VP_output) { // Reset URI timer on VS or VP
			URI_timer = 0;
			URI_state = 1;
		}
	} else {
		if (URI_timer < URI_VALUE) {
			URI_timeout = 1; // Enforce pacing limit
		} else {
			URI_timeout = 0; // Allow pacing again
			URI_state = 0;
		}
	}

	// PVARP
	// Prevents inappropriate atrial sensing immediately after a ventricular event.
	if (PVARP_state == 0) {
		if (VS_input || VP_output) { // Start PVARP after a ventricular event
			PVARP_timer = 0;
			PVARP_state = 1;
		}
	} else {
		if (PVARP_timer < PVARP_VALUE) {
			PVARP_timeout = 1;  // outputs a signal that inhibits atrial sensing
		} else {
			PVARP_timeout = 0; // Allow atrial sensing again
			PVARP_state = 0;
		}
	}

	// VRP
	// Prevents double counting of ventricular events.
	if (VRP_state == 0) {
		if (VS_input || VP_output) { // Start VRP after a ventricular event
			VRP_timer = 0;
			VRP_state = 1;
		}
	} else {
		if (VRP_timer < VRP_VALUE) {
			VRP_timeout = 1; // outputs a signal that inhibits ventricular sensing
		} else {
			VRP_timeout = 0; // Allow ventricular sensing again
			VRP_state = 0;
		}
	}

	// AVI
	 // Ensures a delay between an atrial event and a subsequent ventricular pacing event.
	if (AVI_state == 0) {
		if ((AS_input || AP_output) && (!PVARP_timeout)) { // Start AVI on atrial event when not in refractory period
			AVI_timer = 0;
			AVI_state = 1;
		}
	} else {
		if (VS_input) {
			AVI_state = 0; // Cancel AVI if a ventricular sense occurs
		} else if ((AVI_timer >= AVI_VALUE) && !URI_timeout) {
			VP_output = 1; // Trigger ventricular pacing if AVI expires and URI is reached
			AVI_state = 0;
		}
	}

	// AEI
    // Ensures a delay before triggering atrial pacing if no atrial activity is detected.
	if (AEI_state == 0) {
		if ((VS_input || VP_output) && (!VRP_timeout)) {  // Start AEI on ventricular event when not in refractory period
			AEI_timer = 0;
			AEI_state = 1;
		}
	} else {
		if (AS_input) {
			AEI_state = 0;  // Cancel AEI if an atrial sense occurs
		} else if (AEI_timer >= AEI_VALUE) {
			AP_output = 1; // Trigger atrial pacing if AEI expires
			AEI_state = 0;
		}
	}
}

int main() {

	// Variable declarations
    alt_alarm ticker;
    uint64_t systemTime = 0;
    uint64_t prevTime = 0;
    uint32_t led_reset = 0x00;
    uint8_t reset_button = 0;

//    unsigned int uiSwitchValue = 0;
    uint8_t rled_output = 0x00;

    // Create the struct
    TickData data;

    // Initialise
    resetHeartEvents(&data);
    reset(&data);
    tick(&data);

    uart_init();

    // Initialize the system time
    void* timerContext = (void*)&systemTime;
    alt_alarm_start(&ticker, 1, timerISR, timerContext);

    // Reset leds when starting
    IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);

    while (1) {

    	// read switches
    	uint8_t mode = (IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE) & (1 << 0)) ? 1 : 0;
    	uint8_t implementation = (IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE) & (1 << 1)) ? 1 : 0;

    	if (mode == 0) {

    		// Set reset variable when reset button press is detected
    		if (~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 2)) {
    			reset_button = 1;
    		}

    		// If reset is active reset leds and wait for heart sense input again
    		if (reset_button) {
    			IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);
    			IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, 0x08);
    			if ((~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 1)) ||
    				(~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 0))) {
    				reset_button = 0;
    				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, led_reset);
    			}
    			continue; // skip rest of the loop until input is detected
    		}

    		rled_output = (rled_output & ~0x01) | 0x02;
    		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, rled_output);

    		// Fetch button inputs (active low, so invert the bits)
    		AS_input = (~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 1)) ? 1 : 0;
    		VS_input = (~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 0)) ? 1 : 0;

    	}

    	else {
    			// set switch led to output when on
				rled_output |= 0x01;
				IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, rled_output);

				// assign temp variables to input when in uart mode
				AS_input = AS_temp;
				VS_input = VS_temp;

				// reset temo variables
				AS_temp = 0;
				VS_temp = 0;
    	    	}

    	if(implementation == 0) {

    		//reset leds
    		rled_output = (rled_output & ~0x02);
			IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, rled_output);
    		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);


    		// set input to scchart variables
    		data.AS = AS_input;
    		data.VS = VS_input;

        	// Move ticker along
    		data.deltaT = systemTime - prevTime;
    		prevTime = systemTime;
    		tick(&data);

    		// LED output based on AP and VP
    		uint32_t gled_output = 0x00;
    		if (data.VP) {
    			gled_output |= 0x01; // VP -> LED 0
    			send_uart('V');
    		}
    		if (data.AP) {
    			gled_output |= 0x04; // AP -> LED 2
    			send_uart('A');
    		}
    		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, gled_output);

    		// Short delay to make LED flashes visible
    		for (volatile int i = 0; i < 100000; i++);

    		// Reset leds
    		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);

    		 // Print the state to console
    		 printf("SCCHART - AS: %d, VS: %d, AP: %d, VP: %d\n", data.AS, data.VS, data.AP, data.VP);

    	}

    	else {
    		c_implementation();
    		c_implementation();

    		// set switch led to output when on
    		rled_output |= 0x02;

    		// reset leds
			IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, rled_output);
    		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);

    		// print to console
    		printf("C - AS: %d, VS: %d, AP: %d, VP: %d\n", AS_input, VS_input, AP_output, VP_output);

    		// LED output based on AP and VP
    		uint32_t gled_output = 0x00;
    		if (VP_output) {
				gled_output |= 0x01; // VP -> LED 0
				send_uart('V');
				VP_output = 0;
			}
			if (AP_output) {
				gled_output |= 0x04; // AP -> LED 2
				send_uart('A');
				AP_output = 0;
			}
			IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, gled_output);

			// Short delay to make LED flashes visible
			for (volatile int i = 0; i < 100000; i++);

			// Reset leds
			IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);
    	}

    	//reset inputs
    	AS_input = 0;
    	VS_input = 0;
    }

    return 0;
}
