#include <system.h>
#include <stdint.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sccharts.h"
#include <stdio.h>

int main() {
    // Create the struct
    TickData data;

    // Initialize
    reset(&data);

    while (1) {
        // Fetch button inputs (active low, so invert the bits)
        data.A = !(IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0b0001);
        data.B = !(IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0b0010);
        data.R = !(IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE) & 0b0100);

        // Perform a tick
        tick(&data);

        uint32_t all_leds = data.O ? 0xFFFFF : 0x00000;

        // Output O to Red LED
        IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, all_leds);

        // Print the state to console
        printf("A: %d, B: %d, R: %d, O: %d\n", data.A, data.B, data.R, data.O);
    }

    return 0;
}
