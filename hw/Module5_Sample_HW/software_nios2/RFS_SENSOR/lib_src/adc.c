
#include "adc.h"


volatile alt_u32* adc_dev = 0;

bool ADC_Init(alt_u32 base)
{
	adc_dev = (alt_u32*)base;	
	return true;
}

bool ADC_Initialize()
{
	return true;
}

bool ADC_Update()
{
	adc_dev[0] = 0;	 // update registers
}

alt_u32 ADC_GetChannel(alt_u8 ch)
{
	//return adc_dev[ch];

	alt_u32 r = IORD(adc_dev, ch);
	
	alt_u32 mask = (1<<12) -1;

	r = r & mask;	
	
	return r;
}
