#include "resistor_color.h"
#include <stdint.h>
int color_code(resistor_band_t color)
{
   return (int)color;
}
const resistor_band_t *colors(void)
{
   static resistor_band_t resistor_colors[] = {
      BLACK, BROWN, RED, ORANGE, YELLOW,
      GREEN, BLUE, VIOLET, GREY, WHITE
   };
   return resistor_colors;
}