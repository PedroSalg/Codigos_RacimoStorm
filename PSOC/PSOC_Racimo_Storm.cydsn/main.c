/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "project.h"
int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */
    uint8  myBuffer[4];
    int32 Vret;
    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    Mixer_Start();
    Mixer_SetPower(Mixer_MEDPOWER);
    ADC_Start();
    EZI2C_Start();
    EZI2C_SetAddress1(0x60);
    
    
    for(;;)
    {
        ADC_StartConvert();
        ADC_IsEndConversion(ADC_WAIT_FOR_RESULT);
        Vret = ADC_GetResult32();
        ADC_StopConvert();
        myBuffer[0] = (Vret >> 24) & 0xff;
        myBuffer[1] = (Vret >> 16) & 0xff;
        myBuffer[2] = (Vret >> 8) & 0xff;
        myBuffer[3] = (Vret >> 0) & 0xff;
        EZI2C_SetBuffer1(4,4,myBuffer);
        CyDelay(100);

    }               
}

/* [] END OF FILE */
