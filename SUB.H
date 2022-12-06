
#ifndef __SUB_H__
#define __SUB_H__
  
#define  uchar     unsigned char 
#define  uint      unsigned int
#define  ulong     unsigned long

#define on  1
#define off 0

#define PwrOff   0
#define PwrSty   1
#define PwrOn    2

#define SysRunTime  15
#define data_length 6

#define  LED_R  PC5
#define  LED_G  PB7
#define  LED_B  PC1

#define  BELL PB5

#define		CM1		LATB1
#define		CM2		LATD1
#define		CM3		LATC1
#define		CM4		LATC0

#define		SG_A		LATA0//00
#define		SG_B		LATB0//00
#define		SG_C		LATB3//00
#define		SG_D		LATA4//00
#define		SG_E		LATD2//00
#define		SG_F		LATA1//00
#define		SG_G		LATD3//00

#define     SetCom1() {CM1=1;CM2=0;CM3=0;CM4=0;} 
#define     SetCom2() {CM2=1;CM1=0;CM3=0;CM4=0;}
#define     SetCom3() {CM3=1;CM1=0;CM2=0;CM4=0;}
#define     SetCom4() {CM4=1;CM1=0;CM2=0;CM3=0;}

#define     ClrAllLed() {CM1=0;CM2=0;CM3=0;CM4=0;\
						SG_A=0;SG_B=0;SG_C=0;\
						SG_D=0;SG_E=0;SG_F=0;SG_G=0;}  //

#define     SetAllLed() {CM1=1;CM2=1;CM3=1;CM4=1;\
						SG_A=1;SG_B=1;SG_C=1;\
						SG_D=1;SG_E=1;SG_F=1;SG_G=1;}  //

 #define SetBuzzer()      {BuzzerCnt=400;}
 #define ClrBuzzer()      {BuzzerCnt=0;}
#define TouchKey1  0x0001
#define TouchKey2  0x0002
#define TouchKey3  0x0004
#define TouchKey4  0x0008
#define TouchKey5  0x0010
#define TouchKey6  0x0020
#define TouchKey7  0x0040
#define TouchKey8  0x0080
#define TouchKey9  0x0100
#define TouchKey10 0x0200
#define TouchKey11 0x0400
#define TouchKey12 0x0800
#define TouchKey13 0x1000
#define TouchKey14 0x2000
#define TouchKey15 0x4000


#define fsize5  5   
#define fsize6  6   
#define fsize7  7   
#define fsize8  8 
#define fsize9  9 
#define fsize10  10 
#define fsize11  11 
#define fsize12  12


#define fsize35  35   
#define fsize36  36   
#define fsize37  37   
#define fsize38  38 
#define fsize39  39 
#define fsize40  40 
#define fsize41  41 
#define fsize42  42
#define fsize43  43 
#define fsize44  44 
#define fsize45  45

enum  //������ʾ����
{ 
	DsSty,  //0
	DsMode,
	DsStrong,
	DsHeat,	
	DsManual,
	DsTime
};

enum  //��������
{ 
	NullKey,  //0
	PowerKey,	
	ModeKey,
	SizeKey,
	HeatKey,
	StrongKey,	
	ManualKey,
	TimeKey,	
	TestKey
};

enum  //ģʽ����
{
	Mode0,	//off
	Mode1,	//1
	Mode2,	//2
	Mode3,	//3 
	Mode4,	//3 	
	Mode5,	//3 
};

typedef union
{
	struct
	{
		volatile unsigned char b0:1;
		volatile unsigned char b1:1;
		volatile unsigned char b2:1;
		volatile unsigned char b3:1;
		volatile unsigned char b4:1;
		volatile unsigned char b5:1;
		volatile unsigned char b6:1;
		volatile unsigned char b7:1;
	}OneBits;
	unsigned char AllBits;
}FunctionFlag;

