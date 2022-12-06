
#include "includes.h"
// volatile uint16_t 	readKeyNum;    	//返回的键值  bit0~bit14对应key1~key15  0没有按下，1按下
// extern uint8_t      fmd_channels;

// uint16_t   TouchTimeCount;

/*****************************************************
     KEY OPERATE
******************************************************/

void PowerKeyExec()
{
	bSysRunFlg = ~bSysRunFlg;

	if(bSysRunFlg)
	{
		PwrType=PwrOn;
		ModeType=2;
		HeatType=1;		
		StrongType=2;
		ManualType=0;

		LastMode=ModeType;
		LastManual=ManualType;
		if(bTestModeFlg)
		{
			TimeType=88;
			DspIndex =DsTime;
		}
		else 
		{
			TimeType=15;
			DspIndex =DsMode;
		}		

	}
	else
	{
		PwrType=PwrOff;
		ModeType=0;
		HeatType=0;		
		StrongType=0;
		TimeType=0;
		ManualType=0;
		DspIndex =DsSty; 
		bTestModeFlg=off;
	}
	//RGBSwitchStautus(bSysRunFlg);
	TimeMin=TimeType;
	TIME_INIT();
}

void ModeKeyExec(void)
{	
	if(bSysRunFlg)
	{
		if(PwrType==PwrSty)PwrType=PwrOn;

		if(ModeType==0)
		{
			if(LastMode==0)LastMode=1;
			ModeType=LastMode;

			LastManual=ManualType;
			ManualType=0;
		}
		else if(ModeType >= Mode3)
		{
			ModeType = Mode1; 
		}
	    else ModeType+=1;

		DspIndex =DsMode;
	}
}
void ManualKeyExec(void)
{
	if(bSysRunFlg)
	{	
		if(ManualType==0)
		{
			if(LastManual==0){LastManual=1;  HeatType=1;}
			ManualType=LastManual;

			LastMode=ModeType;
			ModeType=0;			
		}
		else if(ManualType >= 3)
		{
			ManualType = 1; HeatType=1;
		}
	    else ManualType+=1;

		ModeType=0;

		DspIndex =DsManual;
	}	
}
void HeatKeyExec()
{
	if(bSysRunFlg)
	{
        if(HeatType >= Mode1)//一个加热灯
		{
			HeatType = Mode0; 		
		}
	    else HeatType+=1;

        if(PwrType==PwrSty)PwrType=PwrOn;

		DspIndex =DsHeat;
	}
}
void StrongKeyExec()
{
	if(bSysRunFlg)
	{		
		//if(ModeType==0)	return;

		if(StrongType >= Mode3)
		{
			StrongType = Mode1; 		
		}
	    else StrongType+=1;

		DspIndex =DsStrong;
	}		
}
void TimeKeyExec(void)
{
	if(bSysRunFlg)
	{	
    	if(TimeType==15)TimeType=20;
		else if(TimeType==20)TimeType=30;
		else if(TimeType==30)TimeType=15;
		TimeMin=TimeType;
		DspIndex =DsTime;
	}	
} 

/*
   1、touch库文件使用RAM绝对地址0x50~0x5a,用户在定义绝对地址的时候不要定义到这个区域
   2、库文件使用8M1T频率，用户最好不要更改.
*/
// FJ814手控板
//===========================================================
//Funtion name：main
//parameters：    无
//returned value：无
//===========================================================
void main(void)
{   
 	Sys_init();
    TouchInital();
	//Time1Initial();
	Time2Initial();
	Time4Initial();
	WDT_INITIAL ();
    UART_INITIAL();	
    //Px_Level_Change_INITIAL();	
	User_init(); 
	Display_init();
	SetBuzzer();
	//RGBSwitchStautus(off);
	while(1)
	{  
		CLRWDT();
		Rx_Drive();	
		//send_uart_data();	
		//   if(TouchTimeCount>=(1000/SCANNINGTIME/(fmd_channels+1)))  	//按键扫描频率
        // {
        //     TouchTimeCount=0;
            
		// 	readKeyNum = TouchKeyScan();  					//按键扫描并获取按键值
        // }
		// if(t2msFlag)
		// {
		// 	t2msFlag=0;
			RxData_Drive();	
		// }
		// if(t10msFlag)
		// {
		// 	t10msFlag=0;
		// 	//PA7=~PA7;
		// 	KeyScanHandler(); 
		// 	dokey();
		// 	SysPowerHandler(); 

		// 	ChkTimeEventStatus();
		// }		
	}
}


