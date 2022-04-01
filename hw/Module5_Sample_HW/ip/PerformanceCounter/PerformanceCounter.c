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


void delay(double seconds)
{
	uint64 t0 = perfCounter();
	uint64 tf;
	do
	{
		tf = perfCounter();
	} while (secondsBetweenLaps(t0, tf) < seconds);
}
