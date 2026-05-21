using System;

public static class Leap
{
    public static bool IsLeapYear(int year)
    {
	if ( year%4==0 ){
		if ( ( year%100==0) && (year%400==0) )
			return true;
		else if ( year%100==0) 
			return false;
		else
			return true;
	}
	else
		return false;
    }
}
/*
```text
on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400
```

For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
year, but 2000 is.
*/
