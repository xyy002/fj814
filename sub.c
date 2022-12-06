#include "includes.h"

FunctionFlag SysFunFlg0,SysFunFlg1,SysFunFlg2;	//

uchar ModeType,HeatType,StrongType,KeyType,SizeType,TimeType,PwrType,ManualType; // 
uchar LastMode,LastManual;
//uchar STEP,AIR_STEP,AIR_MS,AIR_S,AIR_MODE,AirCnt;  //

uint TmpCnt,TmpCnt1,KeyCnt,BuzzerCnt;  //

//uchar MODE_BUF,POWER_BUF,STRONG_BUF,HEAT2_BUF;
//uchar HEATL_BUF,HEATH_BUF;
//uchar ShiftNum;


//volatile  uchar send_buf[data_length] =0;
//volatile  uchar rec_data[data_length] =0;
uchar DspIndex,dsp_100ms,fmd_channels;

volatile uint readKeyNum,TouchTimeCount; 	//返回的键值  bit0~bit14对应key1~key15  0没有按下，1按下


/***********************ONE WIRE*************************/
uchar TxCnt,TxBuf,BitStp,ByteNum;//CmdStep TxDat
/***********************ONE WIRE*************************/


/***********************IR*************************/
// uchar IRbitNum = 0;		    //用于记录接收到第几位数据了
// uchar IRbitTime = 0;		//用于计时一位的时间长短
// volatile uchar IRDataTimer[4];		//存出来的4个数据
// uchar bitdata=0x01;			//用于按位或的位数据
// uchar ReceiveFinish = 0;	//用于记录接收完成
// uchar ReadAPin = 0;			//用于读取IO口状态，电平变化中断标志清除
// volatile uchar rdata1,rdata2;
/***********************IR*************************/
void refresh_data()
{
	//send_buf[cmd_Type] =KeyType; 	
	send_buf[cmd_pwr] =PwrType;
	send_buf[cmd_mode] =ModeType;
	send_buf[cmd_str] =StrongType;
	send_buf[cmd_heat] =HeatType;
	send_buf[cmd_Manual] =ManualType;
	send_buf[cmd_Time] =TimeMin;
	bUartTxFlg = on;
	UartSetEmptyInt(on);	
}

 void KeyScanHandler()
  {
	 //readKeyNum = NullKey;	
     readKeyNum = TouchKeyScan();	//TouchKey

     if((bKeyPresFlg == off) && readKeyNum)
     {
		//  if(readKeyNum&TouchKey9) // INC_SIZE
		//  {
		// 	KeyType=SizeKey;
		//  }
	  	 if(readKeyNum&TouchKey15) // MODE
	  	 {
			KeyType=ModeKey; 
	  	 }		   
		 else if(readKeyNum&TouchKey8) // POWER
		 {
			KeyType=PowerKey; 
		 }
		 else if(readKeyNum&TouchKey12) // ManualKey
		 {
			KeyType=ManualKey;
		 }		 
	  	 else if(readKeyNum&TouchKey14) // Streng
	  	 { 
			KeyType=StrongKey; 
	  	 }
	  	 else if(readKeyNum&TouchKey13) // HEAT 
	  	 {
			KeyType=HeatKey;
	  	 }		
     }
  	 if((readKeyNum&TouchKey13)&&(!bSysRunFlg)) //键值判断 HEAT
  	 {
		 if(++TmpCnt==500)	//press 5s into test mode
		 {
			bTestModeFlg=on;
			KeyType=PowerKey;
		 }		  	
  	 }	
	 
	 if(readKeyNum)
	 	{bKeyPresFlg=on;KeyCnt=10;}	//delay 100ms
	 else 
	 {
		if(KeyCnt)KeyCnt--;
		else
		{bKeyPresFlg=off;TmpCnt=0;}	 
	 }	 	 	 
  }  
void dokey()
{
	if(KeyType==NullKey)return;

	switch (KeyType)
	{
	case PowerKey:
		PowerKeyExec();
		break;
	case ModeKey:
		ModeKeyExec();
		break;
	case SizeKey:
		//SizeKeyExec();
		break;
	case HeatKey:	
		HeatKeyExec();
		break;
	case StrongKey:
		StrongKeyExec();
		break;	
	case ManualKey:
		ManualKeyExec();
		break;	
	case TimeKey:
		//TimeKeyExec();
		break;
	default:
		break;
	}
	
	if((KeyType!=PowerKey)&&(!bSysRunFlg))
	{
		return;
	}
	else
	{
		SetBuzzer();
		refresh_data();	
	}
	
	KeyType=NullKey;
	
	dsp_100ms=250;
}


