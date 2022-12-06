
#ifndef __UART_H__
#define __UART_H__

#define data_length 6

extern volatile  uchar send_buf[data_length];

enum  //数据发送序列
{ 
	//cmd_Type,
	cmd_pwr,  //0
	cmd_mode,
	cmd_str,
	cmd_heat,	
	cmd_Manual,
	cmd_Time
};

void send_uart_data(void);
void UartSetEmptyInt(unsigned char value);


#endif