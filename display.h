#ifndef	_DIS_H_
#define	_DIS_H_
#include "syscfg.h"

#define		COM4		LATB6
#define		COM3		LATB5
#define		COM2		LATC2
#define		COM1		LATD1

#define		SEG_A		LATB0//LATD1
#define		SEG_B		LATD3//LATB6
#define		SEG_C		LATA1//
#define		SEG_D		LATA2//
#define		SEG_E		LATD2//
#define		SEG_F		LATB1//
#define		SEG_G		LATA0//
#define		SEG_DO	LATD4//

#define		COM5 		LATA3	
#define		COM6 		LATD0

void  Display(void);
void  DisplaycodeDeal(uint8_t displayData);

#endif	
