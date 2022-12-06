//*********************************************************
#ifndef _breathingLight_h_
#define _breathingLight_h_
//*********************************************************
//breathingLight
//*********************************************************

#define H1_ON()		LATC5 = 1
#define H1_OFF()	LATC5 = 0
#define H2_ON()		LATB7 = 1
#define H2_OFF()	LATB7 = 0
#define H3_ON()		LATC1 = 1
#define H3_OFF()	LATC1 = 0

#define	LED_PWM_LIMIT_MAX	150
#define	LED_PWM_LIMIT_MIN	0

unsigned char	s_u8TimeCounter = 0;		//中断计数
unsigned char	s_u8Led1PWMCounter = 0;		//LED占空比#define	LED_PWM_LIMIT_MAX	150
unsigned char	s_u8Led2PWMCounter = 0;		//LED占空比#define	LED_PWM_LIMIT_MAX	150
unsigned char	s_u8Led3PWMCounter = 0;		//LED占空比#define	LED_PWM_LIMIT_MAX	150

unsigned char	LED1_PMW_EN_Flag;
unsigned char	LED2_PMW_EN_Flag;
unsigned char	LED3_PMW_EN_Flag;

unsigned char	s_u8Led1Direction;
unsigned char	s_u8Led2Direction;
unsigned char	s_u8Led3Direction;

unsigned char	s_u8PWM1Counter;
unsigned char	s_u8PWM2Counter;
unsigned char	s_u8PWM3Counter;


void RGBSwitchStautus(uchar onoff);
void RGBbreathing(void);


#endif
//*********************************************************



