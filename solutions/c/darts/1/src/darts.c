#include "darts.h"
uint8_t score(coordinate_t coords){
float x = coords.x;
float y = coords.y;
//general equation -->	x^2+y^2=r^2
float r2 = x*x+y*y;
//x^2+y^2=1
if(r2 <= 1)
	return 10;
//x^2+y^2=5
else if(r2 <= 25)
	return 5;
//x^2+y^2=10
else if(r2 <= 100)
	return 1;
else 
	return 0;
}
