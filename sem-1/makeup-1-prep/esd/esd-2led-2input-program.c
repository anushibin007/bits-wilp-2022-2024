// Input & Output Pin Programming to Drive 2 LEDs through 2 Switches

// PIN DIAGRAM //
// P0.0 --- SWITCH1
// P0.1 --- SWITCH2
// P0.4 --- LED1
// P0.5 --- LED2

// OPERATION OVERVIEW //
// Press SWITCH1 -> LED1 & LED2 turns ON
// Press SWITCH2 -> LED1 & LED2 turns OFF

// PROGRAM //
#include <LPC23xx.H>
int main()
{
    /* Configuring P0.0 to P0.15 as GPIO */
    /* 00000000000000000000000000000000 (Bin) = 0x0 (Hex) */
    PINSEL0 = 0x0;

    /* SWITCH1(P0.0) and SWITCH2(P0.1) bit as an input pin */
    /* 00000000000000000000000000000011 (Bin) = 0x3 (Hex) */
    IODIR0 = 0x3;

    while (1)
    {
        /* If SWITCH1(P0.0) is closed & pressed, pin is LOW */
        /* 00000000000000000000000000000001 (Bin) = 0x1 (Hex) */
        if (!(IOPIN0 & 0x1))
        {
            /* Turn on LED1(P0.4) & LED2(P0.5) */
            /* Also, unpress SWITCH1(P0.0) to avoid 2 switches being pressed at the same time*/
            /* 00000000000000000000000000110001 (Bin) = 0x31 (Hex) */
            IOSET0 = 0x31;
        }

        /* If SWITCH1(P0.1) is closed & pressed, pin is LOW */
        /* 00000000000000000000000000000010 (Bin) = 0x2 (Hex) */
        if (!(IOPIN0 & 0x2))
        {
            /* Turn off LED1(P0.4) & LED2(P0.5) */
            /* Also, unpress SWITCH2(P0.1) to avoid 2 switches being pressed at the same time*/
            /* 00000000000000000000000000110010 (Bin) = 0x32 (Hex) */
            IOCLR0 = 0x32;
        }
    }
}