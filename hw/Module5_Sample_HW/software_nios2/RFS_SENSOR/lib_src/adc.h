
#ifndef ADC_H_INCLUDED_
#define ADC_H_INCLUDED_

#include "terasic_includes.h"

bool ADC_Init(alt_u32 base);
bool ADC_Initialize();
bool ADC_Update();
alt_u32 ADC_GetChannel(alt_u8 ch);


#endif