void SysPowerHandler()
{
	 if(bTestModeFlg)
	 return;
	 if(bKeyPresFlg)
	 return;
	 if(bUartTxFlg)
	 return;

	 if((TimeMin==0)&&(PwrType))
	 {
		 KeyType=PowerKey;
	 }
	if(PwrType)
	return;
	if(bSysRunFlg)
	{
		User_init();
	}
}
// unsigned char deDisNum()
// {
// 	unsigned char DspBuf;
// 	if(SizeType==fsize35)DspBuf=35;
// 	else if(SizeType==fsize36)DspBuf=36;
// 	else if(SizeType==fsize37)DspBuf=37;
// 	else if(SizeType==fsize38)DspBuf=38;	
// 	else if(SizeType==fsize39)DspBuf=39;
// 	else if(SizeType==fsize40)DspBuf=40;
// 	else if(SizeType==fsize41)DspBuf=41;
// 	else if(SizeType==fsize42)DspBuf=42;
// 	else if(SizeType==fsize43)DspBuf=43;
// 	else if(SizeType==fsize44)DspBuf=44;
// 	else if(SizeType==fsize45)DspBuf=45;
// 	return DspBuf;
// }

void ShowLedData(uchar DspBuf)
{
	switch (DspBuf)
	{	
	case 1: 		SG_B=SG_C=1;
	break; case 2:	SG_A=SG_B=SG_D=SG_E=SG_G=1;
	break; case 3:	SG_A=SG_B=SG_C=SG_D=SG_G=1;
	break; case 4:	SG_B=SG_C=SG_F=SG_G=1;	
	break; case 5:  SG_A=SG_C=SG_D=SG_F=SG_G=1;
	break; case 6:	SG_A=SG_G=SG_C=SG_D=SG_E=SG_F=1;
	break; case 7:	SG_A=SG_B=SG_C=1;
	break; case 8:	SG_A=SG_B=SG_C=SG_D=SG_E=SG_F=SG_G=1;
	break; case 9:	SG_A=SG_B=SG_C=SG_D=SG_F=SG_G=1;
	break; case 0:	SG_A=SG_B=SG_C=SG_D=SG_E=SG_F=1;
	break; case 10:	SG_G=0; //-
		 
	break; case 11:	SG_A=SG_B=SG_E=SG_F=SG_G=1; //P
	break; case 12:	SG_A=SG_D=SG_E=SG_F=SG_G=1; //E
	break; case 13:	SG_B=SG_C=SG_E=SG_F=SG_G=1; //H
	break; case 14:	SG_D=SG_E=SG_F=1; //L
	break; case 15:	SG_A=SG_E=SG_F=SG_G=1; //F
	}
}

unsigned char SpecialDisplay1()
{
	unsigned char DspBuf;
	switch(DspIndex)
	{
	case DsSty: 		  DspBuf=0;  // "0"
	break; case DsMode:   DspBuf=11; //MODE    P1 P2 P3
	break; case DsStrong: DspBuf=12;//STRONG  E1 --- E9
	break; case DsHeat:   DspBuf=13;//HEAT    H0 H1
	break; case DsManual: DspBuf=14;//manual  L0 L1 L2
	break; case DsTime:   DspBuf=(TimeMin/10);//TIME    5 10 15 20 25 30
	break;
	}
	return DspBuf;
}

unsigned char SpecialDisplay2()
{
	unsigned char DspBuf;
	switch(DspIndex)
	{
	case DsSty: 		  DspBuf=15;  // "F"
	break; case DsMode:   DspBuf=ModeType; //MODE    P1 P2 P3
	break; case DsStrong: DspBuf=StrongType;//STRONG  E1 --- E9
	break; case DsHeat:   DspBuf=HeatType;//HEAT      H0 H1
	break; case DsManual: DspBuf=ManualType;//Manual  L0  L1 L2
	break; case DsTime:   DspBuf=TimeMin;//TIME    5 10 15 20 25 30
	break;
	}
	if(DspIndex!=DsSty)
		DspBuf%=10;
	return DspBuf;
}


