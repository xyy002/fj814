/*=================================================================================================
;**************************************************************************************************
;��������						:ChipInit.H
;��������						:оƬ��ʼ���ӳ���
;����˵��						:��ʼ��оƬ�Ĵ������û���ʼ��ֵ
;�����д��						:Yanbb
;�����汾						:V1.0.0
;�����༭���ʱ��				:2015-09-29
;*************************************************************************************************/
#ifndef _CHIPINIT_H
#define _CHIPINIT_H
//==================================================================================================

void Ram_init();
void Sys_init();
void IO_init();
void Timer_init();
void AD_init();
void Display_init();

void SetOnLed();
void SetOffLed();
void SetLedInput();
void SetLedOutput();

void TIME_INIT();
void UART_INITIAL();	
void User_init();
void WDT_INITIAL ();
void Time1Initial(void);
void Time2Initial(void);
void Time4Initial(void);
void Px_Level_Change_INITIAL(void);
void DelayUs(unsigned char Time);
void DelayMs(unsigned char Time);
void DelayS(unsigned char Time);
void Display_init();
//==================================================================================================
#endif