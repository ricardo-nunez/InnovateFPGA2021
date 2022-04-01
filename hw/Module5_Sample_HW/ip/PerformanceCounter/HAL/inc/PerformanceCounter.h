#ifndef PERFORMANCECOUNTER_H_
#define PERFORMANCECOUNTER_H_

#include "system.h"

#include <io.h>

#ifndef INT64_DEFINED
typedef long long int64;
typedef unsigned long long uint64;
#define INT64_DEFINED
#endif

#ifdef NIOS2_CPU_FREQ
#define PERFORMANCE_COUNTER_FREQ	NIOS2_CPU_FREQ
#endif

/**
 * Returns the high performance (64bit) counter value
 * It contains the clock cycles from the system initialization
 *
 * @return the number of clocks (50Mhz) from initialization
 */
inline __attribute__((always_inline))  uint64  perfCounter()
{
//    static volatile uint64* pCounter; //  = (uint64*) PERFORMANCECOUNTER_0_BASE;

    uint64 val64;
    int* pCounter32 = (int*) &val64;
    
    pCounter32[0] = IORD(PERFORMANCECOUNTER_0_BASE, 0);
    pCounter32[1] = IORD(PERFORMANCECOUNTER_0_BASE, 1);

    return val64;
}

double secondsBetweenLaps(uint64 t0, uint64 tf);
void printLap(uint64 t0, uint64 tf);

void delay(double seconds);

#endif /*PERFORMANCECOUNTER_H_*/