void DisplayHandler()
{
 	static uchar LedMenuIndex=0;
	static uchar DspBuf,DspCnt;

    if(++DspCnt <=16 )return;	//3ms
    DspCnt = 0;

	ClrAllLed();

	// if(PwrType==PwrOn)
	// {
		LedMenuIndex++;
		if(LedMenuIndex>3)
		LedMenuIndex=0;
        
		switch(LedMenuIndex)
		{
		case 0:	
			if(PwrType)
			{
				if(PwrType)SG_E=1;

				if(HeatType==1)SG_D=1; //BLUE	

				if(ManualType||ModeType)
				{
					// if(StrongType==1){SG_C=1;SG_A=1;}
					// else if(StrongType==2)SG_C=1;
					// else if(StrongType==3){ SG_B=1;  }
					// else if(StrongType==4){ SG_A=1;  }
					// if(StrongType==1){
					// 	SG_C=1; //g 
					// 	SG_A=1; //r
					// }
					// if(StrongType==2){
					// 	SG_C=1; //g 
					// 	SG_B=1; //b
					// }
					if(StrongType==1){
						SG_C=1; //g 
					}
					else if(StrongType==2){
						SG_B=1; //b
					}
					else if(StrongType==3){
						SG_A=1; //r
					}
				}
			} 
			SetCom1();
		break;
		case 1:	
			if(PwrType)
			{
				if(ModeType==1){ SG_C=1; }
				else if(ModeType==2){ SG_B=1; }
				else if(ModeType==3){ SG_A=1; }

				if(ManualType==1)SG_D=1; //BLUE
				else if(ManualType==2){SG_D=1;SG_E=1;} //RED
				else if(ManualType==3)SG_E=1; //RED
			}
			SetCom2();
		break;
		case 2:

			DspBuf=SpecialDisplay1();
			ShowLedData(DspBuf);
			SetCom3();
        break;
		case 3:

			DspBuf=SpecialDisplay2();
			ShowLedData(DspBuf);
			SetCom4();
		break;
		}
	//}
}


void ChkTimeEventStatus()
{
	if(dsp_100ms)
	{
		if(--dsp_100ms==0)
		{
			if(bSysRunFlg)
				DspIndex=DsTime;
			// 	DspIndex=DsMode;
			else 
				DspIndex=DsSty;				
		}
	}	
}




// void LedBreathing()
// {
// 	static unsigned char pwmh,pwml,pwmstatus;

// 	if(PwrType>=PwrSty)
// 	{	
// 		if(pwmstatus==0)//
// 		{
// 			pwml+=5;
// 			if(pwml>=255)
// 			{
// 				if(pwmh>=2)
// 				{
// 					pwmstatus++;
// 					return;
// 				}
// 				pwml=0;
// 				pwmh++;				
// 			}
// 		}
// 		else
// 		{
// 			pwml-=5;
// 			if(pwml<=0)
// 			{
// 				if(pwmh==0)
// 				{
// 					pwmstatus=0;
// 					return;
// 				}	
// 				pwmh--;
// 				pwml=255;	
// 			}
// 		}
// 	}
// 	else //off
// 	{
// 		pwmh = 0;
// 		pwml = 0;
// 		pwmstatus = 0;
// 	}
//     TIM1CCR4L =pwml;
//     TIM1CCR4H =pwmh;			
// }

	// 	if(PwrType==PwrOn)
	// {	
	// 	if(pwmstatus==0)//
	// 	{
	// 		pwml+=2;  //1.27S
	// 		if(pwml>=255)
	// 		{
	// 			if(pwmh>=2)
	// 			{
	// 				pwmstatus=1;
	// 				return;
	// 			}
	// 			pwml=0;
	// 			pwmh++;
	// 		}
	// 	}
	// 	else
	// 	{
	// 		pwml-=2;
	// 		if(pwml<=0)
	// 		{	
	// 			if(pwmh==0)
	// 			{
	// 				pwmstatus=1;
	// 				return;
	// 			}		
	// 			pwml=255;
	// 			pwmh--;
	// 		}
	// 	}
	// }