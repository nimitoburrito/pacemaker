#include <system.h>
#include <stdint.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sccharts.h"
#include "sys/alt_alarm.h"

uint32_t led_reset = 0x00;


alt_u32 timerISR(void* context) {
    int* timecount = (int*)context;
    (*timecount)++;
    return 1;
}


void resetHeartEvents(TickData* d) {

    d->AS = 0;
    d->AP = 0;
    d->VS = 0;
    d->VP = 0;
}

int main() {

    alt_alarm ticker;
    uint64_t systemTime = 0;
    uint64_t prevTime = 0;

    uint8_t reset_button = 0;

    // Create the struct
    TickData data;

    // Initialize
    resetHeartEvents(&data);
    reset(&data);
    tick(&data);

    void* timerContext = (void*)&systemTime;
    alt_alarm_start(&ticker, 1, timerISR, timerContext);


    IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);

    while (1) {

        if (~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 2)) {
            reset_button = 1;
        }

        if (reset_button) {
            IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);
            if ((~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 1)) ||
                (~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 0))) {
                reset_button = 0;
            }
            continue;
        }

        // Fetch button inputs (active low, so invert the bits)
        data.AS = (~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 1)) ? 1 : 0;
        data.VS = (~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 0)) ? 1 : 0;

        if ((~IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & (1 << 2))) {
            reset_button = 1;
        }

        data.deltaT = systemTime - prevTime;
        prevTime = systemTime;

        tick(&data);

        // LED control with visibility extension
        uint32_t led_output = 0x00;
        if (data.VP) {
            led_output |= 0x01; // VP -> LED 0
        }
        if (data.AP) {
            led_output |= 0x04; // AP -> LED 2
        }
        IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_output);

        // Short delay to make LED flashes visible
        for (volatile int i = 0; i < 100000; i++);

        // Reset leds
        IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, led_reset);

        // Print the state to console
        printf("AS: %d, VS: %d, AP: %d, VP: %d\n", data.AS, data.VS, data.AP, data.VP);
    }

    return 0;
}
