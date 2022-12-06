//*********************************************************
#include "includes.h"
//*********************************************************
// uchar RxBuf[8];
// uchar RxBit;
// uchar TmsRxH;
// uchar TmsRxL;
 uchar RxData;

RFSTATE RFs;
volatile unsigned char buf_rec[5];
unsigned char rf_data[5];

unsigned char RemNum=0,RemNumTemp=0;
unsigned char RemOutTime;
unsigned char remcmd;  //,remempt
unsigned char rf_learn = 1;
unsigned int tRfKeyHold;
unsigned char tRFtemp;


unsigned char keybit1,keybit2,keybit3,keybit4,keybit5;


//*********************************************************

unsigned char CheckRfCmd(unsigned char rfcmd)
{
	switch( rfcmd)
	{
		case CMD_PWR:
		case CMD_MODE:
		case CMD_SPD:
		case CMD_HEAT:
		case CMD_AIR:
		    return 1;	
		default:
			return 0;
	}
}


void Rf433IoInit(void)
{
	RFs.RecBufFull=0;

    RFs.tRFL= 0;
    RFs.tRFH= 0;
    RFs.BitCount=0;
    RFs.Bptr=0;
    RFs.RFsp= rffall;
}

void ReadRf433(void)
{
	switch(RFs.RFsp)
	{
		case synH:
			if(P_RX)
			{
				RFs.tRFH++;
				if(RFs.tRFH>RFHEADH_MAX)
				{
					RFs.RFsp=rfReset;
					break;
				}
				break;
			}
			else
			{
				if(RFs.tRFH<RFHEADH_MIN)
				{
					RFs.RFsp=rfReset;
					break;
				}
				RFs.tRFL=0;
				RFs.RFsp=synL;
				break;
			}
		case synL:
			if(P_RX==0)
			{
				RFs.tRFL++;
				if(RFs.tRFL>RFHEADL_MAX)
				{
					RFs.RFsp=rfReset;
					break;
				}
				break;
			}
			else
			{
				if(RFs.tRFL<RFHEADL_MIN)
				{
					RFs.RFsp=rfReset;
					break;
				}
				RFs.tRFH=0;
				RFs.RFsp=rfH;
				break;
			}
		case rfH:
			if(P_RX)
			{
				RFs.tRFH++;
				if(RFs.tRFH>RFH_MAX)
				{
					RFs.RFsp=rfReset;
					break;
				}
				break;
			}
			else
			{
				RFs.tRFL=0;
				RFs.RFsp=rfL;
				break;
			}
		case rfL:
			if(P_RX==0)
			{
				RFs.tRFL++;
				if(RFs.tRFL>RFL_MAX)
				{
					RFs.RFsp=rfReset;			
					break;
				}
				break;
			}
			else
			{
				buf_rec[RFs.Bptr]<<=1;
				if(RFs.tRFH>=RFs.tRFL)
				{
					buf_rec[RFs.Bptr]|=1;
				}
				RFs.tRFH=0;
				RFs.tRFL=0;
				if (( ++RFs.BitCount & 7) == 0)
				{
					RFs.Bptr++;	// advance one unsigned	char
				}
				if(RFs.BitCount==NBIT)
				{
					RFs.RFsp=rfReset;
					RFs.RecBufFull=1;
					break;
				}
				RFs.RFsp=rfH;
				break;
			}
		case rffall:
			if(P_RX==0)
				break;
			else
			{
				RFs.RFsp=synH;
				break;
			}
		case rfReset:
		default:
			RFs.tRFL= 0;
			RFs.tRFH= 0;
			RFs.BitCount=0;
			RFs.Bptr=0;
			RFs.RFsp= rffall;
	}	
}

//*********************************************************
void readrf()
{
    if(RFs.RecBufFull==0)return;
    RFs.RecBufFull=0;

    if(buf_rec[0]!=buf_rec[1])return;

    if(!CheckRfCmd(buf_rec[2]))return;

    RxData=buf_rec[2];

	// RemOutTime=T_REMOUT;
}

//每10ms调用一次
void KeepRfData(void)
{
	if (RemOutTime > 0)		// Remote output time
	{
		RemOutTime--;
		if (RemOutTime == 0)
		{
			RxData= 0;
		}
	}
}

void RxData_Drive(void)
{
	
		switch(RxData)
	{
		case 0x01:KeyType=PowerKey;break;
		case 0x08:KeyType=ModeKey;break;
		case 0x0E:KeyType=StrongKey;break;
		case 0x0A:KeyType=ManualKey;break;
		case 0x0C:KeyType=HeatKey;break;
		default:RxData=0;break;

	}
	RxData=0;
	dokey();
    // if(RxData==0)return;
	
}
