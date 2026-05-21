using System;

public static class Gigasecond
{
    public static DateTime Add(DateTime moment)
    {
	System.TimeSpan duration = new System.TimeSpan(0, 0, 0, 1000000000);
	return moment.Add(duration);
    }
}
//A gigasecond is 10^9 (1,000,000,000) seconds.
