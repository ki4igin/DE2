/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "altera_avalon_pio_regs.h"
#include "system.h"

int main()
{
  printf("Hello from Nios II!\n");

  while(1)
  {
      int leds = 0x1;
      int i = 0;
      while(1)
      {
          IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, leds);
          for (i=0; i<(ALT_CPU_CPU_FREQ/500); i++);    // Delay
          // Johnson code counter on leds
          leds = ((leds<<1) & 0xFFFE) | (!(leds>>15) & 0x1);
          printf("%d ", leds);
      }

  }

  return 0;
}
