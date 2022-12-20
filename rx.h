/*
 * @Author: 青衫衫
 * @Date: 2022-12-06 08:49:11
 * @LastEditTime: 2022-12-20 11:12:31
 */
//*********************************************************
#ifndef _rx_h_
#define _rx_h_
//*********************************************************
/*  EDIFIER IR KEY
POWER KEY         0x08 0xe7 0x80 0x7f          XXXXX KEY         0x08 0xe7 0x00 0xff

XXXXX KEY         0x08 0xe7 0x30 0xcf          XXXXX KEY         0x08 0xe7 0x90 0x6f

ROLLERS KEY       0x08 0xe7 0x50 0xaf          AIR PRESSURE KEY  0x08 0xe7 0xa8 0x57

XXXXX KEY         0x08 0xe7 0xb0 0x4f          XXXXX KEY         0x08 0xe7 0x68 0x97

WARM KEY          0x08 0xe7 0x70 0x8f          MODE KEY          0x08 0xe7 0x28 0xd7
*/
//*********************************************************

#define P_RX PB4    

#define CMD_PWR 0X01
#define CMD_MODE 0X08
#define CMD_SPD 0X0E
#define CMD_HEAT 0X0C
#define CMD_AIR 0X0A

#define NBIT		24
#define RFHEADH_MAX	6		// 0.4ms L    1.2ms H
#define RFHEADH_MIN	0		// 
#define RFHEADL_MAX	135		// 12.3ms
#define RFHEADL_MIN	105		// 
#define RFH_MAX		16		// 
#define RFL_MAX		16		// 
#define RFH_MIN     2
#define T_REMOUT	40		//400ms

#define T_KeyStopHold	200	//200x10ms--2s  stop key

typedef enum
{
		rfReset=0,
		rffall,
		synH,
		synL,
		rfH,
		rfL
}RFSTEP;

typedef struct
{
	RFSTEP RFsp;
	volatile unsigned char tRFH;
	volatile unsigned char tRFL;
	volatile unsigned char BitCount;
	volatile unsigned char Bptr;
	volatile unsigned char RecBufFull;
}RFSTATE;
//*********************************************************
extern uchar RxData,bRxData;
//*********************************************************

// extern void Rx_Drive(void);
// extern void RxData_Drive(void);
extern void ReadRf433();
extern void RxData_Drive(void);
extern void readrf();
//*********************************************************

#endif
//*********************************************************
