#include "armstrong_numbers.h"
#include <math.h>

int isArmstrongNumber(int num){
	int num2=num, digits=1, sum=0, x; 
        while((num2/10)>0 && digits++)//throw incrementer in to shrink?
                num2=num2/10;
	for(x=0;x<digits;x++)
                sum+=pow(((int)(num/(pow(10,x)))%10),digits);
	return sum==num;
}
