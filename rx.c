//*********************************************************
#include "includes.h"
//*********************************************************
uchar RxBuf[8];
uchar RxBit;
uchar TmsRxH;
uchar TmsRxL;
uchar RxData;

//*********************************************************

//*********************************************************

void Rx_Drive(void) //100us
{
    if (P_RX == 1)
    {
        if (TmsRxH < 250)
            TmsRxH++;
        else
            RxBit = 0;
    }
    else
    {  //捕捉6次
        if (TmsRxH >= 20)
        {
            TmsRxH = 0;
            TmsRxL = 0;
            RxBit = 0;
            RxBuf[0] = 0;
            RxBuf[1] = 0;
            RxBuf[2] = 0;
            RxBuf[3] = 0;            
        }
        else if (TmsRxH)
        {
            if ((TmsRxH > TmsRxL)&&(TmsRxH>8))
                RxBuf[RxBit / 8] |= 0x80 >> (RxBit % 8);
            TmsRxH = 0;
            TmsRxL = 0;
            if (++RxBit >= 32)
            {
                RxBit = 0;
                //  oxff      0x00
                if(RxBuf[1]-RxBuf[0]==0XDF)
                RxData = RxBuf[3];
            }
        }
        if (TmsRxL < 250)
            TmsRxL++;
    }
}
	// PowerKey,	
	// ModeKey,
	// AirKey,
	// MotorKey,	
	// HeatKey,
	// TestKey
void RxData_Drive(void)
{
    if(RxData==0)return;

    if(RxData==0x7f) // POWER 0x46
    {
        KeyType=PowerKey; 
    }
    else if(RxData==0xd7) // MODE 0x40
    {
        KeyType=ModeKey;
    }
    else if(RxData==0x57) // STRONG 0x15
    {
        KeyType=StrongKey;
    }
    else if(RxData==0xaf) // TIME 0x19
    {
        KeyType=ManualKey;  // TimeKey;
    }	 
    else if(RxData==0x8f) // HEAT 0x18
    {
        KeyType=HeatKey;
    }	
	
    RxData=0;
}

    // if(RxData==0x7f) // POWER 
    // {
    //     KeyType=PowerKey; 
    // }
    // else if(RxData==0xff) // MODE 
    // {
    //     KeyType=ModeKey;
    // }
    // else if(RxData==0xaf) // TIME 
    // {
    //     KeyType=SizeKey;
    // }	    
    // else if(RxData==0x57) // STRONG 
    // {
    //     KeyType=StrongKey;
    // } 
    // else if(RxData==0x8f) // HEAT 
    // {
    //     KeyType=HeatKey;
    // }
    // else if(RxData==0xd7) // MODE 
    // {
    //     KeyType=TimeKey;
    // }