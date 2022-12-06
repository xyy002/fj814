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

//*********************************************************
extern uchar RxData;
//*********************************************************

extern void Rx_Drive(void);
extern void RxData_Drive(void);
//*********************************************************

#endif
//*********************************************************
