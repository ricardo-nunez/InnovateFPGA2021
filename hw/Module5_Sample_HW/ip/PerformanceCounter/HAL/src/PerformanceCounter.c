/*
 * PerformanceCounter.c
 *
 *  Created on: 21/12/2012
 *      Author: dcr
 */

#include "PerformanceCounter.h"


double secondsBetweenLaps(uint64 t0, uint64 tf)
{
	uint64 diff = tf-t0;
	double ddiff = (double) diff;

	double tdif = ddiff / PERFORMANCE_COUNTER_FREQ;

	return tdif;
}

void printLap(uint64 t0, uint64 tf)
{
	float d = secondsBetweenLaps(t0, tf);

	char* unit = " s";

	if (d < 0.001)
	{
		d *= 1000.0;
		unit = " ms";
	}

	if (d < 0.001)
	{
		d *= 1000.0;
		unit = " us";
	}

	printf("Time ");
	int v = d;
	printf("%d.", v);
	d -= v;

	for (int i=0; i < 3; i++)
	{
		d *= 10;
		v = d;
		printf("%d", v);
		d -= v;
	}

	printf(" %s\n", unit);
}


void delay(double seconds)
{
	uint64 t0 = perfCounter();
	uint64 tf;
	do
	{
		tf = perfCounter();
	} while (secondsBetweenLaps(t0, tf) < seconds);
}
