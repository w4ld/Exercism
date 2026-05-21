using System;

public class SpaceAge
{
	private	double earth_years;
    public SpaceAge(int seconds)
    {
	earth_years= seconds/(60*60*24*365.25);
    }

    public double OnEarth()
    {
	return earth_years;
    }

    public double OnMercury()
    {
	return  earth_years / 0.2408467;
    }

    public double OnVenus()
    {
	return  earth_years / 0.61519726;
    }

    public double OnMars()
    {
	return  earth_years / 1.8808158;
    }

    public double OnJupiter()
    {
	return earth_years / 11.862615;
    }

    public double OnSaturn()
    {
	return  earth_years / 29.447498;
    }

    public double OnUranus()
    {
	return  earth_years / 84.016846;
    }

    public double OnNeptune()
    {
	return  earth_years / 164.79132;
    }
}
