#include <stdio.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include "sys/alt_alarm.h"

alt_u32 timer_isr_function(void *context)
{
	int *timeCount = (int *)context;
	(*timeCount)++;
	return 500; // the next time out will be 500 milli-seconds
}

int main()
{
	alt_alarm timer;
	int timeCountMain = 0, timeCountMainOld = 0;
	int keyZeroPressed = 0, keyOnePressed = 0;

	void *timerContext = (void *)&timeCountMain;

	unsigned int uiButtonsValue = 0;

	FILE *lcd;
	lcd = fopen(LCD_NAME, "w");

	// start the timer, with timeout of 1000 milli-seconds
	// alt_alarm_start(&timer, 500, timer_isr_function, timerContext);
	while (1)
	{
		// If the button is pressed, start the timer
		uiButtonsValue = IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE);

		// Key Zero handling
		if (!(uiButtonsValue & (1 << 0)))
		{
			// the key is pressed
			if (keyZeroPressed)
			{
				// key was already pressed last loop, do nothing
			}
			else
			{
				timeCountMain++;
				keyZeroPressed = 1;
			}
		}
		else
		{
			// the key is no longer pressed
			keyZeroPressed = 0;
		}

		// Key One handling
		if (!(uiButtonsValue & (1 << 1)))
		{
			// the key is pressed
			if (keyOnePressed)
			{
				// key was already pressed last loop, do nothing
			}
			else
			{
				alt_alarm_start(&timer, 500, timer_isr_function, timerContext);
				keyOnePressed = 1;
			}
		}
		else
		{
			// stop the timer, its not pressed anymore
			alt_alarm_stop(&timer);
			keyOnePressed = 0;
		}

		// If the timer count has changed then print the new value
		if (timeCountMain != timeCountMainOld)
		{
			#define ESC 27
			#define CLEAR_LCD_STRING "[2J"
			fprintf(lcd, "%c%s", ESC, CLEAR_LCD_STRING);
			fprintf(lcd, "COUNTER: %d\n", timeCountMain);

			timeCountMainOld = timeCountMain;
		}
	}
	return 0;
}