#define bSysRunFlg        SysFunFlg0.OneBits.b7  //��Դ���ر�־
#define bUartTxFlg       SysFunFlg0.OneBits.b6  //�������±�־
#define bHeatFlg        SysFunFlg0.OneBits.b5  //���ȱ�ʶ  
#define bModeChgFlg     SysFunFlg0.OneBits.b4  //ģʽ���±�־
#define bKneadFlg      SysFunFlg0.OneBits.b3  //���󿪹ر�ʶ
#define bAirPumpFlg      SysFunFlg0.OneBits.b2  //���ÿ��ر�־
#define t2msFlag     SysFunFlg0.OneBits.b1  //�ػ���ʶ
#define t10msFlag       SysFunFlg0.OneBits.b0  //�������б�־

#define uSysFunFlg0 SysFunFlg0.AllBits

#define bTestFstFlg  SysFunFlg1.OneBits.b7  //
#define bKneadKeyFlg  SysFunFlg1.OneBits.b6  //  
#define bKneadBgnFlg    SysFunFlg1.OneBits.b5  //
#define bKneadFstFlg  SysFunFlg1.OneBits.b4  //
#define bKneadDlyFlg    SysFunFlg1.OneBits.b3  //
#define bTestModeFlg    SysFunFlg1.OneBits.b2  //
#define bTestSnFlg    SysFunFlg1.OneBits.b1  //
#define bPressureKeyFlg    SysFunFlg1.OneBits.b0  //

#define uSysFunFlg1 SysFunFlg1.AllBits

#define bKeyPresFlg    SysFunFlg2.OneBits.b7  //
#define bCushionFstFlg    SysFunFlg2.OneBits.b6  //�״�ͨ����ȿ��ر�־  
#define bCushionRunFlg   SysFunFlg2.OneBits.b5  //���ȿ��ر�־
#define bJumpFlg    SysFunFlg2.OneBits.b4  //
#define bSendCmdFlg     SysFunFlg2.OneBits.b3  //
#define bRxdataFlg   SysFunFlg2.OneBits.b2  //
#define xxxxxl    SysFunFlg2.OneBits.b1  //
#define xxxxl     SysFunFlg2.OneBits.b0  //

#define uSysFunFlg2 SysFunFlg2.AllBits

extern FunctionFlag SysFunFlg0,SysFunFlg1,SysFunFlg2;	//

extern unsigned char ModeType,HeatType,StrongType,KeyType,SizeType,TimeType,PwrType,ManualType;  // 
extern uchar LastMode,LastManual;
unsigned char last_HeatType,last_StrongType;
unsigned int last_time;
extern unsigned uint TmpCnt,TmpCnt1,KeyCnt,BuzzerCnt,RxdataCnt;  //
extern uchar DspIndex,dsp_100ms,fmd_channels;
extern volatile unsigned int readKeyNum,TouchTimeCount;

extern uchar TxCnt,TxBuf,BitStp,ByteNum;//ByteNum CmdStep TxDat

volatile uchar TimeUs,Time2Ms,Time10Ms,Time100Ms,TimeSec,TimeMin;

//extern volatile  uchar send_buf[];

void BaseTimeRun();
//unsigned int GetAdValue();
//void GetBatterylevel();
//void GetChargStatus();
void KeyScanHandler();

void TestModeHandler();
void SysPowerHandler();
void LedDisplay();
void HeatEventProcess();
void SetSleepMode();
void StrongEventProcess();
void KneadEventProcess();
void PumpEventProcess();

void PowerKeyExec();	
void ModeKeyExec();
void CoverKeyExec();
void HeatKeyExec();
void ManualKeyExec(void);
void TimeKeyExec();
void HandKeyExec();
void inc_size(void);
void dec_size(void);
void SizeKeyExec(void);
void StrongKeyExec();
void AirPressureKeyExec();
void StrengthKeyExec();
void SendMsgHandler();

void send_uart_data(void);
void LedBreathing();
void refresh_data();
void refresh_display(unsigned char keybuf);
void dokey();
void DisplayHandler();
void ChkTimeEventStatus();
#endif


