
#include "includes.h"

volatile  uchar send_buf[data_length];

// void send_uart_data(void)
// {
//     static uchar ByteNum;

// 	if(bSendCmdFlg)
// 	{
// 		if(TXEF==0)//=1发送寄存器为空  0发送寄存器不为空
// 		return;

// 		if(ByteNum<data_length)
// 		{
// 			URDATAL =send_buf[ByteNum++];
// 		}
// 		else
// 		{
// 			ByteNum = 0;
// 			bSendCmdFlg = off;
// 		}
// 	}
// }

void send_uart_data(void)
{
	static uchar ByteNum;

	if(ByteNum<data_length)
	{
		URDATAL =send_buf[ByteNum++];
	}
	else
	{
		URTE=0;
		UartSetEmptyInt(off);
		ByteNum = 0;
		bUartTxFlg = off;
	}	
}

void UartSetEmptyInt(unsigned char value)
{
	URTE = value; //1：使能发送为空中断
}



// void send_uart_data(void)
// {
// 	if(bUartTxFlg)
// 	{
// 		if(TXEF==0)//=1发送寄存器为空  0发送寄存器不为空
// 		return;

// 		if(ByteNum<data_length)
// 		{
// 			URDATAL =send_buf[ByteNum++];
// 		}
// 		else
// 		{
// 			ByteNum = 0;
// 			bUartTxFlg = off;
// 		}
// 	}
// }