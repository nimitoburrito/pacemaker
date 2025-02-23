#include <system.h>
#include <stdint.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sccharts.h"

uint64_t systemTime = 0;
uint64_t prevTime = 0;

int main() {
    // Create the struct
    TickData data;

    // Initialize
    reset(&data);

    while (1) {
        // Fetch button inputs (active low, so invert the bits)
        data.VS = !(IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0b0001);  // KEY0 = VS
        data.AS = !(IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0b0010);  // KEY1 = AS

        // Perform a tick
        data.deltaT = systemTime - prevTime;
        prevTime = systemTime;
        tick(&data);

        // If no heartbeat is detected, pacemaker should output pacing signals
        uint32_t ap_led = data.AP ? 0x1 : 0x0;  // AP controls LED 0
        uint32_t vp_led = data.VP ? 0x2 : 0x0;  // VP controls LED 1

        // Output AP and VP to LEDs
        IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, ap_led | vp_led);

        // Print the state to console
        printf("AS: %d, VS: %d, AP: %d, VP: %d\n", data.AS, data.VS, data.AP, data.VP);
    }

    return 0;
}
