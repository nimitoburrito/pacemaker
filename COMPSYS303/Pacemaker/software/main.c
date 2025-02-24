#include <system.h>
#include <stdint.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sccharts.h"
#include "sys/alt_alarm.h"

uint32_t LEDs = 0x00;


alt_u32 timerISR(void* context) {
	int* timecount = (int*) context;
	(*timecount)++;
	return 1;
}



void resetHeartEvents(TickData *d) {

	d->AS = 0;
	d->AP = 0;
	d->VS = 0;
	d->VP = 0;
}

int main() {
    // Create the struct
    TickData data;
    alt_alarm ticker;
    // Initialize
    reset(&data);
    tick(&data);
    uint64_t systemTime = 0;
    void* timerContext = (void*) &systemTime;
    alt_alarm_start(&ticker, 1, timerISR, timerContext);
    uint64_t prevTime = 0;



    IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE,LEDs );
    while (1) {
        // Fetch button inputs (active low, so invert the bits)


        // Perform a tick

        resetHeartEvents(&data);
    	if( ~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE)& 1 << (1)){
    		data.AS = 1;
    	}
    	else{
    		data.AS = 0;
    	}


   	data.deltaT = systemTime - prevTime;
    	      prevTime = systemTime;

    	tick(&data);


    	if (data.VP){
    		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0x01);
    	}

    	if (data.AP){
    		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0x04);
    	}

        //data.VS = !(IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0b0001);  // KEY0 = VS
       // data.AS = !(IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0b0010);  // KEY1 = AS

        // If no heartbeat is detected, pacemaker should output pacing signals


//        if (data.VP == 1){
//        	IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, 0x01);
//        }

//        uint32_t AP_pulse = data.AP ? 0x1 : 0x0;  // AP controls LED 0
  //      uint32_t VP_pulse = data.VP ? 0x2 : 0x0;  // VP controls LED 1

        // Output AP and VP to LEDs
        //IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, AP_pulse | VP_pulse);



        // Print the state to console
       printf("AS: %d, VS: %d, AP: %d, VP: %d\n", data.AS, data.VS, data.AP, data.VP);
       // printf("AS: %d, VS: %d, AP: %d, VP: %d\n", data.AS, data.VS, AP_pulse, data.VP);
    }

    return 0;
}
