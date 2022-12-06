//Deviec:FT62F08X
//-----------------------Variable---------------------------------
		_PB4		EQU		6CH
		_PB5		EQU		6DH
		_TRISA4		EQU		464H
		_TRISA5		EQU		465H
		_TRISA6		EQU		466H
		_TRISA7		EQU		467H
		_TRISB2		EQU		46AH
		_TRISB3		EQU		46BH
		_TRISB4		EQU		46CH
		_TRISB7		EQU		46FH
		_TRISC0		EQU		470H
		_TRISC1		EQU		471H
		_TRISC3		EQU		473H
		_TRISC4		EQU		474H
		_TRISC5		EQU		475H
		_TRISC6		EQU		476H
		_TRISC7		EQU		477H
		_TRISD5		EQU		47DH
		_LATA0		EQU		860H
		_LATA1		EQU		861H
		_LATA4		EQU		864H
		_LATB0		EQU		868H
		_LATB1		EQU		869H
		_LATB3		EQU		86BH
		_LATC0		EQU		870H
		_LATC1		EQU		871H
		_LATD1		EQU		879H
		_LATD2		EQU		87AH
		_LATD3		EQU		87BH
		_T4UIE		EQU		890H
		_T4UIF		EQU		898H
		_T2UIE		EQU		1868H
		_T2UIF		EQU		1870H
		_TKST		EQU		1C6DH
		_TKRCOV		EQU		1C6EH
		_URTE		EQU		2471H
		_TXEF		EQU		2495H
		_TCF		EQU		24E0H
		_RxData		EQU		D8H
		_RFs.RFsp		EQU		A6H
		_RFs.tRFH		EQU		A7H
		_RFs.tRFL		EQU		A8H
		_RFs.BitCount		EQU		A9H
		_RFs.Bptr		EQU		AAH
		_RFs.RecBufFull		EQU		ABH
		_RFs		EQU		A6H
		_buf_rec		EQU		ACH
		_RemOutTime		EQU		D7H
		_SysFunFlg0.OneBits		EQU		49H
		_SysFunFlg0.AllBits		EQU		49H
		_SysFunFlg0		EQU		49H
		_SysFunFlg1.OneBits		EQU		48H
		_SysFunFlg1.AllBits		EQU		48H
		_SysFunFlg1		EQU		48H
		_SysFunFlg2.OneBits		EQU		46H
		_SysFunFlg2.AllBits		EQU		46H
		_SysFunFlg2		EQU		46H
		_PwrType		EQU		7BH
		_ModeType		EQU		7AH
		_HeatType		EQU		E2H
		_StrongType		EQU		79H
		_ManualType		EQU		78H
		_TimeType		EQU		DFH
		_KeyType		EQU		45H
		_LastMode		EQU		E1H
		_LastManual		EQU		E0H
		_BuzzerCnt		EQU		C9H
		_TmpCnt		EQU		C5H
		_KeyCnt		EQU		C3H
		_DspIndex		EQU		DEH
		_dsp_100ms		EQU		D6H
		_TouchTimeCount		EQU		C7H
		_readKeyNum		EQU		39H
		_TimeUs		EQU		DDH
		_Time2Ms		EQU		DCH
		_Time10Ms		EQU		DBH
		_Time100Ms		EQU		DAH
		_TimeSec		EQU		D9H
		_TimeMin		EQU		77H
		_NumD		EQU		44H
		_TouchcapBuff1		EQU		120H
		_TouchcapBuff2		EQU		1A0H
		_fmd_updataChannel		EQU		14DH
		_fmd_OriginalData		EQU		21H
		_fmd_ReferenceData		EQU		25H
		_fmd_ResultData		EQU		27H
		_fmd_ResultDataH		EQU		29H
		_fmd_Null0		EQU		20H
		_fmd_Null1		EQU		23H
		_fmd_Null2		EQU		24H
		_fmd_Null3		EQU		2AH
		_fmd_antishaketimecount		EQU		43H
		_fmd_antishaketimecount1		EQU		D1H
		_fmd_Keystatus		EQU		37H
		_fmd_Keystatus1		EQU		35H
		_fmd_Keystatus2		EQU		33H
		_fmd_KeyBuffPress		EQU		42H
		_fmd_KeyBuffUnPress		EQU		41H
		_fmd_channels		EQU		47H
		_fmd_a		EQU		4BH
		_fmd_a1		EQU		40H
		_fmd_a2		EQU		3FH
		_fmd_a3		EQU		D0H
		_fmd_u		EQU		3EH
		_fmd_thedeathcount		EQU		C1H
		_fmd_thedeathcount1		EQU		BFH
		_fmd_thedeathcount2		EQU		BDH
		_fmd_currentCount		EQU		CFH
		_fmd_TouchDataBuff_Key		EQU		2BH
		_fmd_nodownavrdata_Key		EQU		2378H
		_fmd_nodownsum_Key		EQU		2300H
		_fmd_KeyDValue_Key		EQU		B9H
		_fmd_KeyDValue_Key_base		EQU		B5H
		_fmd_KeyDValue_Key_baseBuff		EQU		B1H
		_fmd_theUsedChannel		EQU		13EH
		_fmd_f_keydown_flag		EQU		76H
		_fmd_f_firstdown		EQU		76H
		_fmd_f_firstloop		EQU		76H
		_fmd_f_main_key		EQU		76H
		_fmd_f_forbidden		EQU		76H
		_fmd_updataFlag		EQU		3DH
		_fmd_TestCount		EQU		CEH
		_fmd_PressOff		EQU		CDH
		_fmd_PressOffCount		EQU		CCH
		_fmd_UpTouchCount		EQU		E9H
		_fmd_DownTouchCount		EQU		E7H
		_fmd_HfreqOn		EQU		3CH
		_fmd_AntiWaterBit		EQU		4AH
		_fmd_x		EQU		3BH
		_fmd_UpDataTime		EQU		E5H
		_fmd_DownDataTime		EQU		E3H
		_fmd_Startgx		EQU		CBH
		_send_buf		EQU		A0H
//		CheckRfCmd@rfcmd		EQU		4CH
//		CheckRfCmd@rfcmd		EQU		4CH
//		CheckRfCmd@rfcmd		EQU		4CH
//		UartSetEmptyInt@value		EQU		4CH
//		UartSetEmptyInt@value		EQU		4CH
//		UartSetEmptyInt@value		EQU		4CH
//		___awdiv@quotient		EQU		52H
//		___awdiv@sign		EQU		51H
//		___awdiv@counter		EQU		50H
//		___awdiv@divisor		EQU		4CH
//		___awdiv@dividend		EQU		4EH
//		MxSet013@a		EQU		4CH
//		MxSet013@a		EQU		4CH
//		MxSet013@a		EQU		4CH
//		___wmul@product		EQU		50H
//		___wmul@multiplier		EQU		4CH
//		___wmul@multiplicand		EQU		4EH
//		StartHigeFreq@a		EQU		51H
//		StartHigeFreq@a		EQU		51H
//		StartHigeFreq@a		EQU		51H
//		TouchInit@Time		EQU		4CH
//		TouchInit@Time		EQU		4CH
//		TouchInit@Time		EQU		4CH
//		HighFreqCo@a		EQU		52H
//		HighFreqCo@a		EQU		52H
//		HighFreqCo@a		EQU		52H
//		send_uart_data@ByteNum		EQU		D2H
//		i1UartSetEmptyInt@value		EQU		70H
//		i1UartSetEmptyInt@value		EQU		70H
//		i1UartSetEmptyInt@value		EQU		70H
//		DisplayHandler@LedMenuIndex		EQU		D5H
//		DisplayHandler@DspBuf		EQU		D4H
//		DisplayHandler@DspCnt		EQU		D3H
//		SpecialDisplay2@DspBuf		EQU		75H
//		___lbmod@dividend		EQU		72H
//		___lbmod@rem		EQU		74H
//		___lbmod@counter		EQU		73H
//		___lbmod@dividend		EQU		72H
//		___lbmod@divisor		EQU		70H
//		___lbmod@dividend		EQU		72H
//		SpecialDisplay1@DspBuf		EQU		74H
//		___lbdiv@dividend		EQU		71H
//		___lbdiv@quotient		EQU		73H
//		___lbdiv@counter		EQU		72H
//		___lbdiv@dividend		EQU		71H
//		___lbdiv@divisor		EQU		70H
//		___lbdiv@dividend		EQU		71H
//		ShowLedData@DspBuf		EQU		70H
//		ShowLedData@DspBuf		EQU		70H
//		ShowLedData@DspBuf		EQU		70H
//-----------------------Variable END---------------------------------

		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	37H 			//0001 	3837
		ORG		0003H
		NOP 					//0003 	1000
		BSR 	7EH, 0H 			//0004 	247E
		MOVLP 	0H 			//0005 	0180

		//;CHIPINIT.C: 54: if(T2UIE && T2UIF)
		MOVLB 	6H 			//0006 	1026
		BTSC 	DH, 0H 			//0007 	280D
		BTSS 	EH, 0H 			//0008 	2C0E
		LJUMP 	11H 			//0009 	3811

		//;CHIPINIT.C: 55: {
		//;CHIPINIT.C: 56: T2UIF = 1;
		BSR 	EH, 0H 			//000A 	240E

		//;CHIPINIT.C: 57: ReadRf433();
		MOVLP 	AH 			//000B 	018A
		LCALL 	213H 			//000C 	3213
		MOVLP 	0H 			//000D 	0180

		//;CHIPINIT.C: 58: exact_event_process();
		MOVLP 	7H 			//000E 	0187
		LCALL 	7C0H 			//000F 	37C0
		MOVLP 	0H 			//0010 	0180

		//;CHIPINIT.C: 59: }
		//;CHIPINIT.C: 62: if(T4UIE && T4UIF)
		MOVLB 	2H 			//0011 	1022
		BTSC 	12H, 0H 		//0012 	2812
		BTSS 	13H, 0H 		//0013 	2C13
		LJUMP 	2CH 			//0014 	382C

		//;CHIPINIT.C: 63: {
		//;CHIPINIT.C: 64: T4UIF = 1;
		BSR 	13H, 0H 			//0015 	2413

		//;CHIPINIT.C: 66: DisplayHandler();
		MOVLP 	15H 			//0016 	0195
		LCALL 	531H 			//0017 	3531
		MOVLP 	0H 			//0018 	0180

		//;CHIPINIT.C: 68: if(BuzzerCnt)
		MOVLB 	1H 			//0019 	1021
		LDR 	49H, 0H 			//001A 	1849
		IORWR 	4AH, 0H 		//001B 	144A
		BTSC 	3H, 2H 			//001C 	2903
		LJUMP 	2CH 			//001D 	382C

		//;CHIPINIT.C: 69: {
		//;CHIPINIT.C: 70: PB5=~PB5;
		LDWI 	20H 			//001E 	0020
		MOVLB 	0H 			//001F 	1020
		XORWR 	DH, 1H 		//0020 	168D

		//;CHIPINIT.C: 71: BuzzerCnt--;
		LDWI 	1H 			//0021 	0001
		MOVLB 	1H 			//0022 	1021
		SUBWR 	49H, 1H 		//0023 	12C9
		LDWI 	0H 			//0024 	0000
		SUBWFB 	4AH, 1H 		//0025 	0BCA

		//;CHIPINIT.C: 72: if(BuzzerCnt==0)
		LDR 	49H, 0H 			//0026 	1849
		IORWR 	4AH, 0H 		//0027 	144A
		BTSS 	3H, 2H 			//0028 	2D03
		LJUMP 	2CH 			//0029 	382C

		//;CHIPINIT.C: 73: {
		//;CHIPINIT.C: 74: PB5=0;
		MOVLB 	0H 			//002A 	1020
		BCR 	DH, 5H 			//002B 	228D

		//;CHIPINIT.C: 75: }
		//;CHIPINIT.C: 76: }
		//;CHIPINIT.C: 77: }
		//;CHIPINIT.C: 78: if(URTE && TXEF)
		MOVLB 	9H 			//002C 	1029
		BTSC 	EH, 1H 			//002D 	288E
		BTSS 	12H, 5H 		//002E 	2E92
		LJUMP 	32H 			//002F 	3832

		//;CHIPINIT.C: 79: {
		//;CHIPINIT.C: 80: send_uart_data();
		MOVLP 	9H 			//0030 	0189
		LCALL 	1F2H 			//0031 	31F2

		//;CHIPINIT.C: 81: }
		//;CHIPINIT.C: 82: if(EPIF0&0x10)
		MOVLB 	0H 			//0032 	1020
		BTSC 	14H, 4H 		//0033 	2A14

		//;CHIPINIT.C: 83: {
		//;CHIPINIT.C: 84: EPIF0|=0x10;
		BSR 	14H, 4H 			//0034 	2614
		BCR 	7EH, 0H 			//0035 	207E
		RETI 					//0036 	1009
		MOVLP 	0H 			//0037 	0180
		LJUMP 	39H 			//0038 	3839
		MOVLB 	1H 			//0039 	1021
		LDWI 	B0H 			//003A 	00B0
		STR 	63H 			//003B 	10E3
		LDWI 	4H 			//003C 	0004
		STR 	64H 			//003D 	10E4
		LDWI 	58H 			//003E 	0058
		STR 	65H 			//003F 	10E5
		LDWI 	2H 			//0040 	0002
		STR 	66H 			//0041 	10E6
		LDWI 	B0H 			//0042 	00B0
		STR 	67H 			//0043 	10E7
		LDWI 	4H 			//0044 	0004
		STR 	68H 			//0045 	10E8
		LDWI 	E8H 			//0046 	00E8
		STR 	69H 			//0047 	10E9
		LDWI 	3H 			//0048 	0003
		STR 	6AH 			//0049 	10EA
		LDWI 	23H 			//004A 	0023
		CLRF 	4H 			//004B 	1184
		STR 	5H 			//004C 	1085
		LDWI 	F0H 			//004D 	00F0
		STR 	7EH 			//004E 	10FE
		CLRF 	7FH 			//004F 	11FF
		MOVLP 	9H 			//0050 	0189
		LCALL 	1E6H 			//0051 	31E6
		MOVLP 	0H 			//0052 	0180
		LDWI 	2BH 			//0053 	002B
		CLRF 	76H 			//0054 	11F6
		CLRF 	77H 			//0055 	11F7
		CLRF 	78H 			//0056 	11F8
		CLRF 	79H 			//0057 	11F9
		CLRF 	7AH 			//0058 	11FA
		CLRF 	7BH 			//0059 	11FB
		STR 	4H 			//005A 	1084
		LDWI 	0H 			//005B 	0000
		STR 	5H 			//005C 	1085
		LDWI 	21H 			//005D 	0021
		STR 	7EH 			//005E 	10FE
		LDWI 	0H 			//005F 	0000
		STR 	7FH 			//0060 	10FF
		MOVLP 	9H 			//0061 	0189
		LCALL 	1E6H 			//0062 	31E6
		MOVLP 	0H 			//0063 	0180
		LDWI 	A0H 			//0064 	00A0
		STR 	4H 			//0065 	1084
		LDWI 	0H 			//0066 	0000
		STR 	5H 			//0067 	1085
		LDWI 	43H 			//0068 	0043
		STR 	7EH 			//0069 	10FE
		LDWI 	0H 			//006A 	0000
		STR 	7FH 			//006B 	10FF
		MOVLP 	9H 			//006C 	0189
		LCALL 	1E6H 			//006D 	31E6
		MOVLP 	0H 			//006E 	0180
		LDWI 	20H 			//006F 	0020
		STR 	4H 			//0070 	1084
		LDWI 	1H 			//0071 	0001
		STR 	5H 			//0072 	1085
		LDWI 	3CH 			//0073 	003C
		STR 	7EH 			//0074 	10FE
		LDWI 	0H 			//0075 	0000
		STR 	7FH 			//0076 	10FF
		MOVLP 	9H 			//0077 	0189
		LCALL 	1E6H 			//0078 	31E6
		MOVLP 	0H 			//0079 	0180
		LDWI 	A0H 			//007A 	00A0
		STR 	4H 			//007B 	1084
		LDWI 	1H 			//007C 	0001
		STR 	5H 			//007D 	1085
		LDWI 	1EH 			//007E 	001E
		STR 	7EH 			//007F 	10FE
		LDWI 	0H 			//0080 	0000
		STR 	7FH 			//0081 	10FF
		MOVLP 	9H 			//0082 	0189
		LCALL 	1E6H 			//0083 	31E6
		MOVLP 	0H 			//0084 	0180
		BCR 	7EH, 0H 			//0085 	207E
		MOVLB 	0H 			//0086 	1020
		LJUMP 	88H 			//0087 	3888

		//;main.c: 154: Sys_init();
		LCALL 	6ADH 			//0088 	36AD
		MOVLP 	0H 			//0089 	0180

		//;main.c: 155: TouchInital();
		LCALL 	6E8H 			//008A 	36E8
		MOVLP 	0H 			//008B 	0180

		//;main.c: 157: Time2Initial();
		LCALL 	437H 			//008C 	3437
		MOVLP 	0H 			//008D 	0180

		//;main.c: 158: Time4Initial();
		LCALL 	6D7H 			//008E 	36D7
		MOVLP 	0H 			//008F 	0180

		//;main.c: 160: UART_INITIAL();
		LCALL 	749H 			//0090 	3749
		MOVLP 	0H 			//0091 	0180

		//;main.c: 161: Px_Level_Change_INITIAL();
		LCALL 	3DAH 			//0092 	33DA
		MOVLP 	0H 			//0093 	0180

		//;main.c: 162: User_init();
		LCALL 	41AH 			//0094 	341A
		MOVLP 	0H 			//0095 	0180

		//;main.c: 163: Display_init();
		LCALL 	DEH 			//0096 	30DE
		MOVLP 	0H 			//0097 	0180

		//;main.c: 164: {BuzzerCnt=400;};
		LDWI 	90H 			//0098 	0090
		MOVLB 	1H 			//0099 	1021
		STR 	49H 			//009A 	10C9
		LDWI 	1H 			//009B 	0001
		STR 	4AH 			//009C 	10CA

		//;main.c: 167: {
		//;main.c: 169: readrf();
		LCALL 	796H 			//009D 	3796
		MOVLP 	0H 			//009E 	0180

		//;main.c: 171: if(TouchTimeCount>=(1000/12/(fmd_channels+1)))
		MOVLB 	0H 			//009F 	1020
		LDR 	47H, 0H 			//00A0 	1847
		STR 	4CH 			//00A1 	10CC
		CLRF 	4DH 			//00A2 	11CD
		INCR 	4CH, 1H 		//00A3 	1ACC
		BTSC 	3H, 2H 			//00A4 	2903
		INCR 	4DH, 1H 		//00A5 	1ACD
		LDWI 	53H 			//00A6 	0053
		STR 	4EH 			//00A7 	10CE
		CLRF 	4FH 			//00A8 	11CF
		LCALL 	756H 			//00A9 	3756
		MOVLP 	0H 			//00AA 	0180
		LDR 	4DH, 0H 			//00AB 	184D
		MOVLB 	1H 			//00AC 	1021
		SUBWR 	48H, 0H 		//00AD 	1248
		BTSS 	3H, 2H 			//00AE 	2D03
		LJUMP 	B4H 			//00AF 	38B4
		MOVLB 	0H 			//00B0 	1020
		LDR 	4CH, 0H 			//00B1 	184C
		MOVLB 	1H 			//00B2 	1021
		SUBWR 	47H, 0H 		//00B3 	1247
		BTSS 	3H, 0H 			//00B4 	2C03
		LJUMP 	BCH 			//00B5 	38BC

		//;main.c: 172: {
		//;main.c: 173: TouchTimeCount=0;
		CLRF 	47H 			//00B6 	11C7
		CLRF 	48H 			//00B7 	11C8

		//;main.c: 175: readKeyNum = TouchKeyScan();
		LCALL 	E3H 			//00B8 	30E3
		MOVLP 	0H 			//00B9 	0180
		LCALL 	5C3H 			//00BA 	35C3
		MOVLP 	0H 			//00BB 	0180

		//;main.c: 176: }
		//;main.c: 177: if(SysFunFlg0.OneBits.b1)
		MOVLB 	0H 			//00BC 	1020
		BTSS 	49H, 1H 		//00BD 	2CC9
		LJUMP 	C2H 			//00BE 	38C2

		//;main.c: 178: {
		//;main.c: 179: SysFunFlg0.OneBits.b1=0;
		BCR 	49H, 1H 			//00BF 	20C9

		//;main.c: 180: RxData_Drive();
		LCALL 	3E7H 			//00C0 	33E7
		MOVLP 	0H 			//00C1 	0180

		//;main.c: 181: }
		//;main.c: 182: if(SysFunFlg0.OneBits.b0)
		MOVLB 	0H 			//00C2 	1020
		BTSS 	49H, 0H 		//00C3 	2C49
		LJUMP 	9DH 			//00C4 	389D

		//;main.c: 183: {
		//;main.c: 184: SysFunFlg0.OneBits.b0=0;
		BCR 	49H, 0H 			//00C5 	2049

		//;main.c: 187: KeyScanHandler();
		LCALL 	38EH 			//00C6 	338E
		MOVLP 	0H 			//00C7 	0180

		//;main.c: 188: dokey();
		LCALL 	5C8H 			//00C8 	35C8
		MOVLP 	0H 			//00C9 	0180

		//;main.c: 189: SysPowerHandler();
		LCALL 	424H 			//00CA 	3424
		MOVLP 	0H 			//00CB 	0180

		//;main.c: 191: ChkTimeEventStatus();
		LCALL 	CFH 			//00CC 	30CF
		MOVLP 	0H 			//00CD 	0180
		LJUMP 	9DH 			//00CE 	389D

		//;sub.c: 347: if(dsp_100ms)
		MOVLB 	1H 			//00CF 	1021
		LDR 	56H, 0H 			//00D0 	1856
		BTSS 	3H, 2H 			//00D1 	2D03

		//;sub.c: 348: {
		//;sub.c: 349: if(--dsp_100ms==0)
		DECRSZ 	56H, 1H 		//00D2 	1BD6
		RET 					//00D3 	1008

		//;sub.c: 350: {
		//;sub.c: 351: if(SysFunFlg0.OneBits.b7)
		MOVLB 	0H 			//00D4 	1020
		BTSS 	49H, 7H 		//00D5 	2FC9
		LJUMP 	DBH 			//00D6 	38DB

		//;sub.c: 352: DspIndex=DsTime;
		LDWI 	5H 			//00D7 	0005
		MOVLB 	1H 			//00D8 	1021
		STR 	5EH 			//00D9 	10DE
		RET 					//00DA 	1008

		//;sub.c: 354: else
		//;sub.c: 355: DspIndex=DsSty;
		MOVLB 	1H 			//00DB 	1021
		CLRF 	5EH 			//00DC 	11DE
		RET 					//00DD 	1008

		//;CHIPINIT.C: 695: {LATB1=0;LATD1=0;LATC1=0;LATC0=0; LATA0=0;LATB0=0;LATB3=0; LATA4=0;LAT
		//+                          D2=0;LATA1=0;LATD3=0;}
		MOVLP 	17H 			//00DE 	0197
		LCALL 	7EDH 			//00DF 	37ED

		//;CHIPINIT.C: 696: INTCON |= 0B11000000;
		LDWI 	C0H 			//00E0 	00C0
		IORWR 	BH, 1H 		//00E1 	148B
		RET 					//00E2 	1008
		LCALL 	129H 			//00E3 	3129
		MOVLP 	0H 			//00E4 	0180
		LDWI 	2H 			//00E5 	0002
		XORWR 	3DH, 0H 		//00E6 	163D
		BTSC 	3H, 2H 			//00E7 	2903
		LJUMP 	123H 			//00E8 	3923
		LDR 	3FH, 0H 			//00E9 	183F
		BTSS 	3H, 2H 			//00EA 	2D03
		LJUMP 	123H 			//00EB 	3923
		LDR 	35H, 0H 			//00EC 	1835
		IORWR 	36H, 0H 		//00ED 	1436
		BTSC 	3H, 2H 			//00EE 	2903
		LJUMP 	114H 			//00EF 	3914
		CLRF 	3DH 			//00F0 	11BD
		MOVLB 	1H 			//00F1 	1021
		INCR 	41H, 1H 		//00F2 	1AC1
		BTSC 	3H, 2H 			//00F3 	2903
		INCR 	42H, 1H 		//00F4 	1AC2
		LDWI 	0H 			//00F5 	0000
		SUBWR 	42H, 0H 		//00F6 	1242
		LDWI 	CH 			//00F7 	000C
		BTSC 	3H, 2H 			//00F8 	2903
		SUBWR 	41H, 0H 		//00F9 	1241
		BTSS 	3H, 0H 			//00FA 	2C03
		LJUMP 	10EH 			//00FB 	390E
		CLRF 	41H 			//00FC 	11C1
		CLRF 	42H 			//00FD 	11C2
		INCR 	3FH, 1H 		//00FE 	1ABF
		BTSC 	3H, 2H 			//00FF 	2903
		INCR 	40H, 1H 		//0100 	1AC0
		LDR 	3EH, 0H 			//0101 	183E
		SUBWR 	40H, 0H 		//0102 	1240
		BTSS 	3H, 2H 			//0103 	2D03
		LJUMP 	107H 			//0104 	3907
		LDR 	3DH, 0H 			//0105 	183D
		SUBWR 	3FH, 0H 		//0106 	123F
		BTSS 	3H, 0H 			//0107 	2C03
		LJUMP 	10EH 			//0108 	390E
		LDWI 	2H 			//0109 	0002
		CLRF 	3FH 			//010A 	11BF
		CLRF 	40H 			//010B 	11C0
		MOVLB 	0H 			//010C 	1020
		STR 	3DH 			//010D 	10BD
		MOVLB 	1H 			//010E 	1021
		CLRF 	69H 			//010F 	11E9
		CLRF 	6AH 			//0110 	11EA
		CLRF 	67H 			//0111 	11E7
		CLRF 	68H 			//0112 	11E8
		LJUMP 	123H 			//0113 	3923
		MOVLB 	1H 			//0114 	1021
		INCR 	69H, 1H 		//0115 	1AE9
		BTSC 	3H, 2H 			//0116 	2903
		INCR 	6AH, 1H 		//0117 	1AEA
		INCR 	67H, 1H 		//0118 	1AE7
		BTSC 	3H, 2H 			//0119 	2903
		INCR 	68H, 1H 		//011A 	1AE8
		MOVLB 	0H 			//011B 	1020
		CLRF 	3DH 			//011C 	11BD
		INCR 	3DH, 1H 		//011D 	1ABD
		MOVLB 	1H 			//011E 	1021
		CLRF 	41H 			//011F 	11C1
		CLRF 	42H 			//0120 	11C2
		CLRF 	3FH 			//0121 	11BF
		CLRF 	40H 			//0122 	11C0
		MOVLB 	0H 			//0123 	1020
		LDR 	36H, 0H 			//0124 	1836
		STR 	6CH 			//0125 	10EC
		LDR 	35H, 0H 			//0126 	1835
		STR 	6BH 			//0127 	10EB
		RET 					//0128 	1008
		LDWI 	4H 			//0129 	0004
		MOVLB 	0H 			//012A 	1020
		SUBWR 	4BH, 0H 		//012B 	124B
		BTSC 	3H, 0H 			//012C 	2803
		LJUMP 	142H 			//012D 	3942
		LCALL 	5B9H 			//012E 	35B9
		MOVLP 	0H 			//012F 	0180
		LCALL 	334H 			//0130 	3334
		MOVLP 	0H 			//0131 	0180
		LCALL 	4D5H 			//0132 	34D5
		MOVLP 	0H 			//0133 	0180
		LCALL 	445H 			//0134 	3445
		MOVLP 	0H 			//0135 	0180
		BTSC 	3H, 0H 			//0136 	2803
		INCR 	26H, 1H 		//0137 	1AA6
		LCALL 	34DH 			//0138 	334D
		MOVLP 	0H 			//0139 	0180
		LCALL 	48DH 			//013A 	348D
		MOVLP 	0H 			//013B 	0180
		LDWI 	3H 			//013C 	0003
		LCALL 	334H 			//013D 	3334
		MOVLP 	0H 			//013E 	0180
		LCALL 	4D5H 			//013F 	34D5
		MOVLP 	0H 			//0140 	0180
		LJUMP 	195H 			//0141 	3995
		LDWI 	8H 			//0142 	0008
		SUBWR 	4BH, 0H 		//0143 	124B
		BTSC 	3H, 0H 			//0144 	2803
		LJUMP 	15AH 			//0145 	395A
		LCALL 	5B9H 			//0146 	35B9
		MOVLP 	0H 			//0147 	0180
		LCALL 	334H 			//0148 	3334
		MOVLP 	0H 			//0149 	0180
		LCALL 	4A9H 			//014A 	34A9
		MOVLP 	0H 			//014B 	0180
		LCALL 	445H 			//014C 	3445
		MOVLP 	0H 			//014D 	0180
		BTSC 	3H, 0H 			//014E 	2803
		INCR 	26H, 1H 		//014F 	1AA6
		LCALL 	34DH 			//0150 	334D
		MOVLP 	0H 			//0151 	0180
		LCALL 	48DH 			//0152 	348D
		MOVLP 	0H 			//0153 	0180
		LDWI 	3H 			//0154 	0003
		LCALL 	334H 			//0155 	3334
		MOVLP 	0H 			//0156 	0180
		LCALL 	4A9H 			//0157 	34A9
		MOVLP 	0H 			//0158 	0180
		LJUMP 	195H 			//0159 	3995
		LDWI 	CH 			//015A 	000C
		SUBWR 	4BH, 0H 		//015B 	124B
		BTSC 	3H, 0H 			//015C 	2803
		LJUMP 	180H 			//015D 	3980
		LCALL 	5BEH 			//015E 	35BE
		MOVLP 	0H 			//015F 	0180
		LCALL 	334H 			//0160 	3334
		MOVLP 	0H 			//0161 	0180
		LDWI 	3FH 			//0162 	003F
		MOVLB 	7H 			//0163 	1027
		STR 	14H 			//0164 	1094
		LCALL 	537H 			//0165 	3537
		MOVLP 	0H 			//0166 	0180
		LDWI 	3FH 			//0167 	003F
		STR 	15H 			//0168 	1095
		LCALL 	54FH 			//0169 	354F
		MOVLP 	0H 			//016A 	0180
		LCALL 	445H 			//016B 	3445
		MOVLP 	0H 			//016C 	0180
		BTSC 	3H, 0H 			//016D 	2803
		INCR 	26H, 1H 		//016E 	1AA6
		LCALL 	34DH 			//016F 	334D
		MOVLP 	0H 			//0170 	0180
		LCALL 	48DH 			//0171 	348D
		MOVLP 	0H 			//0172 	0180
		LDWI 	1FH 			//0173 	001F
		LCALL 	334H 			//0174 	3334
		MOVLP 	0H 			//0175 	0180
		LDWI 	52H 			//0176 	0052
		MOVLB 	7H 			//0177 	1027
		STR 	14H 			//0178 	1094
		LCALL 	537H 			//0179 	3537
		MOVLP 	0H 			//017A 	0180
		LDWI 	52H 			//017B 	0052
		STR 	15H 			//017C 	1095
		LCALL 	54FH 			//017D 	354F
		MOVLP 	0H 			//017E 	0180
		LJUMP 	195H 			//017F 	3995
		LCALL 	5BEH 			//0180 	35BE
		MOVLP 	0H 			//0181 	0180
		LCALL 	334H 			//0182 	3334
		MOVLP 	0H 			//0183 	0180
		LDWI 	3FH 			//0184 	003F
		LCALL 	4FFH 			//0185 	34FF
		MOVLP 	0H 			//0186 	0180
		LCALL 	445H 			//0187 	3445
		MOVLP 	0H 			//0188 	0180
		BTSC 	3H, 0H 			//0189 	2803
		INCR 	26H, 1H 		//018A 	1AA6
		LCALL 	34DH 			//018B 	334D
		MOVLP 	0H 			//018C 	0180
		LCALL 	48DH 			//018D 	348D
		MOVLP 	0H 			//018E 	0180
		LDWI 	1FH 			//018F 	001F
		LCALL 	334H 			//0190 	3334
		MOVLP 	0H 			//0191 	0180
		LDWI 	52H 			//0192 	0052
		LCALL 	4FFH 			//0193 	34FF
		MOVLP 	0H 			//0194 	0180
		LCALL 	445H 			//0195 	3445
		MOVLP 	0H 			//0196 	0180
		BTSC 	3H, 0H 			//0197 	2803
		INCR 	26H, 1H 		//0198 	1AA6
		LCALL 	34DH 			//0199 	334D
		MOVLP 	0H 			//019A 	0180
		LCALL 	453H 			//019B 	3453
		MOVLP 	0H 			//019C 	0180
		MOVLB 	1H 			//019D 	1021
		LDR 	64H, 0H 			//019E 	1864
		XORWR 	68H, 0H 		//019F 	1668
		BTSS 	3H, 2H 			//01A0 	2D03
		LJUMP 	1A4H 			//01A1 	39A4
		LDR 	63H, 0H 			//01A2 	1863
		XORWR 	67H, 0H 		//01A3 	1667
		BTSC 	3H, 2H 			//01A4 	2903
		LJUMP 	1ABH 			//01A5 	39AB
		LDWI 	2H 			//01A6 	0002
		MOVLB 	0H 			//01A7 	1020
		XORWR 	3DH, 0H 		//01A8 	163D
		BTSS 	3H, 2H 			//01A9 	2D03
		LJUMP 	1AEH 			//01AA 	39AE
		MOVLB 	0H 			//01AB 	1020
		CLRF 	3CH 			//01AC 	11BC
		INCR 	3CH, 1H 		//01AD 	1ABC
		LDR 	4BH, 0H 			//01AE 	184B
		LCALL 	20EH 			//01AF 	320E
		MOVLB 	0H 			//01B0 	1020
		CLRF 	3CH 			//01B1 	11BC
		MOVLP 	AH 			//01B2 	018A
		LCALL 	291H 			//01B3 	3291
		MOVLP 	0H 			//01B4 	0180
		MOVLB 	1H 			//01B5 	1021
		LDR 	50H, 0H 			//01B6 	1850
		MOVLB 	0H 			//01B7 	1020
		XORWR 	4BH, 0H 		//01B8 	164B
		BTSS 	3H, 2H 			//01B9 	2D03
		LJUMP 	201H 			//01BA 	3A01
		BTSS 	76H, 2H 		//01BB 	2D76
		LJUMP 	1BFH 			//01BC 	39BF
		BCR 	76H, 2H 			//01BD 	2176
		LJUMP 	201H 			//01BE 	3A01
		CLRF 	40H 			//01BF 	11C0
		CLRF 	3EH 			//01C0 	11BE
		LDWI 	FH 			//01C1 	000F
		SUBWR 	3EH, 0H 		//01C2 	123E
		BTSC 	3H, 0H 			//01C3 	2803
		LJUMP 	1D3H 			//01C4 	39D3
		LCALL 	5ADH 			//01C5 	35AD
		MOVLP 	0H 			//01C6 	0180
		LJUMP 	1CAH 			//01C7 	39CA
		LSRF 	68H, 1H 		//01C8 	06E8
		RRR 	67H, 1H 			//01C9 	1CE7
		DECRSZ 	9H, 1H 		//01CA 	1B89
		LJUMP 	1C8H 			//01CB 	39C8
		BTSC 	67H, 0H 		//01CC 	2867
		INCR 	40H, 1H 		//01CD 	1AC0
		INCR 	3EH, 1H 		//01CE 	1ABE
		LDWI 	FH 			//01CF 	000F
		SUBWR 	3EH, 0H 		//01D0 	123E
		BTSS 	3H, 0H 			//01D1 	2C03
		LJUMP 	1C5H 			//01D2 	39C5
		LDWI 	FFH 			//01D3 	00FF
		BCR 	76H, 0H 			//01D4 	2076
		BCR 	76H, 1H 			//01D5 	20F6
		STR 	3EH 			//01D6 	10BE
		LCALL 	5ADH 			//01D7 	35AD
		MOVLP 	0H 			//01D8 	0180
		LJUMP 	1DCH 			//01D9 	39DC
		LSRF 	68H, 1H 		//01DA 	06E8
		RRR 	67H, 1H 			//01DB 	1CE7
		DECRSZ 	9H, 1H 		//01DC 	1B89
		LJUMP 	1DAH 			//01DD 	39DA
		BTSC 	67H, 0H 		//01DE 	2867
		BSR 	76H, 1H 			//01DF 	24F6
		MOVLB 	1H 			//01E0 	1021
		DECRSZ 	4DH, 0H 		//01E1 	1B4D
		LJUMP 	1FCH 			//01E2 	39FC
		DECR 	4CH, 0H 		//01E3 	134C
		BTSC 	3H, 2H 			//01E4 	2903
		LJUMP 	1FCH 			//01E5 	39FC
		LDWI 	5H 			//01E6 	0005
		SUBWR 	4EH, 0H 		//01E7 	124E
		BTSC 	3H, 0H 			//01E8 	2803
		LJUMP 	1FCH 			//01E9 	39FC
		MOVLB 	0H 			//01EA 	1020
		LDR 	37H, 0H 			//01EB 	1837
		IORWR 	38H, 0H 		//01EC 	1438
		BTSC 	3H, 2H 			//01ED 	2903
		LJUMP 	1F4H 			//01EE 	39F4
		MOVLB 	1H 			//01EF 	1021
		CLRF 	51H 			//01F0 	11D1
		MOVLB 	0H 			//01F1 	1020
		CLRF 	43H 			//01F2 	11C3
		LJUMP 	1F7H 			//01F3 	39F7
		CLRF 	43H 			//01F4 	11C3
		MOVLB 	1H 			//01F5 	1021
		CLRF 	51H 			//01F6 	11D1
		MOVLB 	0H 			//01F7 	1020
		LDR 	38H, 0H 			//01F8 	1838
		STR 	36H 			//01F9 	10B6
		LDR 	37H, 0H 			//01FA 	1837
		STR 	35H 			//01FB 	10B5
		LDWI 	2H 			//01FC 	0002
		MOVLB 	1H 			//01FD 	1021
		STR 	4CH 			//01FE 	10CC
		BCR 	76H, 3H 			//01FF 	21F6
		CLRF 	4EH 			//0200 	11CE
		MOVLB 	0H 			//0201 	1020
		LDR 	47H, 0H 			//0202 	1847
		SUBWR 	3FH, 0H 		//0203 	123F
		BTSC 	3H, 0H 			//0204 	2803
		LJUMP 	208H 			//0205 	3A08
		INCR 	3FH, 1H 		//0206 	1ABF
		LJUMP 	209H 			//0207 	3A09
		CLRF 	3FH 			//0208 	11BF
		LDR 	3FH, 0H 			//0209 	183F
		MOVLP 	FH 			//020A 	018F
		LCALL 	7CFH 			//020B 	37CF
		STR 	4BH 			//020C 	10CB
		RET 					//020D 	1008
		STR 	51H 			//020E 	10D1
		MOVLB 	7H 			//020F 	1027
		CLRF 	FH 			//0210 	118F
		CLRF 	10H 			//0211 	1190
		CLRF 	11H 			//0212 	1191
		LDWI 	4H 			//0213 	0004
		MOVLB 	0H 			//0214 	1020
		SUBWR 	51H, 0H 		//0215 	1251
		BTSC 	3H, 0H 			//0216 	2803
		LJUMP 	279H 			//0217 	3A79
		LDWI 	1H 			//0218 	0001
		LCALL 	334H 			//0219 	3334
		MOVLP 	0H 			//021A 	0180
		LDWI 	4H 			//021B 	0004
		MOVLB 	7H 			//021C 	1027
		STR 	12H 			//021D 	1092
		LCALL 	52FH 			//021E 	352F
		MOVLP 	0H 			//021F 	0180
		IORWI 	3H 			//0220 	0803
		LCALL 	593H 			//0221 	3593
		MOVLP 	0H 			//0222 	0180
		LCALL 	527H 			//0223 	3527
		MOVLP 	0H 			//0224 	0180
		BTSS 	3H, 2H 			//0225 	2D03
		LJUMP 	23AH 			//0226 	3A3A
		MOVLB 	7H 			//0227 	1027
		BSR 	DH, 5H 			//0228 	268D
		BTSS 	DH, 6H 			//0229 	2F0D
		LJUMP 	229H 			//022A 	3A29
		MOVLB 	1FH 			//022B 	103F
		LDR 	15H, 0H 			//022C 	1815
		MOVLB 	0H 			//022D 	1020
		STR 	22H 			//022E 	10A2
		CLRF 	21H 			//022F 	11A1
		MOVLB 	1FH 			//0230 	103F
		LDR 	14H, 0H 			//0231 	1814
		LCALL 	445H 			//0232 	3445
		MOVLP 	0H 			//0233 	0180
		BTSC 	3H, 0H 			//0234 	2803
		INCR 	26H, 1H 		//0235 	1AA6
		LCALL 	34DH 			//0236 	334D
		MOVLP 	0H 			//0237 	0180
		LCALL 	470H 			//0238 	3470
		MOVLP 	0H 			//0239 	0180
		LDWI 	2H 			//023A 	0002
		LCALL 	334H 			//023B 	3334
		MOVLP 	0H 			//023C 	0180
		LDWI 	4H 			//023D 	0004
		MOVLB 	7H 			//023E 	1027
		STR 	12H 			//023F 	1092
		LCALL 	52FH 			//0240 	352F
		MOVLP 	0H 			//0241 	0180
		LCALL 	593H 			//0242 	3593
		MOVLP 	0H 			//0243 	0180
		STR 	15H 			//0244 	1095
		LDWI 	C0H 			//0245 	00C0
		LCALL 	5A2H 			//0246 	35A2
		MOVLP 	0H 			//0247 	0180
		BTSS 	3H, 2H 			//0248 	2D03
		LJUMP 	277H 			//0249 	3A77
		MOVLB 	7H 			//024A 	1027
		BSR 	DH, 5H 			//024B 	268D
		BTSS 	DH, 6H 			//024C 	2F0D
		LJUMP 	24CH 			//024D 	3A4C
		MOVLB 	1FH 			//024E 	103F
		LDR 	15H, 0H 			//024F 	1815
		MOVLB 	0H 			//0250 	1020
		STR 	22H 			//0251 	10A2
		CLRF 	21H 			//0252 	11A1
		MOVLB 	1FH 			//0253 	103F
		LDR 	14H, 0H 			//0254 	1814
		LCALL 	445H 			//0255 	3445
		MOVLP 	0H 			//0256 	0180
		BTSC 	3H, 0H 			//0257 	2803
		INCR 	26H, 1H 		//0258 	1AA6
		LCALL 	34DH 			//0259 	334D
		MOVLB 	0H 			//025A 	1020
		LDR 	28H, 0H 			//025B 	1828
		STR 	30H 			//025C 	10B0
		LDR 	27H, 0H 			//025D 	1827
		STR 	2FH 			//025E 	10AF
		LDR 	4BH, 0H 			//025F 	184B
		STR 	4DH 			//0260 	10CD
		LDWI 	4H 			//0261 	0004
		CLRF 	4EH 			//0262 	11CE
		LSLF 	4DH, 1H 		//0263 	05CD
		RLR 	4EH, 1H 			//0264 	1DCE
		LSLF 	4DH, 1H 		//0265 	05CD
		RLR 	4EH, 1H 			//0266 	1DCE
		LSLF 	4DH, 1H 		//0267 	05CD
		RLR 	4EH, 1H 			//0268 	1DCE
		STR 	4FH 			//0269 	10CF
		LDWI 	23H 			//026A 	0023
		STR 	50H 			//026B 	10D0
		LDR 	4DH, 0H 			//026C 	184D
		ADDWR 	4FH, 0H 		//026D 	174F
		STR 	6H 			//026E 	1086
		LDR 	4EH, 0H 			//026F 	184E
		ADDWFC 	50H, 0H 		//0270 	0D50
		STR 	7H 			//0271 	1087
		LDR 	2FH, 0H 			//0272 	182F
		MOVWI 	0H[1] 			//0273 	0FC0
		LDR 	30H, 0H 			//0274 	1830
		MOVWI 	1H[1] 			//0275 	0FC1
		RET 					//0276 	1008
		LDWI 	0H 			//0277 	0000
		LJUMP 	334H 			//0278 	3B34
		LDWI 	8H 			//0279 	0008
		SUBWR 	51H, 0H 		//027A 	1251
		BTSC 	3H, 0H 			//027B 	2803
		LJUMP 	2BDH 			//027C 	3ABD
		LDWI 	1H 			//027D 	0001
		LCALL 	334H 			//027E 	3334
		MOVLP 	0H 			//027F 	0180
		LDWI 	4H 			//0280 	0004
		MOVLB 	7H 			//0281 	1027
		STR 	13H 			//0282 	1093
		LCALL 	52FH 			//0283 	352F
		MOVLP 	0H 			//0284 	0180
		IORWI 	3H 			//0285 	0803
		LCALL 	582H 			//0286 	3582
		MOVLP 	0H 			//0287 	0180
		LCALL 	527H 			//0288 	3527
		MOVLP 	0H 			//0289 	0180
		BTSS 	3H, 2H 			//028A 	2D03
		LJUMP 	29FH 			//028B 	3A9F
		MOVLB 	7H 			//028C 	1027
		BSR 	DH, 5H 			//028D 	268D
		BTSS 	DH, 6H 			//028E 	2F0D
		LJUMP 	28EH 			//028F 	3A8E
		MOVLB 	1FH 			//0290 	103F
		LDR 	1DH, 0H 			//0291 	181D
		MOVLB 	0H 			//0292 	1020
		STR 	22H 			//0293 	10A2
		CLRF 	21H 			//0294 	11A1
		MOVLB 	1FH 			//0295 	103F
		LDR 	1CH, 0H 			//0296 	181C
		LCALL 	445H 			//0297 	3445
		MOVLP 	0H 			//0298 	0180
		BTSC 	3H, 0H 			//0299 	2803
		INCR 	26H, 1H 		//029A 	1AA6
		LCALL 	34DH 			//029B 	334D
		MOVLP 	0H 			//029C 	0180
		LCALL 	470H 			//029D 	3470
		MOVLP 	0H 			//029E 	0180
		LDWI 	2H 			//029F 	0002
		LCALL 	334H 			//02A0 	3334
		MOVLP 	0H 			//02A1 	0180
		LDWI 	4H 			//02A2 	0004
		MOVLB 	7H 			//02A3 	1027
		STR 	13H 			//02A4 	1093
		LCALL 	52FH 			//02A5 	352F
		MOVLP 	0H 			//02A6 	0180
		LCALL 	582H 			//02A7 	3582
		MOVLP 	0H 			//02A8 	0180
		STR 	15H 			//02A9 	1095
		LDWI 	C0H 			//02AA 	00C0
		LCALL 	5A2H 			//02AB 	35A2
		MOVLP 	0H 			//02AC 	0180
		BTSS 	3H, 2H 			//02AD 	2D03
		LJUMP 	2BBH 			//02AE 	3ABB
		MOVLB 	7H 			//02AF 	1027
		BSR 	DH, 5H 			//02B0 	268D
		BTSS 	DH, 6H 			//02B1 	2F0D
		LJUMP 	2B1H 			//02B2 	3AB1
		MOVLB 	1FH 			//02B3 	103F
		LDR 	1DH, 0H 			//02B4 	181D
		MOVLB 	0H 			//02B5 	1020
		STR 	22H 			//02B6 	10A2
		CLRF 	21H 			//02B7 	11A1
		MOVLB 	1FH 			//02B8 	103F
		LDR 	1CH, 0H 			//02B9 	181C
		LJUMP 	255H 			//02BA 	3A55
		LDWI 	0H 			//02BB 	0000
		LJUMP 	334H 			//02BC 	3B34
		LDWI 	CH 			//02BD 	000C
		SUBWR 	51H, 0H 		//02BE 	1251
		LDWI 	1H 			//02BF 	0001
		BTSC 	3H, 0H 			//02C0 	2803
		LJUMP 	2FEH 			//02C1 	3AFE
		LCALL 	334H 			//02C2 	3334
		MOVLP 	0H 			//02C3 	0180
		LDWI 	4H 			//02C4 	0004
		MOVLB 	7H 			//02C5 	1027
		STR 	14H 			//02C6 	1094
		LCALL 	52FH 			//02C7 	352F
		MOVLP 	0H 			//02C8 	0180
		IORWI 	3H 			//02C9 	0803
		LCALL 	571H 			//02CA 	3571
		MOVLP 	0H 			//02CB 	0180
		LCALL 	527H 			//02CC 	3527
		MOVLP 	0H 			//02CD 	0180
		BTSS 	3H, 2H 			//02CE 	2D03
		LJUMP 	2E3H 			//02CF 	3AE3
		MOVLB 	7H 			//02D0 	1027
		BSR 	DH, 5H 			//02D1 	268D
		BTSS 	DH, 6H 			//02D2 	2F0D
		LJUMP 	2D2H 			//02D3 	3AD2
		MOVLB 	1FH 			//02D4 	103F
		LDR 	25H, 0H 			//02D5 	1825
		MOVLB 	0H 			//02D6 	1020
		STR 	22H 			//02D7 	10A2
		CLRF 	21H 			//02D8 	11A1
		MOVLB 	1FH 			//02D9 	103F
		LDR 	24H, 0H 			//02DA 	1824
		LCALL 	445H 			//02DB 	3445
		MOVLP 	0H 			//02DC 	0180
		BTSC 	3H, 0H 			//02DD 	2803
		INCR 	26H, 1H 		//02DE 	1AA6
		LCALL 	34DH 			//02DF 	334D
		MOVLP 	0H 			//02E0 	0180
		LCALL 	470H 			//02E1 	3470
		MOVLP 	0H 			//02E2 	0180
		LDWI 	2H 			//02E3 	0002
		LCALL 	334H 			//02E4 	3334
		MOVLP 	0H 			//02E5 	0180
		LDWI 	4H 			//02E6 	0004
		MOVLB 	7H 			//02E7 	1027
		STR 	14H 			//02E8 	1094
		LCALL 	52FH 			//02E9 	352F
		MOVLP 	0H 			//02EA 	0180
		LCALL 	571H 			//02EB 	3571
		MOVLP 	0H 			//02EC 	0180
		STR 	15H 			//02ED 	1095
		LDWI 	C0H 			//02EE 	00C0
		LCALL 	5A2H 			//02EF 	35A2
		MOVLP 	0H 			//02F0 	0180
		BTSS 	3H, 2H 			//02F1 	2D03
		LJUMP 	2FCH 			//02F2 	3AFC
		MOVLB 	7H 			//02F3 	1027
		BSR 	DH, 5H 			//02F4 	268D
		BTSS 	DH, 6H 			//02F5 	2F0D
		LJUMP 	2F5H 			//02F6 	3AF5
		MOVLB 	1FH 			//02F7 	103F
		LDR 	25H, 0H 			//02F8 	1825
		LCALL 	5B3H 			//02F9 	35B3
		MOVLP 	0H 			//02FA 	0180
		LJUMP 	255H 			//02FB 	3A55
		LDWI 	0H 			//02FC 	0000
		LJUMP 	334H 			//02FD 	3B34
		LCALL 	334H 			//02FE 	3334
		MOVLP 	0H 			//02FF 	0180
		LDWI 	4H 			//0300 	0004
		MOVLB 	7H 			//0301 	1027
		STR 	14H 			//0302 	1094
		LDWI 	3H 			//0303 	0003
		STR 	1AH 			//0304 	109A
		LCALL 	5A8H 			//0305 	35A8
		MOVLP 	0H 			//0306 	0180
		LCALL 	52FH 			//0307 	352F
		MOVLP 	0H 			//0308 	0180
		IORWI 	3H 			//0309 	0803
		LCALL 	55EH 			//030A 	355E
		MOVLP 	0H 			//030B 	0180
		BTSS 	3H, 2H 			//030C 	2D03
		LJUMP 	31EH 			//030D 	3B1E
		MOVLB 	7H 			//030E 	1027
		BSR 	DH, 5H 			//030F 	268D
		BTSS 	DH, 6H 			//0310 	2F0D
		LJUMP 	310H 			//0311 	3B10
		MOVLB 	1FH 			//0312 	103F
		LDR 	25H, 0H 			//0313 	1825
		LCALL 	5B3H 			//0314 	35B3
		MOVLP 	0H 			//0315 	0180
		LCALL 	445H 			//0316 	3445
		MOVLP 	0H 			//0317 	0180
		BTSC 	3H, 0H 			//0318 	2803
		INCR 	26H, 1H 		//0319 	1AA6
		LCALL 	34DH 			//031A 	334D
		MOVLP 	0H 			//031B 	0180
		LCALL 	470H 			//031C 	3470
		MOVLP 	0H 			//031D 	0180
		LDWI 	2H 			//031E 	0002
		LCALL 	334H 			//031F 	3334
		MOVLP 	0H 			//0320 	0180
		LDWI 	4H 			//0321 	0004
		MOVLB 	7H 			//0322 	1027
		STR 	14H 			//0323 	1094
		CLRF 	1AH 			//0324 	119A
		LCALL 	5A8H 			//0325 	35A8
		MOVLP 	0H 			//0326 	0180
		LCALL 	52FH 			//0327 	352F
		MOVLP 	0H 			//0328 	0180
		LCALL 	55EH 			//0329 	355E
		MOVLP 	0H 			//032A 	0180
		BTSS 	3H, 2H 			//032B 	2D03
		LJUMP 	332H 			//032C 	3B32
		MOVLB 	7H 			//032D 	1027
		BSR 	DH, 5H 			//032E 	268D
		BTSC 	DH, 6H 			//032F 	2B0D
		LJUMP 	2F7H 			//0330 	3AF7
		LJUMP 	32FH 			//0331 	3B2F
		LDWI 	0H 			//0332 	0000
		LJUMP 	334H 			//0333 	3B34
		MOVLB 	0H 			//0334 	1020
		STR 	4CH 			//0335 	10CC
		COMR 	4CH, 0H 		//0336 	194C
		MOVLB 	7H 			//0337 	1027
		STR 	CH 			//0338 	108C
		CLRF 	DH 			//0339 	118D
		LDWI 	3H 			//033A 	0003
		STR 	EH 			//033B 	108E
		CLRF 	12H 			//033C 	1192
		CLRF 	16H 			//033D 	1196
		CLRF 	17H 			//033E 	1197
		CLRF 	13H 			//033F 	1193
		CLRF 	18H 			//0340 	1198
		CLRF 	19H 			//0341 	1199
		CLRF 	14H 			//0342 	1194
		CLRF 	1AH 			//0343 	119A
		CLRF 	1BH 			//0344 	119B
		CLRF 	15H 			//0345 	1195
		CLRF 	1CH 			//0346 	119C
		CLRF 	1DH 			//0347 	119D
		MOVLB 	1H 			//0348 	1021
		LDR 	1AH, 0H 			//0349 	181A
		IORWI 	80H 			//034A 	0880
		STR 	1AH 			//034B 	109A
		RET 					//034C 	1008
		CLRF 	24H 			//034D 	11A4
		CLRF 	27H 			//034E 	11A7
		CLRF 	28H 			//034F 	11A8
		CLRF 	29H 			//0350 	11A9
		CLRF 	20H 			//0351 	11A0
		BCR 	3H, 0H 			//0352 	2003
		RLR 	20H, 1H 			//0353 	1DA0
		RLR 	21H, 1H 			//0354 	1DA1
		RLR 	22H, 1H 			//0355 	1DA2
		BCR 	3H, 0H 			//0356 	2003
		RLR 	20H, 1H 			//0357 	1DA0
		RLR 	21H, 1H 			//0358 	1DA1
		RLR 	22H, 1H 			//0359 	1DA2
		BCR 	3H, 0H 			//035A 	2003
		RLR 	20H, 1H 			//035B 	1DA0
		RLR 	21H, 1H 			//035C 	1DA1
		RLR 	22H, 1H 			//035D 	1DA2
		LDR 	25H, 0H 			//035E 	1825
		IORWR 	26H, 0H 		//035F 	1426
		BTSC 	3H, 2H 			//0360 	2903
		LJUMP 	38DH 			//0361 	3B8D
		LDWI 	8H 			//0362 	0008
		STR 	2AH 			//0363 	10AA
		INCR 	2AH, 1H 		//0364 	1AAA
		BTSC 	26H, 7H 		//0365 	2BA6
		LJUMP 	36CH 			//0366 	3B6C
		BCR 	3H, 0H 			//0367 	2003
		RLR 	24H, 1H 			//0368 	1DA4
		RLR 	25H, 1H 			//0369 	1DA5
		RLR 	26H, 1H 			//036A 	1DA6
		LJUMP 	364H 			//036B 	3B64
		BCR 	3H, 0H 			//036C 	2003
		RLR 	27H, 1H 			//036D 	1DA7
		RLR 	28H, 1H 			//036E 	1DA8
		RLR 	29H, 1H 			//036F 	1DA9
		LDR 	26H, 0H 			//0370 	1826
		SUBWR 	22H, 0H 		//0371 	1222
		BTSS 	3H, 2H 			//0372 	2D03
		LJUMP 	37AH 			//0373 	3B7A
		LDR 	25H, 0H 			//0374 	1825
		SUBWR 	21H, 0H 		//0375 	1221
		BTSS 	3H, 2H 			//0376 	2D03
		LJUMP 	37AH 			//0377 	3B7A
		LDR 	24H, 0H 			//0378 	1824
		SUBWR 	20H, 0H 		//0379 	1220
		BTSS 	3H, 0H 			//037A 	2C03
		LJUMP 	387H 			//037B 	3B87
		LDR 	24H, 0H 			//037C 	1824
		SUBWR 	20H, 1H 		//037D 	12A0
		LDR 	25H, 0H 			//037E 	1825
		BTSS 	3H, 0H 			//037F 	2C03
		INCRSZ 	25H, 0H 		//0380 	1F25
		SUBWR 	21H, 1H 		//0381 	12A1
		LDR 	26H, 0H 			//0382 	1826
		BTSS 	3H, 0H 			//0383 	2C03
		INCRSZ 	26H, 0H 		//0384 	1F26
		SUBWR 	22H, 1H 		//0385 	12A2
		BSR 	27H, 0H 			//0386 	2427
		BCR 	3H, 0H 			//0387 	2003
		RRR 	26H, 1H 			//0388 	1CA6
		RRR 	25H, 1H 			//0389 	1CA5
		RRR 	24H, 1H 			//038A 	1CA4
		DECRSZ 	2AH, 1H 		//038B 	1BAA
		LJUMP 	36CH 			//038C 	3B6C
		RET 					//038D 	1008

		//;sub.c: 73: readKeyNum = TouchKeyScan();
		LCALL 	E3H 			//038E 	30E3
		MOVLP 	0H 			//038F 	0180
		LCALL 	5C3H 			//0390 	35C3
		MOVLP 	0H 			//0391 	0180

		//;sub.c: 75: if((SysFunFlg2.OneBits.b7 == 0) && readKeyNum)
		BTSC 	46H, 7H 		//0392 	2BC6
		LJUMP 	3ADH 			//0393 	3BAD
		LDR 	39H, 0H 			//0394 	1839
		IORWR 	3AH, 0H 		//0395 	143A
		BTSC 	3H, 2H 			//0396 	2903
		LJUMP 	3ADH 			//0397 	3BAD

		//;sub.c: 76: {
		//;sub.c: 81: if(readKeyNum&0x4000)
		BTSS 	3AH, 6H 		//0398 	2F3A
		LJUMP 	39CH 			//0399 	3B9C

		//;sub.c: 82: {
		//;sub.c: 83: KeyType=ModeKey;
		LDWI 	2H 			//039A 	0002
		LJUMP 	3ACH 			//039B 	3BAC

		//;sub.c: 84: }
		//;sub.c: 85: else if(readKeyNum&0x0080)
		BTSS 	39H, 7H 		//039C 	2FB9
		LJUMP 	3A1H 			//039D 	3BA1

		//;sub.c: 86: {
		//;sub.c: 87: KeyType=PowerKey;
		CLRF 	45H 			//039E 	11C5
		INCR 	45H, 1H 		//039F 	1AC5

		//;sub.c: 88: }
		LJUMP 	3ADH 			//03A0 	3BAD

		//;sub.c: 89: else if(readKeyNum&0x0800)
		BTSS 	3AH, 3H 		//03A1 	2DBA
		LJUMP 	3A5H 			//03A2 	3BA5

		//;sub.c: 90: {
		//;sub.c: 91: KeyType=ManualKey;
		LDWI 	6H 			//03A3 	0006
		LJUMP 	3ACH 			//03A4 	3BAC

		//;sub.c: 92: }
		//;sub.c: 93: else if(readKeyNum&0x2000)
		BTSS 	3AH, 5H 		//03A5 	2EBA
		LJUMP 	3A9H 			//03A6 	3BA9

		//;sub.c: 94: {
		//;sub.c: 95: KeyType=StrongKey;
		LDWI 	5H 			//03A7 	0005
		LJUMP 	3ACH 			//03A8 	3BAC

		//;sub.c: 96: }
		//;sub.c: 97: else if(readKeyNum&0x1000)
		BTSS 	3AH, 4H 		//03A9 	2E3A
		LJUMP 	3ADH 			//03AA 	3BAD

		//;sub.c: 98: {
		//;sub.c: 99: KeyType=HeatKey;
		LDWI 	4H 			//03AB 	0004
		STR 	45H 			//03AC 	10C5

		//;sub.c: 100: }
		//;sub.c: 101: }
		//;sub.c: 102: if((readKeyNum&0x1000)&&(!SysFunFlg0.OneBits.b7))
		BTSC 	3AH, 4H 		//03AD 	2A3A
		BTSC 	49H, 7H 		//03AE 	2BC9
		LJUMP 	3BFH 			//03AF 	3BBF

		//;sub.c: 103: {
		//;sub.c: 104: if(++TmpCnt==500)
		MOVLB 	1H 			//03B0 	1021
		INCR 	45H, 1H 		//03B1 	1AC5
		BTSC 	3H, 2H 			//03B2 	2903
		INCR 	46H, 1H 		//03B3 	1AC6
		LDWI 	F4H 			//03B4 	00F4
		XORWR 	45H, 0H 		//03B5 	1645
		BTSS 	3H, 2H 			//03B6 	2D03
		LJUMP 	3BFH 			//03B7 	3BBF
		DECR 	46H, 0H 		//03B8 	1346
		BTSS 	3H, 2H 			//03B9 	2D03
		LJUMP 	3BFH 			//03BA 	3BBF

		//;sub.c: 105: {
		//;sub.c: 106: SysFunFlg1.OneBits.b2=1;
		MOVLB 	0H 			//03BB 	1020
		BSR 	48H, 2H 			//03BC 	2548

		//;sub.c: 107: KeyType=PowerKey;
		CLRF 	45H 			//03BD 	11C5
		INCR 	45H, 1H 		//03BE 	1AC5

		//;sub.c: 108: }
		//;sub.c: 109: }
		//;sub.c: 111: if(readKeyNum)
		MOVLB 	0H 			//03BF 	1020
		LDR 	39H, 0H 			//03C0 	1839
		IORWR 	3AH, 0H 		//03C1 	143A
		BTSC 	3H, 2H 			//03C2 	2903
		LJUMP 	3CAH 			//03C3 	3BCA

		//;sub.c: 112: {SysFunFlg2.OneBits.b7=1;KeyCnt=10;}
		BSR 	46H, 7H 			//03C4 	27C6
		LDWI 	AH 			//03C5 	000A
		MOVLB 	1H 			//03C6 	1021
		STR 	43H 			//03C7 	10C3
		CLRF 	44H 			//03C8 	11C4
		RET 					//03C9 	1008

		//;sub.c: 113: else
		//;sub.c: 114: {
		//;sub.c: 115: if(KeyCnt)KeyCnt--;
		MOVLB 	1H 			//03CA 	1021
		LDR 	43H, 0H 			//03CB 	1843
		IORWR 	44H, 0H 		//03CC 	1444
		BTSC 	3H, 2H 			//03CD 	2903
		LJUMP 	3D4H 			//03CE 	3BD4
		LDWI 	1H 			//03CF 	0001
		SUBWR 	43H, 1H 		//03D0 	12C3
		LDWI 	0H 			//03D1 	0000
		SUBWFB 	44H, 1H 		//03D2 	0BC4
		RET 					//03D3 	1008

		//;sub.c: 116: else
		//;sub.c: 117: {SysFunFlg2.OneBits.b7=0;TmpCnt=0;}
		MOVLB 	0H 			//03D4 	1020
		BCR 	46H, 7H 			//03D5 	23C6
		MOVLB 	1H 			//03D6 	1021
		CLRF 	45H 			//03D7 	11C5
		CLRF 	46H 			//03D8 	11C6
		RET 					//03D9 	1008

		//;CHIPINIT.C: 576: EPS0=0B00000000;
		MOVLB 	2H 			//03DA 	1022
		CLRF 	18H 			//03DB 	1198

		//;CHIPINIT.C: 578: EPS1=0B00000001;
		LDWI 	1H 			//03DC 	0001
		STR 	19H 			//03DD 	1099

		//;CHIPINIT.C: 580: ITYPE0 = 0B00000000;
		CLRF 	1EH 			//03DE 	119E

		//;CHIPINIT.C: 581: ITYPE1 = 0B11000000;
		LDWI 	C0H 			//03DF 	00C0
		STR 	1FH 			//03E0 	109F

		//;CHIPINIT.C: 582: EPIE0 = 0B00010000;
		LDWI 	10H 			//03E1 	0010
		MOVLB 	1H 			//03E2 	1021
		STR 	14H 			//03E3 	1094

		//;CHIPINIT.C: 583: INTCON = 0B01000000;
		LDWI 	40H 			//03E4 	0040
		STR 	BH 			//03E5 	108B
		RET 					//03E6 	1008

		//;rx.c: 200: KeepRfData();
		LCALL 	411H 			//03E7 	3411
		MOVLP 	0H 			//03E8 	0180

		//;rx.c: 201: if(RxData==0)return;
		LDR 	58H, 0H 			//03E9 	1858
		BTSC 	3H, 2H 			//03EA 	2903
		RET 					//03EB 	1008
		LJUMP 	3FDH 			//03EC 	3BFD

		//;rx.c: 203: {
		//;rx.c: 204: case 0x01:KeyType=PowerKey;break;
		MOVLB 	0H 			//03ED 	1020
		CLRF 	45H 			//03EE 	11C5
		INCR 	45H, 1H 		//03EF 	1AC5
		LJUMP 	40EH 			//03F0 	3C0E
		LDWI 	2H 			//03F1 	0002
		LJUMP 	3F8H 			//03F2 	3BF8
		LDWI 	5H 			//03F3 	0005
		LJUMP 	3F8H 			//03F4 	3BF8
		LDWI 	6H 			//03F5 	0006
		LJUMP 	3F8H 			//03F6 	3BF8
		LDWI 	4H 			//03F7 	0004
		MOVLB 	0H 			//03F8 	1020
		STR 	45H 			//03F9 	10C5
		LJUMP 	40EH 			//03FA 	3C0E
		CLRF 	58H 			//03FB 	11D8
		LJUMP 	40EH 			//03FC 	3C0E
		LDR 	58H, 0H 			//03FD 	1858
		XORWI 	1H 			//03FE 	0A01
		BTSC 	3H, 2H 			//03FF 	2903
		LJUMP 	3EDH 			//0400 	3BED
		XORWI 	9H 			//0401 	0A09
		BTSC 	3H, 2H 			//0402 	2903
		LJUMP 	3F1H 			//0403 	3BF1
		XORWI 	2H 			//0404 	0A02
		BTSC 	3H, 2H 			//0405 	2903
		LJUMP 	3F5H 			//0406 	3BF5
		XORWI 	6H 			//0407 	0A06
		BTSC 	3H, 2H 			//0408 	2903
		LJUMP 	3F7H 			//0409 	3BF7
		XORWI 	2H 			//040A 	0A02
		BTSC 	3H, 2H 			//040B 	2903
		LJUMP 	3F3H 			//040C 	3BF3
		LJUMP 	3FBH 			//040D 	3BFB

		//;rx.c: 212: RxData=0;
		MOVLB 	1H 			//040E 	1021
		CLRF 	58H 			//040F 	11D8
		RET 					//0410 	1008

		//;rx.c: 188: if (RemOutTime > 0)
		MOVLB 	1H 			//0411 	1021
		LDR 	57H, 0H 			//0412 	1857
		BTSC 	3H, 2H 			//0413 	2903
		RET 					//0414 	1008

		//;rx.c: 189: {
		//;rx.c: 190: RemOutTime--;
		DECR 	57H, 1H 		//0415 	13D7

		//;rx.c: 191: if (RemOutTime == 0)
		LDR 	57H, 0H 			//0416 	1857
		BTSC 	3H, 2H 			//0417 	2903

		//;rx.c: 192: {
		//;rx.c: 193: RxData= 0;
		CLRF 	58H 			//0418 	11D8
		RET 					//0419 	1008

		//;CHIPINIT.C: 670: SysFunFlg0.AllBits = 0;
		MOVLB 	0H 			//041A 	1020
		CLRF 	49H 			//041B 	11C9

		//;CHIPINIT.C: 671: SysFunFlg1.AllBits = 0;
		CLRF 	48H 			//041C 	11C8

		//;CHIPINIT.C: 672: SysFunFlg2.AllBits = 0;
		CLRF 	46H 			//041D 	11C6

		//;CHIPINIT.C: 673: TIME_INIT();
		LCALL 	68FH 			//041E 	368F

		//;CHIPINIT.C: 675: KeyType=NullKey;
		MOVLB 	0H 			//041F 	1020
		CLRF 	45H 			//0420 	11C5

		//;CHIPINIT.C: 676: DspIndex =DsSty;
		MOVLB 	1H 			//0421 	1021
		CLRF 	5EH 			//0422 	11DE
		RET 					//0423 	1008

		//;sub.c: 169: if(SysFunFlg1.OneBits.b2)
		MOVLB 	0H 			//0424 	1020
		BTSS 	48H, 2H 		//0425 	2D48

		//;sub.c: 171: if(SysFunFlg2.OneBits.b7)
		BTSC 	46H, 7H 		//0426 	2BC6
		RET 					//0427 	1008

		//;sub.c: 173: if(SysFunFlg0.OneBits.b6)
		BTSC 	49H, 6H 		//0428 	2B49
		RET 					//0429 	1008

		//;sub.c: 176: if((TimeMin==0)&&(PwrType))
		LDR 	77H, 0H 			//042A 	1877
		BTSS 	3H, 2H 			//042B 	2D03
		LJUMP 	432H 			//042C 	3C32
		LDR 	7BH, 0H 			//042D 	187B
		BTSC 	3H, 2H 			//042E 	2903
		LJUMP 	432H 			//042F 	3C32

		//;sub.c: 177: {
		//;sub.c: 178: KeyType=PowerKey;
		CLRF 	45H 			//0430 	11C5
		INCR 	45H, 1H 		//0431 	1AC5

		//;sub.c: 179: }
		//;sub.c: 180: if(PwrType)
		LDR 	7BH, 0H 			//0432 	187B
		BTSC 	3H, 2H 			//0433 	2903

		//;sub.c: 182: if(SysFunFlg0.OneBits.b7)
		BTSS 	49H, 7H 		//0434 	2FC9
		RET 					//0435 	1008

		//;sub.c: 183: {
		//;sub.c: 184: User_init();
		LJUMP 	41AH 			//0436 	3C1A

		//;CHIPINIT.C: 481: PCKEN |=0B00000100;
		BSR 	1AH, 2H 			//0437 	251A

		//;CHIPINIT.C: 482: CKOCON=0B00100000;
		LDWI 	20H 			//0438 	0020
		STR 	15H 			//0439 	1095

		//;CHIPINIT.C: 483: TCKSRC|=0B00010000;
		MOVLB 	6H 			//043A 	1026
		BSR 	1FH, 4H 			//043B 	261F

		//;CHIPINIT.C: 484: TIM2CR1 =0B10000101;
		LDWI 	85H 			//043C 	0085
		STR 	CH 			//043D 	108C

		//;CHIPINIT.C: 485: TIM2IER =0B00000001;
		LDWI 	1H 			//043E 	0001
		STR 	DH 			//043F 	108D

		//;CHIPINIT.C: 488: TIM2ARRH =0x06;
		LDWI 	6H 			//0440 	0006
		STR 	19H 			//0441 	1099

		//;CHIPINIT.C: 489: TIM2ARRL =0x40;
		LDWI 	40H 			//0442 	0040
		STR 	1AH 			//0443 	109A
		RET 					//0444 	1008
		MOVLB 	0H 			//0445 	1020
		ADDWR 	21H, 1H 		//0446 	17A1
		BTSC 	3H, 0H 			//0447 	2803
		INCR 	22H, 1H 		//0448 	1AA2
		MOVLB 	1FH 			//0449 	103F
		LDR 	2DH, 0H 			//044A 	182D
		MOVLB 	0H 			//044B 	1020
		STR 	26H 			//044C 	10A6
		CLRF 	25H 			//044D 	11A5
		MOVLB 	1FH 			//044E 	103F
		LDR 	2CH, 0H 			//044F 	182C
		MOVLB 	0H 			//0450 	1020
		ADDWR 	25H, 1H 		//0451 	17A5
		RET 					//0452 	1008
		MOVLB 	0H 			//0453 	1020
		LDR 	28H, 0H 			//0454 	1828
		STR 	2EH 			//0455 	10AE
		LDR 	27H, 0H 			//0456 	1827
		STR 	2DH 			//0457 	10AD
		LDR 	4BH, 0H 			//0458 	184B
		STR 	67H 			//0459 	10E7
		LDWI 	2H 			//045A 	0002
		CLRF 	68H 			//045B 	11E8
		LSLF 	67H, 1H 		//045C 	05E7
		RLR 	68H, 1H 			//045D 	1DE8
		LSLF 	67H, 1H 		//045E 	05E7
		RLR 	68H, 1H 			//045F 	1DE8
		LSLF 	67H, 1H 		//0460 	05E7
		RLR 	68H, 1H 			//0461 	1DE8
		STR 	69H 			//0462 	10E9
		LDWI 	23H 			//0463 	0023
		STR 	6AH 			//0464 	10EA
		LDR 	67H, 0H 			//0465 	1867
		ADDWR 	69H, 0H 		//0466 	1769
		STR 	6H 			//0467 	1086
		LDR 	68H, 0H 			//0468 	1868
		ADDWFC 	6AH, 0H 		//0469 	0D6A
		STR 	7H 			//046A 	1087
		LDR 	2DH, 0H 			//046B 	182D
		MOVWI 	0H[1] 			//046C 	0FC0
		LDR 	2EH, 0H 			//046D 	182E
		MOVWI 	1H[1] 			//046E 	0FC1
		RET 					//046F 	1008
		MOVLB 	0H 			//0470 	1020
		LDR 	28H, 0H 			//0471 	1828
		STR 	32H 			//0472 	10B2
		LDR 	27H, 0H 			//0473 	1827
		STR 	31H 			//0474 	10B1
		LDR 	4BH, 0H 			//0475 	184B
		STR 	4DH 			//0476 	10CD
		LDWI 	6H 			//0477 	0006
		CLRF 	4EH 			//0478 	11CE
		LSLF 	4DH, 1H 		//0479 	05CD
		RLR 	4EH, 1H 			//047A 	1DCE
		LSLF 	4DH, 1H 		//047B 	05CD
		RLR 	4EH, 1H 			//047C 	1DCE
		LSLF 	4DH, 1H 		//047D 	05CD
		RLR 	4EH, 1H 			//047E 	1DCE
		STR 	4FH 			//047F 	10CF
		LDWI 	23H 			//0480 	0023
		STR 	50H 			//0481 	10D0
		LDR 	4DH, 0H 			//0482 	184D
		ADDWR 	4FH, 0H 		//0483 	174F
		STR 	6H 			//0484 	1086
		LDR 	4EH, 0H 			//0485 	184E
		ADDWFC 	50H, 0H 		//0486 	0D50
		STR 	7H 			//0487 	1087
		LDR 	31H, 0H 			//0488 	1831
		MOVWI 	0H[1] 			//0489 	0FC0
		LDR 	32H, 0H 			//048A 	1832
		MOVWI 	1H[1] 			//048B 	0FC1
		RET 					//048C 	1008
		MOVLB 	0H 			//048D 	1020
		LDR 	28H, 0H 			//048E 	1828
		STR 	2CH 			//048F 	10AC
		LDR 	27H, 0H 			//0490 	1827
		STR 	2BH 			//0491 	10AB
		LDR 	4BH, 0H 			//0492 	184B
		STR 	67H 			//0493 	10E7
		LDWI 	23H 			//0494 	0023
		CLRF 	68H 			//0495 	11E8
		LSLF 	67H, 1H 		//0496 	05E7
		RLR 	68H, 1H 			//0497 	1DE8
		LSLF 	67H, 1H 		//0498 	05E7
		RLR 	68H, 1H 			//0499 	1DE8
		LSLF 	67H, 1H 		//049A 	05E7
		RLR 	68H, 1H 			//049B 	1DE8
		CLRF 	69H 			//049C 	11E9
		STR 	6AH 			//049D 	10EA
		LDR 	67H, 0H 			//049E 	1867
		ADDWR 	69H, 0H 		//049F 	1769
		STR 	6H 			//04A0 	1086
		LDR 	68H, 0H 			//04A1 	1868
		ADDWFC 	6AH, 0H 		//04A2 	0D6A
		STR 	7H 			//04A3 	1087
		LDR 	2BH, 0H 			//04A4 	182B
		MOVWI 	0H[1] 			//04A5 	0FC0
		LDR 	2CH, 0H 			//04A6 	182C
		MOVWI 	1H[1] 			//04A7 	0FC1
		RET 					//04A8 	1008
		LDWI 	4H 			//04A9 	0004
		MOVLB 	7H 			//04AA 	1027
		STR 	13H 			//04AB 	1093
		MOVLB 	0H 			//04AC 	1020
		LDR 	4BH, 0H 			//04AD 	184B
		STR 	67H 			//04AE 	10E7
		RRR 	67H, 1H 			//04AF 	1CE7
		RRR 	67H, 1H 			//04B0 	1CE7
		RRR 	67H, 0H 			//04B1 	1C67
		ANDWI 	C0H 			//04B2 	09C0
		IORWI 	3H 			//04B3 	0803
		MOVLB 	7H 			//04B4 	1027
		STR 	18H 			//04B5 	1098
		LDWI 	1H 			//04B6 	0001
		MOVLB 	0H 			//04B7 	1020
		STR 	67H 			//04B8 	10E7
		LDR 	4BH, 0H 			//04B9 	184B
		ADDWI 	FCH 			//04BA 	0EFC
		INCR 	9H, 1H 			//04BB 	1A89
		LJUMP 	4BEH 			//04BC 	3CBE
		LSLF 	67H, 1H 		//04BD 	05E7
		DECRSZ 	9H, 1H 		//04BE 	1B89
		LJUMP 	4BDH 			//04BF 	3CBD
		LDR 	67H, 0H 			//04C0 	1867
		IORWI 	10H 			//04C1 	0810
		MOVLB 	7H 			//04C2 	1027
		STR 	19H 			//04C3 	1099
		LDWI 	4H 			//04C4 	0004
		STR 	15H 			//04C5 	1095
		LDWI 	C3H 			//04C6 	00C3
		STR 	1CH 			//04C7 	109C
		LDWI 	18H 			//04C8 	0018
		STR 	1DH 			//04C9 	109D
		BSR 	DH, 5H 			//04CA 	268D
		BTSS 	DH, 6H 			//04CB 	2F0D
		LJUMP 	4CBH 			//04CC 	3CCB
		MOVLB 	1FH 			//04CD 	103F
		LDR 	1DH, 0H 			//04CE 	181D
		MOVLB 	0H 			//04CF 	1020
		STR 	22H 			//04D0 	10A2
		CLRF 	21H 			//04D1 	11A1
		MOVLB 	1FH 			//04D2 	103F
		LDR 	1CH, 0H 			//04D3 	181C
		RET 					//04D4 	1008
		LDWI 	4H 			//04D5 	0004
		MOVLB 	7H 			//04D6 	1027
		STR 	12H 			//04D7 	1092
		MOVLB 	0H 			//04D8 	1020
		LDR 	4BH, 0H 			//04D9 	184B
		STR 	67H 			//04DA 	10E7
		RRR 	67H, 1H 			//04DB 	1CE7
		RRR 	67H, 1H 			//04DC 	1CE7
		RRR 	67H, 0H 			//04DD 	1C67
		ANDWI 	C0H 			//04DE 	09C0
		IORWI 	3H 			//04DF 	0803
		MOVLB 	7H 			//04E0 	1027
		STR 	16H 			//04E1 	1096
		LDWI 	1H 			//04E2 	0001
		MOVLB 	0H 			//04E3 	1020
		STR 	67H 			//04E4 	10E7
		INCR 	4BH, 0H 		//04E5 	1A4B
		LJUMP 	4E8H 			//04E6 	3CE8
		LSLF 	67H, 1H 		//04E7 	05E7
		DECRSZ 	9H, 1H 		//04E8 	1B89
		LJUMP 	4E7H 			//04E9 	3CE7
		LDR 	67H, 0H 			//04EA 	1867
		IORWI 	10H 			//04EB 	0810
		MOVLB 	7H 			//04EC 	1027
		STR 	17H 			//04ED 	1097
		LDWI 	4H 			//04EE 	0004
		STR 	15H 			//04EF 	1095
		LDWI 	C3H 			//04F0 	00C3
		STR 	1CH 			//04F1 	109C
		LDWI 	18H 			//04F2 	0018
		STR 	1DH 			//04F3 	109D
		BSR 	DH, 5H 			//04F4 	268D
		BTSS 	DH, 6H 			//04F5 	2F0D
		LJUMP 	4F5H 			//04F6 	3CF5
		MOVLB 	1FH 			//04F7 	103F
		LDR 	15H, 0H 			//04F8 	1815
		MOVLB 	0H 			//04F9 	1020
		STR 	22H 			//04FA 	10A2
		CLRF 	21H 			//04FB 	11A1
		MOVLB 	1FH 			//04FC 	103F
		LDR 	14H, 0H 			//04FD 	1814
		RET 					//04FE 	1008
		MOVLB 	7H 			//04FF 	1027
		STR 	14H 			//0500 	1094
		STR 	15H 			//0501 	1095
		CLRF 	1AH 			//0502 	119A
		LDWI 	90H 			//0503 	0090
		STR 	1BH 			//0504 	109B
		MOVLB 	0H 			//0505 	1020
		LDR 	4BH, 0H 			//0506 	184B
		STR 	67H 			//0507 	10E7
		RRR 	67H, 1H 			//0508 	1CE7
		RRR 	67H, 1H 			//0509 	1CE7
		RRR 	67H, 0H 			//050A 	1C67
		ANDWI 	C0H 			//050B 	09C0
		MOVLB 	7H 			//050C 	1027
		STR 	1CH 			//050D 	109C
		LDWI 	1H 			//050E 	0001
		MOVLB 	0H 			//050F 	1020
		STR 	67H 			//0510 	10E7
		LDR 	4BH, 0H 			//0511 	184B
		ADDWI 	F4H 			//0512 	0EF4
		INCR 	9H, 1H 			//0513 	1A89
		LJUMP 	516H 			//0514 	3D16
		LSLF 	67H, 1H 		//0515 	05E7
		DECRSZ 	9H, 1H 		//0516 	1B89
		LJUMP 	515H 			//0517 	3D15
		LDR 	67H, 0H 			//0518 	1867
		IORWI 	98H 			//0519 	0898
		MOVLB 	7H 			//051A 	1027
		STR 	1DH 			//051B 	109D
		BSR 	DH, 5H 			//051C 	268D
		BTSS 	DH, 6H 			//051D 	2F0D
		LJUMP 	51DH 			//051E 	3D1D
		MOVLB 	1FH 			//051F 	103F
		LDR 	25H, 0H 			//0520 	1825
		MOVLB 	0H 			//0521 	1020
		STR 	22H 			//0522 	10A2
		CLRF 	21H 			//0523 	11A1
		MOVLB 	1FH 			//0524 	103F
		LDR 	24H, 0H 			//0525 	1824
		RET 					//0526 	1008
		STR 	15H 			//0527 	1095
		LDWI 	C3H 			//0528 	00C3
		STR 	1CH 			//0529 	109C
		LDWI 	18H 			//052A 	0018
		STR 	1DH 			//052B 	109D
		MOVLB 	0H 			//052C 	1020
		DECR 	3CH, 0H 		//052D 	133C
		RET 					//052E 	1008
		MOVLB 	0H 			//052F 	1020
		LDR 	51H, 0H 			//0530 	1851
		STR 	4DH 			//0531 	10CD
		RRR 	4DH, 1H 			//0532 	1CCD
		RRR 	4DH, 1H 			//0533 	1CCD
		RRR 	4DH, 0H 			//0534 	1C4D
		ANDWI 	C0H 			//0535 	09C0
		RET 					//0536 	1008
		MOVLB 	0H 			//0537 	1020
		LDR 	4BH, 0H 			//0538 	184B
		STR 	67H 			//0539 	10E7
		RRR 	67H, 1H 			//053A 	1CE7
		RRR 	67H, 1H 			//053B 	1CE7
		RRR 	67H, 0H 			//053C 	1C67
		ANDWI 	C0H 			//053D 	09C0
		MOVLB 	7H 			//053E 	1027
		STR 	1AH 			//053F 	109A
		LDWI 	1H 			//0540 	0001
		MOVLB 	0H 			//0541 	1020
		STR 	67H 			//0542 	10E7
		LDR 	4BH, 0H 			//0543 	184B
		ADDWI 	F8H 			//0544 	0EF8
		INCR 	9H, 1H 			//0545 	1A89
		LJUMP 	548H 			//0546 	3D48
		LSLF 	67H, 1H 		//0547 	05E7
		DECRSZ 	9H, 1H 		//0548 	1B89
		LJUMP 	547H 			//0549 	3D47
		LDR 	67H, 0H 			//054A 	1867
		IORWI 	10H 			//054B 	0810
		MOVLB 	7H 			//054C 	1027
		STR 	1BH 			//054D 	109B
		RET 					//054E 	1008
		LDWI 	C0H 			//054F 	00C0
		STR 	1CH 			//0550 	109C
		LDWI 	18H 			//0551 	0018
		STR 	1DH 			//0552 	109D
		BSR 	DH, 5H 			//0553 	268D
		BTSS 	DH, 6H 			//0554 	2F0D
		LJUMP 	554H 			//0555 	3D54
		MOVLB 	1FH 			//0556 	103F
		LDR 	25H, 0H 			//0557 	1825
		MOVLB 	0H 			//0558 	1020
		STR 	22H 			//0559 	10A2
		CLRF 	21H 			//055A 	11A1
		MOVLB 	1FH 			//055B 	103F
		LDR 	24H, 0H 			//055C 	1824
		RET 					//055D 	1008
		MOVLB 	7H 			//055E 	1027
		STR 	1CH 			//055F 	109C
		LDWI 	1H 			//0560 	0001
		MOVLB 	0H 			//0561 	1020
		STR 	4DH 			//0562 	10CD
		LDR 	51H, 0H 			//0563 	1851
		ADDWI 	F4H 			//0564 	0EF4
		INCR 	9H, 1H 			//0565 	1A89
		LJUMP 	568H 			//0566 	3D68
		LSLF 	4DH, 1H 		//0567 	05CD
		DECRSZ 	9H, 1H 		//0568 	1B89
		LJUMP 	567H 			//0569 	3D67
		LDR 	4DH, 0H 			//056A 	184D
		IORWI 	98H 			//056B 	0898
		MOVLB 	7H 			//056C 	1027
		STR 	1DH 			//056D 	109D
		MOVLB 	0H 			//056E 	1020
		DECR 	3CH, 0H 		//056F 	133C
		RET 					//0570 	1008
		MOVLB 	7H 			//0571 	1027
		STR 	1AH 			//0572 	109A
		LDWI 	1H 			//0573 	0001
		MOVLB 	0H 			//0574 	1020
		STR 	4DH 			//0575 	10CD
		LDR 	51H, 0H 			//0576 	1851
		ADDWI 	F8H 			//0577 	0EF8
		INCR 	9H, 1H 			//0578 	1A89
		LJUMP 	57BH 			//0579 	3D7B
		LSLF 	4DH, 1H 		//057A 	05CD
		DECRSZ 	9H, 1H 		//057B 	1B89
		LJUMP 	57AH 			//057C 	3D7A
		LDR 	4DH, 0H 			//057D 	184D
		IORWI 	10H 			//057E 	0810
		MOVLB 	7H 			//057F 	1027
		STR 	1BH 			//0580 	109B
		RETW 	4H 			//0581 	0404
		MOVLB 	7H 			//0582 	1027
		STR 	18H 			//0583 	1098
		LDWI 	1H 			//0584 	0001
		MOVLB 	0H 			//0585 	1020
		STR 	4DH 			//0586 	10CD
		LDR 	51H, 0H 			//0587 	1851
		ADDWI 	FCH 			//0588 	0EFC
		INCR 	9H, 1H 			//0589 	1A89
		LJUMP 	58CH 			//058A 	3D8C
		LSLF 	4DH, 1H 		//058B 	05CD
		DECRSZ 	9H, 1H 		//058C 	1B89
		LJUMP 	58BH 			//058D 	3D8B
		LDR 	4DH, 0H 			//058E 	184D
		IORWI 	10H 			//058F 	0810
		MOVLB 	7H 			//0590 	1027
		STR 	19H 			//0591 	1099
		RETW 	4H 			//0592 	0404
		MOVLB 	7H 			//0593 	1027
		STR 	16H 			//0594 	1096
		LDWI 	1H 			//0595 	0001
		MOVLB 	0H 			//0596 	1020
		STR 	4DH 			//0597 	10CD
		INCR 	51H, 0H 		//0598 	1A51
		LJUMP 	59BH 			//0599 	3D9B
		LSLF 	4DH, 1H 		//059A 	05CD
		DECRSZ 	9H, 1H 		//059B 	1B89
		LJUMP 	59AH 			//059C 	3D9A
		LDR 	4DH, 0H 			//059D 	184D
		IORWI 	10H 			//059E 	0810
		MOVLB 	7H 			//059F 	1027
		STR 	17H 			//05A0 	1097
		RETW 	4H 			//05A1 	0404
		STR 	1CH 			//05A2 	109C
		LDWI 	18H 			//05A3 	0018
		STR 	1DH 			//05A4 	109D
		MOVLB 	0H 			//05A5 	1020
		DECR 	3CH, 0H 		//05A6 	133C
		RET 					//05A7 	1008
		LDWI 	90H 			//05A8 	0090
		STR 	1BH 			//05A9 	109B
		LDWI 	4H 			//05AA 	0004
		STR 	15H 			//05AB 	1095
		RET 					//05AC 	1008
		LDR 	34H, 0H 			//05AD 	1834
		STR 	68H 			//05AE 	10E8
		LDR 	33H, 0H 			//05AF 	1833
		STR 	67H 			//05B0 	10E7
		INCR 	3EH, 0H 		//05B1 	1A3E
		RET 					//05B2 	1008
		MOVLB 	0H 			//05B3 	1020
		STR 	22H 			//05B4 	10A2
		CLRF 	21H 			//05B5 	11A1
		MOVLB 	1FH 			//05B6 	103F
		LDR 	24H, 0H 			//05B7 	1824
		RET 					//05B8 	1008
		MOVLB 	7H 			//05B9 	1027
		CLRF 	FH 			//05BA 	118F
		CLRF 	10H 			//05BB 	1190
		CLRF 	11H 			//05BC 	1191
		RETW 	3H 			//05BD 	0403
		MOVLB 	7H 			//05BE 	1027
		CLRF 	FH 			//05BF 	118F
		CLRF 	10H 			//05C0 	1190
		CLRF 	11H 			//05C1 	1191
		RETW 	3EH 			//05C2 	043E
		LDR 	6CH, 0H 			//05C3 	186C
		STR 	3AH 			//05C4 	10BA
		LDR 	6BH, 0H 			//05C5 	186B
		STR 	39H 			//05C6 	10B9
		RET 					//05C7 	1008

		//;sub.c: 122: if(KeyType==NullKey)return;
		MOVLB 	0H 			//05C8 	1020
		LDR 	45H, 0H 			//05C9 	1845
		BTSC 	3H, 2H 			//05CA 	2903
		RET 					//05CB 	1008
		LJUMP 	5DCH 			//05CC 	3DDC

		//;sub.c: 127: PowerKeyExec();
		LCALL 	654H 			//05CD 	3654
		MOVLP 	0H 			//05CE 	0180

		//;sub.c: 128: break;
		LJUMP 	5F3H 			//05CF 	3DF3

		//;sub.c: 130: ModeKeyExec();
		LCALL 	635H 			//05D0 	3635
		MOVLP 	0H 			//05D1 	0180

		//;sub.c: 131: break;
		LJUMP 	5F3H 			//05D2 	3DF3

		//;sub.c: 136: HeatKeyExec();
		LCALL 	600H 			//05D3 	3600
		MOVLP 	0H 			//05D4 	0180

		//;sub.c: 137: break;
		LJUMP 	5F3H 			//05D5 	3DF3

		//;sub.c: 139: StrongKeyExec();
		LCALL 	683H 			//05D6 	3683
		MOVLP 	0H 			//05D7 	0180

		//;sub.c: 140: break;
		LJUMP 	5F3H 			//05D8 	3DF3

		//;sub.c: 142: ManualKeyExec();
		LCALL 	611H 			//05D9 	3611
		MOVLP 	0H 			//05DA 	0180

		//;sub.c: 143: break;
		LJUMP 	5F3H 			//05DB 	3DF3
		LDR 	45H, 0H 			//05DC 	1845
		XORWI 	1H 			//05DD 	0A01
		BTSC 	3H, 2H 			//05DE 	2903
		LJUMP 	5CDH 			//05DF 	3DCD
		XORWI 	3H 			//05E0 	0A03
		BTSC 	3H, 2H 			//05E1 	2903
		LJUMP 	5D0H 			//05E2 	3DD0
		XORWI 	1H 			//05E3 	0A01
		BTSC 	3H, 2H 			//05E4 	2903
		LJUMP 	5F3H 			//05E5 	3DF3
		XORWI 	7H 			//05E6 	0A07
		BTSC 	3H, 2H 			//05E7 	2903
		LJUMP 	5D3H 			//05E8 	3DD3
		XORWI 	1H 			//05E9 	0A01
		BTSC 	3H, 2H 			//05EA 	2903
		LJUMP 	5D6H 			//05EB 	3DD6
		XORWI 	3H 			//05EC 	0A03
		BTSC 	3H, 2H 			//05ED 	2903
		LJUMP 	5D9H 			//05EE 	3DD9
		XORWI 	1H 			//05EF 	0A01
		BTSC 	3H, 2H 			//05F0 	2903
		LJUMP 	5F3H 			//05F1 	3DF3
		LJUMP 	5F3H 			//05F2 	3DF3

		//;sub.c: 151: if((KeyType!=PowerKey)&&(!SysFunFlg0.OneBits.b7))
		MOVLB 	0H 			//05F3 	1020
		DECR 	45H, 0H 		//05F4 	1345
		BTSC 	3H, 2H 			//05F5 	2903
		LJUMP 	5F9H 			//05F6 	3DF9
		BTSS 	49H, 7H 		//05F7 	2FC9
		RET 					//05F8 	1008

		//;sub.c: 155: else
		//;sub.c: 156: {
		//;sub.c: 158: refresh_data();
		LCALL 	693H 			//05F9 	3693

		//;sub.c: 159: }
		//;sub.c: 161: KeyType=NullKey;
		MOVLB 	0H 			//05FA 	1020
		LDWI 	FAH 			//05FB 	00FA
		CLRF 	45H 			//05FC 	11C5

		//;sub.c: 163: dsp_100ms=250;
		MOVLB 	1H 			//05FD 	1021
		STR 	56H 			//05FE 	10D6
		RET 					//05FF 	1008

		//;main.c: 102: if(SysFunFlg0.OneBits.b7)
		MOVLB 	0H 			//0600 	1020
		BTSS 	49H, 7H 		//0601 	2FC9
		RET 					//0602 	1008

		//;main.c: 103: {
		//;main.c: 104: if(HeatType >= Mode1)
		MOVLB 	1H 			//0603 	1021
		LDR 	62H, 0H 			//0604 	1862
		BTSC 	3H, 2H 			//0605 	2903
		LJUMP 	609H 			//0606 	3E09

		//;main.c: 105: {
		//;main.c: 106: HeatType = Mode0;
		CLRF 	62H 			//0607 	11E2

		//;main.c: 107: }
		LJUMP 	60AH 			//0608 	3E0A

		//;main.c: 108: else HeatType+=1;
		INCR 	62H, 1H 		//0609 	1AE2

		//;main.c: 110: if(PwrType==1)PwrType=2;
		DECRSZ 	7BH, 0H 		//060A 	1B7B
		LJUMP 	60EH 			//060B 	3E0E
		LDWI 	2H 			//060C 	0002
		STR 	7BH 			//060D 	10FB

		//;main.c: 112: DspIndex =DsHeat;
		LDWI 	3H 			//060E 	0003
		STR 	5EH 			//060F 	10DE
		RET 					//0610 	1008

		//;main.c: 79: if(SysFunFlg0.OneBits.b7)
		MOVLB 	0H 			//0611 	1020
		BTSS 	49H, 7H 		//0612 	2FC9
		RET 					//0613 	1008

		//;main.c: 80: {
		//;main.c: 81: if(ManualType==0)
		LDR 	78H, 0H 			//0614 	1878
		BTSS 	3H, 2H 			//0615 	2D03
		LJUMP 	625H 			//0616 	3E25

		//;main.c: 82: {
		//;main.c: 83: if(LastManual==0){LastManual=1; HeatType=1;}
		MOVLB 	1H 			//0617 	1021
		LDR 	60H, 0H 			//0618 	1860
		BTSS 	3H, 2H 			//0619 	2D03
		LJUMP 	61FH 			//061A 	3E1F
		CLRF 	60H 			//061B 	11E0
		INCR 	60H, 1H 		//061C 	1AE0
		CLRF 	62H 			//061D 	11E2
		INCR 	62H, 1H 		//061E 	1AE2

		//;main.c: 84: ManualType=LastManual;
		LDR 	60H, 0H 			//061F 	1860
		STR 	78H 			//0620 	10F8

		//;main.c: 86: LastMode=ModeType;
		LDR 	7AH, 0H 			//0621 	187A
		STR 	61H 			//0622 	10E1

		//;main.c: 87: ModeType=0;
		CLRF 	7AH 			//0623 	11FA

		//;main.c: 88: }
		LJUMP 	630H 			//0624 	3E30

		//;main.c: 89: else if(ManualType >= 3)
		LDWI 	3H 			//0625 	0003
		SUBWR 	78H, 0H 		//0626 	1278
		BTSS 	3H, 0H 			//0627 	2C03
		LJUMP 	62FH 			//0628 	3E2F

		//;main.c: 90: {
		//;main.c: 91: ManualType = 1; HeatType=1;
		CLRF 	78H 			//0629 	11F8
		INCR 	78H, 1H 		//062A 	1AF8
		MOVLB 	1H 			//062B 	1021
		CLRF 	62H 			//062C 	11E2
		INCR 	62H, 1H 		//062D 	1AE2

		//;main.c: 92: }
		LJUMP 	630H 			//062E 	3E30

		//;main.c: 93: else ManualType+=1;
		INCR 	78H, 1H 		//062F 	1AF8
		LDWI 	4H 			//0630 	0004

		//;main.c: 95: ModeType=0;
		CLRF 	7AH 			//0631 	11FA

		//;main.c: 97: DspIndex =DsManual;
		MOVLB 	1H 			//0632 	1021
		STR 	5EH 			//0633 	10DE
		RET 					//0634 	1008

		//;main.c: 56: if(SysFunFlg0.OneBits.b7)
		MOVLB 	0H 			//0635 	1020
		BTSS 	49H, 7H 		//0636 	2FC9
		RET 					//0637 	1008

		//;main.c: 57: {
		//;main.c: 58: if(PwrType==1)PwrType=2;
		DECRSZ 	7BH, 0H 		//0638 	1B7B
		LJUMP 	63CH 			//0639 	3E3C
		LDWI 	2H 			//063A 	0002
		STR 	7BH 			//063B 	10FB

		//;main.c: 60: if(ModeType==0)
		LDR 	7AH, 0H 			//063C 	187A
		BTSS 	3H, 2H 			//063D 	2D03
		LJUMP 	64BH 			//063E 	3E4B

		//;main.c: 61: {
		//;main.c: 62: if(LastMode==0)LastMode=1;
		MOVLB 	1H 			//063F 	1021
		LDR 	61H, 0H 			//0640 	1861
		BTSS 	3H, 2H 			//0641 	2D03
		LJUMP 	645H 			//0642 	3E45
		CLRF 	61H 			//0643 	11E1
		INCR 	61H, 1H 		//0644 	1AE1

		//;main.c: 63: ModeType=LastMode;
		LDR 	61H, 0H 			//0645 	1861
		STR 	7AH 			//0646 	10FA

		//;main.c: 65: LastManual=ManualType;
		LDR 	78H, 0H 			//0647 	1878
		STR 	60H 			//0648 	10E0

		//;main.c: 66: ManualType=0;
		CLRF 	78H 			//0649 	11F8

		//;main.c: 67: }
		LJUMP 	650H 			//064A 	3E50

		//;main.c: 68: else if(ModeType >= Mode3)
		LDWI 	3H 			//064B 	0003
		SUBWR 	7AH, 0H 		//064C 	127A
		BTSC 	3H, 0H 			//064D 	2803

		//;main.c: 69: {
		//;main.c: 70: ModeType = Mode1;
		CLRF 	7AH 			//064E 	11FA

		//;main.c: 72: else ModeType+=1;
		//;main.c: 71: }
		INCR 	7AH, 1H 		//064F 	1AFA

		//;main.c: 74: DspIndex =DsMode;
		MOVLB 	1H 			//0650 	1021
		CLRF 	5EH 			//0651 	11DE
		INCR 	5EH, 1H 		//0652 	1ADE
		RET 					//0653 	1008

		//;main.c: 14: SysFunFlg0.OneBits.b7 = ~SysFunFlg0.OneBits.b7;
		LDWI 	80H 			//0654 	0080
		MOVLB 	0H 			//0655 	1020
		XORWR 	49H, 1H 		//0656 	16C9

		//;main.c: 16: if(SysFunFlg0.OneBits.b7)
		BTSS 	49H, 7H 		//0657 	2FC9
		LJUMP 	675H 			//0658 	3E75

		//;main.c: 17: {
		//;main.c: 18: PwrType=2;
		LDWI 	2H 			//0659 	0002
		STR 	7BH 			//065A 	10FB

		//;main.c: 19: ModeType=2;
		STR 	7AH 			//065B 	10FA

		//;main.c: 20: HeatType=1;
		MOVLB 	1H 			//065C 	1021
		LDWI 	2H 			//065D 	0002
		CLRF 	62H 			//065E 	11E2
		INCR 	62H, 1H 		//065F 	1AE2

		//;main.c: 21: StrongType=2;
		STR 	79H 			//0660 	10F9

		//;main.c: 22: ManualType=0;
		CLRF 	78H 			//0661 	11F8

		//;main.c: 24: LastMode=ModeType;
		LDR 	7AH, 0H 			//0662 	187A
		STR 	61H 			//0663 	10E1

		//;main.c: 25: LastManual=ManualType;
		LDR 	78H, 0H 			//0664 	1878
		STR 	60H 			//0665 	10E0

		//;main.c: 26: if(SysFunFlg1.OneBits.b2)
		MOVLB 	0H 			//0666 	1020
		BTSS 	48H, 2H 		//0667 	2D48
		LJUMP 	66FH 			//0668 	3E6F

		//;main.c: 27: {
		//;main.c: 28: TimeType=88;
		LDWI 	58H 			//0669 	0058
		MOVLB 	1H 			//066A 	1021
		STR 	5FH 			//066B 	10DF

		//;main.c: 29: DspIndex =DsTime;
		LDWI 	5H 			//066C 	0005
		STR 	5EH 			//066D 	10DE

		//;main.c: 30: }
		LJUMP 	67FH 			//066E 	3E7F

		//;main.c: 31: else
		//;main.c: 32: {
		//;main.c: 33: TimeType=15;
		LDWI 	FH 			//066F 	000F
		MOVLB 	1H 			//0670 	1021
		STR 	5FH 			//0671 	10DF

		//;main.c: 34: DspIndex =DsMode;
		CLRF 	5EH 			//0672 	11DE
		INCR 	5EH, 1H 		//0673 	1ADE
		LJUMP 	67FH 			//0674 	3E7F

		//;main.c: 38: else
		//;main.c: 39: {
		//;main.c: 40: PwrType=0;
		CLRF 	7BH 			//0675 	11FB

		//;main.c: 41: ModeType=0;
		CLRF 	7AH 			//0676 	11FA

		//;main.c: 42: HeatType=0;
		MOVLB 	1H 			//0677 	1021
		CLRF 	62H 			//0678 	11E2

		//;main.c: 43: StrongType=0;
		CLRF 	79H 			//0679 	11F9

		//;main.c: 44: TimeType=0;
		CLRF 	5FH 			//067A 	11DF

		//;main.c: 45: ManualType=0;
		CLRF 	78H 			//067B 	11F8

		//;main.c: 46: DspIndex =DsSty;
		CLRF 	5EH 			//067C 	11DE

		//;main.c: 47: SysFunFlg1.OneBits.b2=0;
		MOVLB 	0H 			//067D 	1020
		BCR 	48H, 2H 			//067E 	2148

		//;main.c: 48: }
		//;main.c: 50: TimeMin=TimeType;
		MOVLB 	1H 			//067F 	1021
		LDR 	5FH, 0H 			//0680 	185F
		STR 	77H 			//0681 	10F7

		//;main.c: 51: TIME_INIT();
		LJUMP 	68FH 			//0682 	3E8F

		//;main.c: 117: if(SysFunFlg0.OneBits.b7)
		MOVLB 	0H 			//0683 	1020
		BTSS 	49H, 7H 		//0684 	2FC9
		RET 					//0685 	1008

		//;main.c: 118: {
		//;main.c: 121: if(StrongType >= Mode3)
		LDWI 	3H 			//0686 	0003
		SUBWR 	79H, 0H 		//0687 	1279
		BTSC 	3H, 0H 			//0688 	2803

		//;main.c: 122: {
		//;main.c: 123: StrongType = Mode1;
		CLRF 	79H 			//0689 	11F9
		LDWI 	2H 			//068A 	0002

		//;main.c: 125: else StrongType+=1;
		//;main.c: 124: }
		INCR 	79H, 1H 		//068B 	1AF9

		//;main.c: 127: DspIndex =DsStrong;
		MOVLB 	1H 			//068C 	1021
		STR 	5EH 			//068D 	10DE
		RET 					//068E 	1008

		//;CHIPINIT.C: 662: Time100Ms=0;
		MOVLB 	1H 			//068F 	1021
		CLRF 	5AH 			//0690 	11DA

		//;CHIPINIT.C: 663: TimeSec=0;
		CLRF 	59H 			//0691 	11D9
		RET 					//0692 	1008

		//;sub.c: 40: send_buf[cmd_pwr] =PwrType;
		LDR 	7BH, 0H 			//0693 	187B
		MOVLB 	1H 			//0694 	1021
		STR 	20H 			//0695 	10A0

		//;sub.c: 41: send_buf[cmd_mode] =ModeType;
		LDR 	7AH, 0H 			//0696 	187A
		STR 	21H 			//0697 	10A1

		//;sub.c: 42: send_buf[cmd_str] =StrongType;
		LDR 	79H, 0H 			//0698 	1879
		STR 	22H 			//0699 	10A2

		//;sub.c: 43: send_buf[cmd_heat] =HeatType;
		LDR 	62H, 0H 			//069A 	1862
		STR 	23H 			//069B 	10A3

		//;sub.c: 44: send_buf[cmd_Manual] =ManualType;
		LDR 	78H, 0H 			//069C 	1878
		STR 	24H 			//069D 	10A4

		//;sub.c: 45: send_buf[cmd_Time] =TimeMin;
		LDR 	77H, 0H 			//069E 	1877
		STR 	25H 			//069F 	10A5

		//;sub.c: 46: SysFunFlg0.OneBits.b6 = 1;
		MOVLB 	0H 			//06A0 	1020
		BSR 	49H, 6H 			//06A1 	2749

		//;sub.c: 47: UartSetEmptyInt(1);
		LDWI 	1H 			//06A2 	0001
		LJUMP 	6A4H 			//06A3 	3EA4
		STR 	4CH 			//06A4 	10CC

		//;uart.c: 46: URTE = value;
		BTSS 	4CH, 0H 		//06A5 	2C4C
		LJUMP 	6AAH 			//06A6 	3EAA
		MOVLB 	9H 			//06A7 	1029
		BSR 	EH, 1H 			//06A8 	248E
		RET 					//06A9 	1008
		MOVLB 	9H 			//06AA 	1029
		BCR 	EH, 1H 			//06AB 	208E
		RET 					//06AC 	1008

		//;CHIPINIT.C: 91: OSCCON = 0B01100001;
		LDWI 	61H 			//06AD 	0061
		MOVLB 	1H 			//06AE 	1021
		STR 	19H 			//06AF 	1099

		//;CHIPINIT.C: 102: INTCON = 0B00000000;
		CLRF 	BH 			//06B0 	118B

		//;CHIPINIT.C: 104: PORTA = 0B00000000;
		MOVLB 	0H 			//06B1 	1020
		CLRF 	CH 			//06B2 	118C

		//;CHIPINIT.C: 105: TRISA = 0B00000000;
		MOVLB 	1H 			//06B3 	1021
		CLRF 	CH 			//06B4 	118C

		//;CHIPINIT.C: 106: PORTB = 0B00000000;
		MOVLB 	0H 			//06B5 	1020
		CLRF 	DH 			//06B6 	118D

		//;CHIPINIT.C: 107: TRISB = 0B00010000;
		LDWI 	10H 			//06B7 	0010
		MOVLB 	1H 			//06B8 	1021
		STR 	DH 			//06B9 	108D

		//;CHIPINIT.C: 108: PORTC = 0B00000000;
		MOVLB 	0H 			//06BA 	1020
		CLRF 	EH 			//06BB 	118E

		//;CHIPINIT.C: 109: TRISC = 0B00000000;
		MOVLB 	1H 			//06BC 	1021
		CLRF 	EH 			//06BD 	118E

		//;CHIPINIT.C: 110: PORTD = 0B00000000;
		MOVLB 	0H 			//06BE 	1020
		CLRF 	FH 			//06BF 	118F

		//;CHIPINIT.C: 111: TRISD = 0B00000000;
		MOVLB 	1H 			//06C0 	1021
		CLRF 	FH 			//06C1 	118F

		//;CHIPINIT.C: 113: WPUA = 0B00000000;
		MOVLB 	3H 			//06C2 	1023
		CLRF 	CH 			//06C3 	118C

		//;CHIPINIT.C: 114: WPUB = 0B00010000;
		STR 	DH 			//06C4 	108D

		//;CHIPINIT.C: 115: WPUC = 0B00000000;
		CLRF 	EH 			//06C5 	118E

		//;CHIPINIT.C: 116: WPUD = 0B00000000;
		CLRF 	FH 			//06C6 	118F

		//;CHIPINIT.C: 118: WPDA = 0B00000000;
		MOVLB 	4H 			//06C7 	1024
		CLRF 	CH 			//06C8 	118C

		//;CHIPINIT.C: 119: WPDB = 0B00000000;
		CLRF 	DH 			//06C9 	118D

		//;CHIPINIT.C: 120: WPDC = 0B00000000;
		CLRF 	EH 			//06CA 	118E

		//;CHIPINIT.C: 121: WPDD = 0B00000000;
		CLRF 	FH 			//06CB 	118F

		//;CHIPINIT.C: 123: PSRC0 = 0B11111111;
		LDWI 	FFH 			//06CC 	00FF
		MOVLB 	2H 			//06CD 	1022
		STR 	1AH 			//06CE 	109A

		//;CHIPINIT.C: 127: PSRC1 = 0B11111111;
		STR 	1BH 			//06CF 	109B

		//;CHIPINIT.C: 131: PSINK0 = 0B11111111;
		MOVLB 	3H 			//06D0 	1023
		STR 	1AH 			//06D1 	109A

		//;CHIPINIT.C: 132: PSINK1 = 0B11111111;
		STR 	1BH 			//06D2 	109B

		//;CHIPINIT.C: 133: PSINK2 = 0B11111111;
		STR 	1CH 			//06D3 	109C

		//;CHIPINIT.C: 134: PSINK3 = 0B11111111;
		STR 	1DH 			//06D4 	109D

		//;CHIPINIT.C: 136: ANSELA = 0B00000000;
		CLRF 	17H 			//06D5 	1197
		RET 					//06D6 	1008

		//;CHIPINIT.C: 501: PCKEN |=0B00001000;
		MOVLB 	1H 			//06D7 	1021
		BSR 	1AH, 3H 			//06D8 	259A

		//;CHIPINIT.C: 505: TIM4CR1 =0B00000101;
		LDWI 	5H 			//06D9 	0005
		MOVLB 	2H 			//06DA 	1022
		STR 	11H 			//06DB 	1091

		//;CHIPINIT.C: 536: TIM4IER =0B00000001;
		LDWI 	1H 			//06DC 	0001
		STR 	12H 			//06DD 	1092

		//;CHIPINIT.C: 539: TIM4SR =0B00000000;
		CLRF 	13H 			//06DE 	1193

		//;CHIPINIT.C: 548: TIM4EGR =0B00000000;
		CLRF 	14H 			//06DF 	1194

		//;CHIPINIT.C: 553: TIM4CNTR=0;
		CLRF 	15H 			//06E0 	1195

		//;CHIPINIT.C: 555: TIM4PSCR=0B00000110;
		LDWI 	6H 			//06E1 	0006
		STR 	16H 			//06E2 	1096

		//;CHIPINIT.C: 559: TIM4ARR =124;
		LDWI 	7CH 			//06E3 	007C
		STR 	17H 			//06E4 	1097

		//;CHIPINIT.C: 560: TIM4ARR =22;
		LDWI 	16H 			//06E5 	0016
		STR 	17H 			//06E6 	1097
		RET 					//06E7 	1008
		MOVLB 	1H 			//06E8 	1021
		BSR 	DH, 7H 			//06E9 	278D
		BSR 	DH, 2H 			//06EA 	250D
		BSR 	EH, 4H 			//06EB 	260E
		BSR 	EH, 5H 			//06EC 	268E
		BSR 	EH, 6H 			//06ED 	270E
		BSR 	EH, 7H 			//06EE 	278E
		LDWI 	2H 			//06EF 	0002
		CLRF 	4BH 			//06F0 	11CB
		MOVLB 	0H 			//06F1 	1020
		STR 	3DH 			//06F2 	10BD
		LDWI 	90H 			//06F3 	0090
		MOVLB 	1H 			//06F4 	1021
		STR 	69H 			//06F5 	10E9
		LDWI 	1H 			//06F6 	0001
		STR 	6AH 			//06F7 	10EA
		LDWI 	58H 			//06F8 	0058
		STR 	67H 			//06F9 	10E7
		LDWI 	2H 			//06FA 	0002
		STR 	68H 			//06FB 	10E8
		LDWI 	1H 			//06FC 	0001
		CLRF 	4EH 			//06FD 	11CE
		MOVLB 	0H 			//06FE 	1020
		STR 	3EH 			//06FF 	10BE
		LDWI 	B8H 			//0700 	00B8
		STR 	4H 			//0701 	1084
		LDWI 	98H 			//0702 	0098
		STR 	5H 			//0703 	1085
		LDR 	0H, 0H 			//0704 	1800
		STR 	3EH 			//0705 	10BE
		LDWI 	B4H 			//0706 	00B4
		STR 	4H 			//0707 	1084
		LDWI 	98H 			//0708 	0098
		STR 	5H 			//0709 	1085
		LDR 	0H, 0H 			//070A 	1800
		STR 	3EH 			//070B 	10BE
		CLRF 	3EH 			//070C 	11BE
		MOVLB 	1H 			//070D 	1021
		LDR 	41H, 0H 			//070E 	1841
		MOVLB 	0H 			//070F 	1020
		STR 	3EH 			//0710 	10BE
		MOVLB 	1H 			//0711 	1021
		LDR 	3FH, 0H 			//0712 	183F
		MOVLB 	0H 			//0713 	1020
		STR 	3EH 			//0714 	10BE
		LDWI 	4H 			//0715 	0004
		MOVLB 	1H 			//0716 	1021
		STR 	3DH 			//0717 	10BD
		CLRF 	3EH 			//0718 	11BE
		MOVLB 	0H 			//0719 	1020
		CLRF 	4BH 			//071A 	11CB
		CLRF 	3FH 			//071B 	11BF
		CLRF 	3EH 			//071C 	11BE
		LDWI 	FH 			//071D 	000F
		SUBWR 	3EH, 0H 		//071E 	123E
		BTSC 	3H, 0H 			//071F 	2803
		LJUMP 	73CH 			//0720 	3F3C
		LDWI 	80H 			//0721 	0080
		STR 	4CH 			//0722 	10CC
		LDWI 	78H 			//0723 	0078
		STR 	4DH 			//0724 	10CD
		INCR 	3EH, 0H 		//0725 	1A3E
		LJUMP 	729H 			//0726 	3F29
		LSRF 	4DH, 1H 		//0727 	06CD
		RRR 	4CH, 1H 			//0728 	1CCC
		DECRSZ 	9H, 1H 		//0729 	1B89
		LJUMP 	727H 			//072A 	3F27
		BTSS 	4CH, 0H 		//072B 	2C4C
		LJUMP 	737H 			//072C 	3F37
		LDR 	4BH, 0H 			//072D 	184B
		STR 	47H 			//072E 	10C7
		LDR 	4BH, 0H 			//072F 	184B
		ADDWI 	3EH 			//0730 	0E3E
		STR 	6H 			//0731 	1086
		LDWI 	1H 			//0732 	0001
		STR 	7H 			//0733 	1087
		LDR 	3EH, 0H 			//0734 	183E
		STR 	1H 			//0735 	1081
		INCR 	4BH, 1H 		//0736 	1ACB
		INCR 	3EH, 1H 		//0737 	1ABE
		LDWI 	FH 			//0738 	000F
		SUBWR 	3EH, 0H 		//0739 	123E
		BTSS 	3H, 0H 			//073A 	2C03
		LJUMP 	721H 			//073B 	3F21
		MOVLB 	2H 			//073C 	1022
		LDR 	3EH, 0H 			//073D 	183E
		MOVLB 	0H 			//073E 	1020
		STR 	4BH 			//073F 	10CB
		LDWI 	6H 			//0740 	0006
		MOVLB 	1H 			//0741 	1021
		STR 	65H 			//0742 	10E5
		CLRF 	66H 			//0743 	11E6
		LDR 	66H, 0H 			//0744 	1866
		STR 	64H 			//0745 	10E4
		LDR 	65H, 0H 			//0746 	1865
		STR 	63H 			//0747 	10E3
		RET 					//0748 	1008

		//;CHIPINIT.C: 594: PCKEN |=0B00100000;
		MOVLB 	1H 			//0749 	1021
		BSR 	1AH, 5H 			//074A 	269A

		//;CHIPINIT.C: 596: URIER =0B00000000;
		MOVLB 	9H 			//074B 	1029
		CLRF 	EH 			//074C 	118E

		//;CHIPINIT.C: 597: URLCR =0B00000001;
		LDWI 	1H 			//074D 	0001
		STR 	FH 			//074E 	108F

		//;CHIPINIT.C: 598: URMCR =0B00011000;
		LDWI 	18H 			//074F 	0018
		STR 	11H 			//0750 	1091

		//;CHIPINIT.C: 601: URDLL =52;
		LDWI 	34H 			//0751 	0034
		STR 	14H 			//0752 	1094

		//;CHIPINIT.C: 602: URDLH =0;
		CLRF 	15H 			//0753 	1195

		//;CHIPINIT.C: 603: TCF=1;
		BSR 	1CH, 0H 			//0754 	241C
		RET 					//0755 	1008
		CLRF 	51H 			//0756 	11D1
		BTSS 	4DH, 7H 		//0757 	2FCD
		LJUMP 	760H 			//0758 	3F60
		COMR 	4CH, 1H 		//0759 	19CC
		COMR 	4DH, 1H 		//075A 	19CD
		INCR 	4CH, 1H 		//075B 	1ACC
		BTSC 	3H, 2H 			//075C 	2903
		INCR 	4DH, 1H 		//075D 	1ACD
		CLRF 	51H 			//075E 	11D1
		INCR 	51H, 1H 		//075F 	1AD1
		BTSS 	4FH, 7H 		//0760 	2FCF
		LJUMP 	769H 			//0761 	3F69
		COMR 	4EH, 1H 		//0762 	19CE
		COMR 	4FH, 1H 		//0763 	19CF
		INCR 	4EH, 1H 		//0764 	1ACE
		BTSC 	3H, 2H 			//0765 	2903
		INCR 	4FH, 1H 		//0766 	1ACF
		LDWI 	1H 			//0767 	0001
		XORWR 	51H, 1H 		//0768 	16D1
		CLRF 	52H 			//0769 	11D2
		CLRF 	53H 			//076A 	11D3
		LDR 	4CH, 0H 			//076B 	184C
		IORWR 	4DH, 0H 		//076C 	144D
		BTSC 	3H, 2H 			//076D 	2903
		LJUMP 	789H 			//076E 	3F89
		CLRF 	50H 			//076F 	11D0
		INCR 	50H, 1H 		//0770 	1AD0
		BTSC 	4DH, 7H 		//0771 	2BCD
		LJUMP 	776H 			//0772 	3F76
		LSLF 	4CH, 1H 		//0773 	05CC
		RLR 	4DH, 1H 			//0774 	1DCD
		LJUMP 	770H 			//0775 	3F70
		LSLF 	52H, 1H 		//0776 	05D2
		RLR 	53H, 1H 			//0777 	1DD3
		LDR 	4DH, 0H 			//0778 	184D
		SUBWR 	4FH, 0H 		//0779 	124F
		BTSS 	3H, 2H 			//077A 	2D03
		LJUMP 	77EH 			//077B 	3F7E
		LDR 	4CH, 0H 			//077C 	184C
		SUBWR 	4EH, 0H 		//077D 	124E
		BTSS 	3H, 0H 			//077E 	2C03
		LJUMP 	785H 			//077F 	3F85
		LDR 	4CH, 0H 			//0780 	184C
		SUBWR 	4EH, 1H 		//0781 	12CE
		LDR 	4DH, 0H 			//0782 	184D
		SUBWFB 	4FH, 1H 		//0783 	0BCF
		BSR 	52H, 0H 			//0784 	2452
		LSRF 	4DH, 1H 		//0785 	06CD
		RRR 	4CH, 1H 			//0786 	1CCC
		DECRSZ 	50H, 1H 		//0787 	1BD0
		LJUMP 	776H 			//0788 	3F76
		LDR 	51H, 0H 			//0789 	1851
		BTSC 	3H, 2H 			//078A 	2903
		LJUMP 	791H 			//078B 	3F91
		COMR 	52H, 1H 		//078C 	19D2
		COMR 	53H, 1H 		//078D 	19D3
		INCR 	52H, 1H 		//078E 	1AD2
		BTSC 	3H, 2H 			//078F 	2903
		INCR 	53H, 1H 		//0790 	1AD3
		LDR 	53H, 0H 			//0791 	1853
		STR 	4DH 			//0792 	10CD
		LDR 	52H, 0H 			//0793 	1852
		STR 	4CH 			//0794 	10CC
		RET 					//0795 	1008

		//;rx.c: 173: if(RFs.RecBufFull==0)return;
		MOVLB 	1H 			//0796 	1021
		LDR 	2BH, 0H 			//0797 	182B
		BTSC 	3H, 2H 			//0798 	2903
		RET 					//0799 	1008

		//;rx.c: 174: RFs.RecBufFull=0;
		CLRF 	2BH 			//079A 	11AB

		//;rx.c: 176: if(buf_rec[0]!=buf_rec[1])return;
		LDR 	2DH, 0H 			//079B 	182D
		XORWR 	2CH, 0H 		//079C 	162C
		BTSS 	3H, 2H 			//079D 	2D03
		RET 					//079E 	1008

		//;rx.c: 178: if(!CheckRfCmd(buf_rec[2]))return;
		LDR 	2EH, 0H 			//079F 	182E
		LCALL 	7A9H 			//07A0 	37A9
		MOVLP 	0H 			//07A1 	0180
		XORWI 	0H 			//07A2 	0A00
		BTSC 	3H, 2H 			//07A3 	2903
		RET 					//07A4 	1008

		//;rx.c: 180: RxData=buf_rec[2];
		MOVLB 	1H 			//07A5 	1021
		LDR 	2EH, 0H 			//07A6 	182E
		STR 	58H 			//07A7 	10D8
		RET 					//07A8 	1008
		MOVLB 	0H 			//07A9 	1020
		STR 	4CH 			//07AA 	10CC

		//;rx.c: 29: switch( rfcmd)
		LJUMP 	7AEH 			//07AB 	3FAE

		//;rx.c: 32: case 0X08:
		//;rx.c: 33: case 0X0E:
		//;rx.c: 34: case 0X0C:
		//;rx.c: 35: case 0X0A:
		//;rx.c: 36: return 1;
		RETW 	1H 			//07AC 	0401

		//;rx.c: 38: return 0;
		RETW 	0H 			//07AD 	0400
		LDR 	4CH, 0H 			//07AE 	184C
		XORWI 	1H 			//07AF 	0A01
		BTSC 	3H, 2H 			//07B0 	2903
		LJUMP 	7ACH 			//07B1 	3FAC
		XORWI 	9H 			//07B2 	0A09
		BTSC 	3H, 2H 			//07B3 	2903
		LJUMP 	7ACH 			//07B4 	3FAC
		XORWI 	2H 			//07B5 	0A02
		BTSC 	3H, 2H 			//07B6 	2903
		LJUMP 	7ACH 			//07B7 	3FAC
		XORWI 	6H 			//07B8 	0A06
		BTSC 	3H, 2H 			//07B9 	2903
		LJUMP 	7ACH 			//07BA 	3FAC
		XORWI 	2H 			//07BB 	0A02
		BTSC 	3H, 2H 			//07BC 	2903
		LJUMP 	7ACH 			//07BD 	3FAC
		LJUMP 	7ADH 			//07BE 	3FAD
		RET 					//07BF 	1008

		//;CHIPINIT.C: 8: TimeUs++;
		MOVLB 	1H 			//07C0 	1021
		INCR 	5DH, 1H 		//07C1 	1ADD

		//;CHIPINIT.C: 11: if(TimeUs<20)return;
		LDWI 	14H 			//07C2 	0014
		SUBWR 	5DH, 0H 		//07C3 	125D
		BTSS 	3H, 0H 			//07C4 	2C03
		RET 					//07C5 	1008

		//;CHIPINIT.C: 12: TimeUs=0;Time2Ms++;
		CLRF 	5DH 			//07C6 	11DD
		INCR 	5CH, 1H 		//07C7 	1ADC

		//;CHIPINIT.C: 13: SysFunFlg0.OneBits.b1=1;
		MOVLB 	0H 			//07C8 	1020
		BSR 	49H, 1H 			//07C9 	24C9

		//;CHIPINIT.C: 16: if(Time2Ms<5)return;
		LDWI 	5H 			//07CA 	0005
		MOVLB 	1H 			//07CB 	1021
		SUBWR 	5CH, 0H 		//07CC 	125C
		BTSS 	3H, 0H 			//07CD 	2C03
		RET 					//07CE 	1008

		//;CHIPINIT.C: 17: Time2Ms=0;Time10Ms++;
		CLRF 	5CH 			//07CF 	11DC
		INCR 	5BH, 1H 		//07D0 	1ADB

		//;CHIPINIT.C: 19: SysFunFlg0.OneBits.b0=1;
		MOVLB 	0H 			//07D1 	1020
		BSR 	49H, 0H 			//07D2 	2449

		//;CHIPINIT.C: 22: if(Time10Ms<10)return;
		LDWI 	AH 			//07D3 	000A
		MOVLB 	1H 			//07D4 	1021
		SUBWR 	5BH, 0H 		//07D5 	125B
		BTSS 	3H, 0H 			//07D6 	2C03
		RET 					//07D7 	1008

		//;CHIPINIT.C: 23: Time10Ms=0;Time100Ms++;
		CLRF 	5BH 			//07D8 	11DB
		INCR 	5AH, 1H 		//07D9 	1ADA

		//;CHIPINIT.C: 28: if(Time100Ms<10)return;
		LDWI 	AH 			//07DA 	000A
		SUBWR 	5AH, 0H 		//07DB 	125A
		BTSS 	3H, 0H 			//07DC 	2C03
		RET 					//07DD 	1008

		//;CHIPINIT.C: 29: Time100Ms=0;TimeSec++;
		CLRF 	5AH 			//07DE 	11DA
		INCR 	59H, 1H 		//07DF 	1AD9

		//;CHIPINIT.C: 34: if(TimeSec<60)return;
		LDWI 	3CH 			//07E0 	003C
		SUBWR 	59H, 0H 		//07E1 	1259
		BTSS 	3H, 0H 			//07E2 	2C03
		RET 					//07E3 	1008

		//;CHIPINIT.C: 35: TimeSec=0;
		CLRF 	59H 			//07E4 	11D9

		//;CHIPINIT.C: 37: if((SysFunFlg0.OneBits.b7)&&(SysFunFlg1.OneBits.b2==0))
		MOVLB 	0H 			//07E5 	1020
		BTSC 	49H, 7H 		//07E6 	2BC9
		BTSC 	48H, 2H 		//07E7 	2948
		RET 					//07E8 	1008

		//;CHIPINIT.C: 38: {
		//;CHIPINIT.C: 39: if(TimeMin)TimeMin--;
		LDR 	77H, 0H 			//07E9 	1877
		BTSS 	3H, 2H 			//07EA 	2D03
		DECR 	77H, 1H 		//07EB 	13F7
		RET 					//07EC 	1008
		MOVLB 	0H 			//07ED 	1020
		STR 	4CH 			//07EE 	10CC
		MOVLB 	7H 			//07EF 	1027
		STR 	12H 			//07F0 	1092
		MOVLB 	0H 			//07F1 	1020
		LDR 	4CH, 0H 			//07F2 	184C
		MOVLB 	7H 			//07F3 	1027
		STR 	13H 			//07F4 	1093
		MOVLB 	0H 			//07F5 	1020
		LDR 	4CH, 0H 			//07F6 	184C
		MOVLB 	7H 			//07F7 	1027
		STR 	15H 			//07F8 	1095
		LDWI 	10H 			//07F9 	0010
		STR 	17H 			//07FA 	1097
		ORG		07FBH
		LDWI 	18H 			//07FB 	0018
		STR 	19H 			//07FC 	1099
		STR 	1DH 			//07FD 	109D
		RET 					//07FE 	1008
		ORG		0800H
		MOVLP 	16H 			//0800 	0196
		LJUMP 	6C7H 			//0801 	3EC7
		MOVLP 	15H 			//0802 	0195
		LJUMP 	5BEH 			//0803 	3DBE
		MOVLP 	15H 			//0804 	0195
		LJUMP 	5C8H 			//0805 	3DC8
		MOVLP 	15H 			//0806 	0195
		LJUMP 	5E7H 			//0807 	3DE7
		MOVLP 	16H 			//0808 	0196
		LJUMP 	606H 			//0809 	3E06
		MOVLP 	16H 			//080A 	0196
		LJUMP 	61EH 			//080B 	3E1E
		MOVLP 	16H 			//080C 	0196
		LJUMP 	63DH 			//080D 	3E3D
		MOVLP 	16H 			//080E 	0196
		LJUMP 	663H 			//080F 	3E63
		MOVLP 	16H 			//0810 	0196
		LJUMP 	674H 			//0811 	3E74
		MOVLP 	16H 			//0812 	0196
		LJUMP 	6A1H 			//0813 	3EA1
		MOVLP 	16H 			//0814 	0196
		LJUMP 	6EDH 			//0815 	3EED
		MOVLP 	16H 			//0816 	0196
		LJUMP 	6F0H 			//0817 	3EF0
		MOVLP 	17H 			//0818 	0197
		LJUMP 	70FH 			//0819 	3F0F
		MOVLP 	17H 			//081A 	0197
		LJUMP 	72EH 			//081B 	3F2E
		MOVLP 	17H 			//081C 	0197
		LJUMP 	74DH 			//081D 	3F4D
		MOVLP 	17H 			//081E 	0197
		LJUMP 	75EH 			//081F 	3F5E
		MOVLP 	AH 			//0820 	018A
		LJUMP 	276H 			//0821 	3A76
		MOVLP 	AH 			//0822 	018A
		LJUMP 	26FH 			//0823 	3A6F
		MOVLP 	AH 			//0824 	018A
		LJUMP 	214H 			//0825 	3A14
		MOVLP 	AH 			//0826 	018A
		LJUMP 	226H 			//0827 	3A26
		MOVLP 	AH 			//0828 	018A
		LJUMP 	238H 			//0829 	3A38
		MOVLP 	AH 			//082A 	018A
		LJUMP 	244H 			//082B 	3A44
		MOVLP 	17H 			//082C 	0197
		LJUMP 	7B6H 			//082D 	3FB6
		MOVLP 	17H 			//082E 	0197
		LJUMP 	7B8H 			//082F 	3FB8
		MOVLP 	17H 			//0830 	0197
		LJUMP 	7BAH 			//0831 	3FBA
		MOVLP 	17H 			//0832 	0197
		LJUMP 	7BCH 			//0833 	3FBC
		MOVLP 	17H 			//0834 	0197
		LJUMP 	7BEH 			//0835 	3FBE
		MOVLP 	17H 			//0836 	0197
		LJUMP 	7C0H 			//0837 	3FC0
		MOVLP 	17H 			//0838 	0197
		LJUMP 	782H 			//0839 	3F82
		MOVLP 	17H 			//083A 	0197
		LJUMP 	784H 			//083B 	3F84
		MOVLP 	17H 			//083C 	0197
		LJUMP 	786H 			//083D 	3F86
		MOVLP 	17H 			//083E 	0197
		LJUMP 	788H 			//083F 	3F88
		ORG		0840H
		MOVLP 	17H 			//0840 	0197
		LJUMP 	78AH 			//0841 	3F8A
		MOVLP 	17H 			//0842 	0197
		LJUMP 	78CH 			//0843 	3F8C
		ORG		09E6H
		CLRWDT 			//09E6 	1064
		LDWI 	1H 			//09E7 	0001
		CLRF 	0H 			//09E8 	1180
		ADDFSR 	0H, 1H 		//09E9 	0101
		SUBWR 	7EH, 1H 		//09EA 	12FE
		LDWI 	0H 			//09EB 	0000
		SUBWFB 	7FH, 1H 		//09EC 	0BFF
		LDR 	7FH, 0H 			//09ED 	187F
		IORWR 	7EH, 0H 		//09EE 	147E
		BTSC 	3H, 2H 			//09EF 	2903
		RETW 	0H 			//09F0 	0400
		LJUMP 	1E7H 			//09F1 	39E7

		//;uart.c: 29: static unsigned char ByteNum;
		//;uart.c: 31: if(ByteNum<6)
		LDWI 	6H 			//09F2 	0006
		MOVLB 	1H 			//09F3 	1021
		SUBWR 	52H, 0H 		//09F4 	1252
		BTSC 	3H, 0H 			//09F5 	2803
		LJUMP 	201H 			//09F6 	3A01

		//;uart.c: 32: {
		//;uart.c: 33: URDATAL =send_buf[ByteNum++];
		LDR 	52H, 0H 			//09F7 	1852
		ADDWI 	A0H 			//09F8 	0EA0
		STR 	6H 			//09F9 	1086
		CLRF 	7H 			//09FA 	1187
		LDR 	1H, 0H 			//09FB 	1801
		MOVLB 	9H 			//09FC 	1029
		STR 	CH 			//09FD 	108C
		MOVLB 	1H 			//09FE 	1021
		INCR 	52H, 1H 		//09FF 	1AD2

		//;uart.c: 34: }
		RET 					//0A00 	1008

		//;uart.c: 35: else
		//;uart.c: 36: {
		//;uart.c: 37: URTE=0;
		MOVLB 	9H 			//0A01 	1029
		BCR 	EH, 1H 			//0A02 	208E

		//;uart.c: 38: UartSetEmptyInt(0);
		LDWI 	0H 			//0A03 	0000
		LCALL 	20AH 			//0A04 	320A

		//;uart.c: 39: ByteNum = 0;
		MOVLB 	1H 			//0A05 	1021
		CLRF 	52H 			//0A06 	11D2

		//;uart.c: 40: SysFunFlg0.OneBits.b6 = 0;
		MOVLB 	0H 			//0A07 	1020
		BCR 	49H, 6H 			//0A08 	2349
		RET 					//0A09 	1008
		STR 	70H 			//0A0A 	10F0

		//;uart.c: 46: URTE = value;
		BTSS 	70H, 0H 		//0A0B 	2C70
		LJUMP 	210H 			//0A0C 	3A10
		MOVLB 	9H 			//0A0D 	1029
		BSR 	EH, 1H 			//0A0E 	248E
		RET 					//0A0F 	1008
		MOVLB 	9H 			//0A10 	1029
		BCR 	EH, 1H 			//0A11 	208E
		RET 					//0A12 	1008

		//;rx.c: 56: switch(RFs.RFsp)
		LJUMP 	27DH 			//0A13 	3A7D

		//;rx.c: 57: {
		//;rx.c: 58: case synH:
		//;rx.c: 59: if(PB4)
		MOVLB 	0H 			//0A14 	1020
		BTSS 	DH, 4H 			//0A15 	2E0D
		LJUMP 	21BH 			//0A16 	3A1B

		//;rx.c: 60: {
		//;rx.c: 61: RFs.tRFH++;
		MOVLB 	1H 			//0A17 	1021
		INCR 	27H, 1H 		//0A18 	1AA7

		//;rx.c: 62: if(RFs.tRFH>6)
		LDWI 	7H 			//0A19 	0007

		//;rx.c: 63: {
		//;rx.c: 64: RFs.RFsp=rfReset;
		//;rx.c: 65: break;
		LJUMP 	289H 			//0A1A 	3A89

		//;rx.c: 69: else
		//;rx.c: 70: {
		//;rx.c: 71: if(RFs.tRFH<2)
		LDWI 	2H 			//0A1B 	0002
		MOVLB 	1H 			//0A1C 	1021
		SUBWR 	27H, 0H 		//0A1D 	1227
		BTSC 	3H, 0H 			//0A1E 	2803
		LJUMP 	222H 			//0A1F 	3A22

		//;rx.c: 72: {
		//;rx.c: 73: RFs.RFsp=rfReset;
		CLRF 	26H 			//0A20 	11A6

		//;rx.c: 74: break;
		RET 					//0A21 	1008

		//;rx.c: 75: }
		//;rx.c: 76: RFs.tRFL=0;
		CLRF 	28H 			//0A22 	11A8

		//;rx.c: 77: RFs.RFsp=synL;
		LDWI 	3H 			//0A23 	0003
		STR 	26H 			//0A24 	10A6

		//;rx.c: 78: break;
		RET 					//0A25 	1008

		//;rx.c: 79: }
		//;rx.c: 80: case synL:
		//;rx.c: 81: if(PB4==0)
		MOVLB 	0H 			//0A26 	1020
		BTSC 	DH, 4H 			//0A27 	2A0D
		LJUMP 	22DH 			//0A28 	3A2D

		//;rx.c: 82: {
		//;rx.c: 83: RFs.tRFL++;
		MOVLB 	1H 			//0A29 	1021
		INCR 	28H, 1H 		//0A2A 	1AA8

		//;rx.c: 84: if(RFs.tRFL>135)
		LDWI 	88H 			//0A2B 	0088

		//;rx.c: 85: {
		//;rx.c: 86: RFs.RFsp=rfReset;
		//;rx.c: 87: break;
		LJUMP 	28DH 			//0A2C 	3A8D

		//;rx.c: 91: else
		//;rx.c: 92: {
		//;rx.c: 93: if(RFs.tRFL<105)
		LDWI 	69H 			//0A2D 	0069
		MOVLB 	1H 			//0A2E 	1021
		SUBWR 	28H, 0H 		//0A2F 	1228
		BTSC 	3H, 0H 			//0A30 	2803
		LJUMP 	234H 			//0A31 	3A34

		//;rx.c: 94: {
		//;rx.c: 95: RFs.RFsp=rfReset;
		CLRF 	26H 			//0A32 	11A6

		//;rx.c: 96: break;
		RET 					//0A33 	1008

		//;rx.c: 97: }
		//;rx.c: 98: RFs.tRFH=0;
		CLRF 	27H 			//0A34 	11A7

		//;rx.c: 99: RFs.RFsp=rfH;
		LDWI 	4H 			//0A35 	0004
		STR 	26H 			//0A36 	10A6

		//;rx.c: 100: break;
		RET 					//0A37 	1008

		//;rx.c: 101: }
		//;rx.c: 102: case rfH:
		//;rx.c: 103: if(PB4)
		MOVLB 	0H 			//0A38 	1020
		BTSS 	DH, 4H 			//0A39 	2E0D
		LJUMP 	23FH 			//0A3A 	3A3F

		//;rx.c: 104: {
		//;rx.c: 105: RFs.tRFH++;
		MOVLB 	1H 			//0A3B 	1021
		INCR 	27H, 1H 		//0A3C 	1AA7

		//;rx.c: 106: if(RFs.tRFH>16)
		LDWI 	11H 			//0A3D 	0011

		//;rx.c: 107: {
		//;rx.c: 108: RFs.RFsp=rfReset;
		//;rx.c: 109: break;
		LJUMP 	289H 			//0A3E 	3A89

		//;rx.c: 113: else
		//;rx.c: 114: {
		//;rx.c: 115: RFs.tRFL=0;
		MOVLB 	1H 			//0A3F 	1021
		CLRF 	28H 			//0A40 	11A8

		//;rx.c: 116: RFs.RFsp=rfL;
		LDWI 	5H 			//0A41 	0005
		STR 	26H 			//0A42 	10A6

		//;rx.c: 117: break;
		RET 					//0A43 	1008

		//;rx.c: 118: }
		//;rx.c: 119: case rfL:
		//;rx.c: 120: if(PB4==0)
		MOVLB 	0H 			//0A44 	1020
		BTSC 	DH, 4H 			//0A45 	2A0D
		LJUMP 	24BH 			//0A46 	3A4B

		//;rx.c: 121: {
		//;rx.c: 122: RFs.tRFL++;
		MOVLB 	1H 			//0A47 	1021
		INCR 	28H, 1H 		//0A48 	1AA8

		//;rx.c: 123: if(RFs.tRFL>16)
		LDWI 	11H 			//0A49 	0011

		//;rx.c: 124: {
		//;rx.c: 125: RFs.RFsp=rfReset;
		//;rx.c: 126: break;
		LJUMP 	28DH 			//0A4A 	3A8D

		//;rx.c: 130: else
		//;rx.c: 131: {
		//;rx.c: 132: buf_rec[RFs.Bptr]<<=1;
		MOVLB 	1H 			//0A4B 	1021
		LDR 	2AH, 0H 			//0A4C 	182A
		ADDWI 	ACH 			//0A4D 	0EAC
		STR 	6H 			//0A4E 	1086
		CLRF 	7H 			//0A4F 	1187
		LSLF 	1H, 1H 			//0A50 	0581

		//;rx.c: 133: if(RFs.tRFH>=RFs.tRFL)
		LDR 	28H, 0H 			//0A51 	1828
		SUBWR 	27H, 0H 		//0A52 	1227
		BTSS 	3H, 0H 			//0A53 	2C03
		LJUMP 	259H 			//0A54 	3A59

		//;rx.c: 134: {
		//;rx.c: 135: buf_rec[RFs.Bptr]|=1;
		LDR 	2AH, 0H 			//0A55 	182A
		ADDWI 	ACH 			//0A56 	0EAC
		STR 	6H 			//0A57 	1086
		BSR 	1H, 0H 			//0A58 	2401

		//;rx.c: 136: }
		//;rx.c: 137: RFs.tRFH=0;
		CLRF 	27H 			//0A59 	11A7

		//;rx.c: 138: RFs.tRFL=0;
		CLRF 	28H 			//0A5A 	11A8

		//;rx.c: 139: if (( ++RFs.BitCount & 7) == 0)
		LDWI 	A9H 			//0A5B 	00A9
		STR 	6H 			//0A5C 	1086
		CLRF 	7H 			//0A5D 	1187
		MOVIW 	0H[1] 			//0A5E 	0F40
		ADDWI 	1H 			//0A5F 	0E01
		MOVWI 	0H[1] 			//0A60 	0FC0
		ANDWI 	7H 			//0A61 	0907
		BTSC 	3H, 2H 			//0A62 	2903

		//;rx.c: 140: {
		//;rx.c: 141: RFs.Bptr++;
		INCR 	2AH, 1H 		//0A63 	1AAA

		//;rx.c: 142: }
		//;rx.c: 143: if(RFs.BitCount==24)
		LDWI 	18H 			//0A64 	0018
		XORWR 	29H, 0H 		//0A65 	1629
		BTSS 	3H, 2H 			//0A66 	2D03
		LJUMP 	26CH 			//0A67 	3A6C

		//;rx.c: 144: {
		//;rx.c: 145: RFs.RFsp=rfReset;
		CLRF 	26H 			//0A68 	11A6

		//;rx.c: 146: RFs.RecBufFull=1;
		LDWI 	1H 			//0A69 	0001
		STR 	2BH 			//0A6A 	10AB

		//;rx.c: 147: break;
		RET 					//0A6B 	1008

		//;rx.c: 148: }
		//;rx.c: 149: RFs.RFsp=rfH;
		LDWI 	4H 			//0A6C 	0004
		STR 	26H 			//0A6D 	10A6

		//;rx.c: 150: break;
		RET 					//0A6E 	1008

		//;rx.c: 151: }
		//;rx.c: 152: case rffall:
		//;rx.c: 153: if(PB4==0)
		MOVLB 	0H 			//0A6F 	1020
		BTSS 	DH, 4H 			//0A70 	2E0D
		RET 					//0A71 	1008

		//;rx.c: 155: else
		//;rx.c: 156: {
		//;rx.c: 157: RFs.RFsp=synH;
		LDWI 	2H 			//0A72 	0002
		MOVLB 	1H 			//0A73 	1021
		STR 	26H 			//0A74 	10A6

		//;rx.c: 158: break;
		RET 					//0A75 	1008

		//;rx.c: 162: RFs.tRFL= 0;
		CLRF 	28H 			//0A76 	11A8

		//;rx.c: 163: RFs.tRFH= 0;
		CLRF 	27H 			//0A77 	11A7

		//;rx.c: 164: RFs.BitCount=0;
		CLRF 	29H 			//0A78 	11A9

		//;rx.c: 165: RFs.Bptr=0;
		CLRF 	2AH 			//0A79 	11AA

		//;rx.c: 166: RFs.RFsp= rffall;
		LDWI 	1H 			//0A7A 	0001
		STR 	26H 			//0A7B 	10A6

		//;rx.c: 167: }
		RET 					//0A7C 	1008
		MOVLB 	1H 			//0A7D 	1021
		LDR 	26H, 0H 			//0A7E 	1826
		STR 	4H 			//0A7F 	1084
		LDWI 	6H 			//0A80 	0006
		SUBWR 	4H, 0H 		//0A81 	1204
		BTSC 	3H, 0H 			//0A82 	2803
		LJUMP 	276H 			//0A83 	3A76
		MOVLP 	8H 			//0A84 	0188
		LSLF 	4H, 0H 			//0A85 	0504
		ADDWI 	20H 			//0A86 	0E20
		STR 	2H 			//0A87 	1082
		RET 					//0A88 	1008
		SUBWR 	27H, 0H 		//0A89 	1227
		BTSC 	3H, 0H 			//0A8A 	2803
		CLRF 	26H 			//0A8B 	11A6
		RET 					//0A8C 	1008
		SUBWR 	28H, 0H 		//0A8D 	1228
		BTSC 	3H, 0H 			//0A8E 	2803
		CLRF 	26H 			//0A8F 	11A6
		RET 					//0A90 	1008
		CLRF 	42H 			//0A91 	11C2
		CLRF 	41H 			//0A92 	11C1
		CLRF 	3EH 			//0A93 	11BE
		LDWI 	2H 			//0A94 	0002
		SUBWR 	3EH, 0H 		//0A95 	123E
		BTSC 	3H, 0H 			//0A96 	2803
		LJUMP 	364H 			//0A97 	3B64
		LSLF 	3EH, 0H 		//0A98 	053E
		ADDWI 	2BH 			//0A99 	0E2B
		STR 	6H 			//0A9A 	1086
		CLRF 	7H 			//0A9B 	1187
		MOVIW 	0H[1] 			//0A9C 	0F40
		STR 	53H 			//0A9D 	10D3
		MOVIW 	1H[1] 			//0A9E 	0F41
		STR 	54H 			//0A9F 	10D4
		LDR 	3EH, 0H 			//0AA0 	183E
		STR 	55H 			//0AA1 	10D5
		CLRF 	56H 			//0AA2 	11D6
		LSLF 	55H, 1H 		//0AA3 	05D5
		RLR 	56H, 1H 			//0AA4 	1DD6
		LDR 	4BH, 0H 			//0AA5 	184B
		STR 	57H 			//0AA6 	10D7
		LDWI 	78H 			//0AA7 	0078
		CLRF 	58H 			//0AA8 	11D8
		LSLF 	57H, 1H 		//0AA9 	05D7
		RLR 	58H, 1H 			//0AAA 	1DD8
		LSLF 	57H, 1H 		//0AAB 	05D7
		RLR 	58H, 1H 			//0AAC 	1DD8
		LSLF 	57H, 1H 		//0AAD 	05D7
		RLR 	58H, 1H 			//0AAE 	1DD8
		STR 	59H 			//0AAF 	10D9
		LDWI 	23H 			//0AB0 	0023
		STR 	5AH 			//0AB1 	10DA
		LDR 	57H, 0H 			//0AB2 	1857
		ADDWR 	59H, 0H 		//0AB3 	1759
		STR 	5BH 			//0AB4 	10DB
		LDR 	58H, 0H 			//0AB5 	1858
		ADDWFC 	5AH, 0H 		//0AB6 	0D5A
		STR 	5CH 			//0AB7 	10DC
		LDR 	55H, 0H 			//0AB8 	1855
		ADDWR 	5BH, 0H 		//0AB9 	175B
		STR 	6H 			//0ABA 	1086
		LDR 	56H, 0H 			//0ABB 	1856
		ADDWFC 	5CH, 0H 		//0ABC 	0D5C
		STR 	7H 			//0ABD 	1087
		MOVIW 	0H[1] 			//0ABE 	0F40
		STR 	5DH 			//0ABF 	10DD
		MOVIW 	1H[1] 			//0AC0 	0F41
		STR 	5EH 			//0AC1 	10DE
		LDR 	54H, 0H 			//0AC2 	1854
		SUBWR 	5EH, 0H 		//0AC3 	125E
		BTSS 	3H, 2H 			//0AC4 	2D03
		LJUMP 	2C8H 			//0AC5 	3AC8
		LDR 	53H, 0H 			//0AC6 	1853
		SUBWR 	5DH, 0H 		//0AC7 	125D
		BTSS 	3H, 0H 			//0AC8 	2C03
		LJUMP 	32AH 			//0AC9 	3B2A
		LSLF 	3EH, 0H 		//0ACA 	053E
		ADDWI 	2BH 			//0ACB 	0E2B
		STR 	6H 			//0ACC 	1086
		CLRF 	7H 			//0ACD 	1187
		LDR 	3EH, 0H 			//0ACE 	183E
		LCALL 	71FH 			//0ACF 	371F
		MOVLP 	AH 			//0AD0 	018A
		STR 	55H 			//0AD1 	10D5
		LDWI 	78H 			//0AD2 	0078
		CLRF 	56H 			//0AD3 	11D6
		LSLF 	55H, 1H 		//0AD4 	05D5
		RLR 	56H, 1H 			//0AD5 	1DD6
		LSLF 	55H, 1H 		//0AD6 	05D5
		RLR 	56H, 1H 			//0AD7 	1DD6
		LSLF 	55H, 1H 		//0AD8 	05D5
		RLR 	56H, 1H 			//0AD9 	1DD6
		STR 	57H 			//0ADA 	10D7
		LDWI 	23H 			//0ADB 	0023
		STR 	58H 			//0ADC 	10D8
		LDR 	55H, 0H 			//0ADD 	1855
		ADDWR 	57H, 0H 		//0ADE 	1757
		STR 	59H 			//0ADF 	10D9
		LDR 	56H, 0H 			//0AE0 	1856
		ADDWFC 	58H, 0H 		//0AE1 	0D58
		STR 	5AH 			//0AE2 	10DA
		LDR 	53H, 0H 			//0AE3 	1853
		ADDWR 	59H, 0H 		//0AE4 	1759
		STR 	4H 			//0AE5 	1084
		LDR 	54H, 0H 			//0AE6 	1854
		ADDWFC 	5AH, 0H 		//0AE7 	0D5A
		STR 	5H 			//0AE8 	1085
		MOVIW 	0H[1] 			//0AE9 	0F40
		SUBWR 	0H, 0H 		//0AEA 	1200
		STR 	5BH 			//0AEB 	10DB
		ADDFSR 	0H, 1H 		//0AEC 	0101
		MOVIW 	1H[1] 			//0AED 	0F41
		SUBWFB 	0H, 0H 		//0AEE 	0B00
		STR 	5CH 			//0AEF 	10DC
		LDWI 	0H 			//0AF0 	0000
		SUBWR 	5CH, 0H 		//0AF1 	125C
		LDWI 	FFH 			//0AF2 	00FF
		BTSC 	3H, 2H 			//0AF3 	2903
		SUBWR 	5BH, 0H 		//0AF4 	125B
		LDR 	3EH, 0H 			//0AF5 	183E
		BTSC 	3H, 0H 			//0AF6 	2803
		LJUMP 	324H 			//0AF7 	3B24
		ADDWI 	B9H 			//0AF8 	0EB9
		STR 	6H 			//0AF9 	1086
		CLRF 	7H 			//0AFA 	1187
		LSLF 	3EH, 0H 		//0AFB 	053E
		ADDWI 	2BH 			//0AFC 	0E2B
		STR 	4H 			//0AFD 	1084
		CLRF 	5H 			//0AFE 	1185
		LDR 	0H, 0H 			//0AFF 	1800
		STR 	53H 			//0B00 	10D3
		LDR 	3EH, 0H 			//0B01 	183E
		STR 	54H 			//0B02 	10D4
		CLRF 	55H 			//0B03 	11D5
		LSLF 	54H, 1H 		//0B04 	05D4
		RLR 	55H, 1H 			//0B05 	1DD5
		LDR 	4BH, 0H 			//0B06 	184B
		STR 	56H 			//0B07 	10D6
		LDWI 	78H 			//0B08 	0078
		CLRF 	57H 			//0B09 	11D7
		LSLF 	56H, 1H 		//0B0A 	05D6
		RLR 	57H, 1H 			//0B0B 	1DD7
		LSLF 	56H, 1H 		//0B0C 	05D6
		RLR 	57H, 1H 			//0B0D 	1DD7
		LSLF 	56H, 1H 		//0B0E 	05D6
		RLR 	57H, 1H 			//0B0F 	1DD7
		STR 	58H 			//0B10 	10D8
		LDWI 	23H 			//0B11 	0023
		STR 	59H 			//0B12 	10D9
		LDR 	56H, 0H 			//0B13 	1856
		ADDWR 	58H, 0H 		//0B14 	1758
		STR 	5AH 			//0B15 	10DA
		LDR 	57H, 0H 			//0B16 	1857
		ADDWFC 	59H, 0H 		//0B17 	0D59
		STR 	5BH 			//0B18 	10DB
		LDR 	54H, 0H 			//0B19 	1854
		ADDWR 	5AH, 0H 		//0B1A 	175A
		STR 	4H 			//0B1B 	1084
		LDR 	55H, 0H 			//0B1C 	1855
		ADDWFC 	5BH, 0H 		//0B1D 	0D5B
		STR 	5H 			//0B1E 	1085
		LDR 	0H, 0H 			//0B1F 	1800
		STR 	5CH 			//0B20 	10DC
		LDR 	53H, 0H 			//0B21 	1853
		SUBWR 	5CH, 0H 		//0B22 	125C
		LJUMP 	328H 			//0B23 	3B28
		ADDWI 	B9H 			//0B24 	0EB9
		STR 	6H 			//0B25 	1086
		LDWI 	FFH 			//0B26 	00FF
		CLRF 	7H 			//0B27 	1187
		STR 	1H 			//0B28 	1081
		LJUMP 	32FH 			//0B29 	3B2F
		LDR 	3EH, 0H 			//0B2A 	183E
		ADDWI 	B9H 			//0B2B 	0EB9
		STR 	6H 			//0B2C 	1086
		CLRF 	7H 			//0B2D 	1187
		CLRF 	1H 			//0B2E 	1181
		LCALL 	7B1H 			//0B2F 	37B1
		MOVLP 	AH 			//0B30 	018A
		LCALL 	785H 			//0B31 	3785
		MOVLP 	AH 			//0B32 	018A
		LCALL 	656H 			//0B33 	3656
		MOVLP 	AH 			//0B34 	018A
		LDWI 	0H 			//0B35 	0000
		STR 	53H 			//0B36 	10D3
		LDWI 	98H 			//0B37 	0098
		LCALL 	793H 			//0B38 	3793
		MOVLP 	AH 			//0B39 	018A
		STR 	57H 			//0B3A 	10D7
		LDR 	1H, 0H 			//0B3B 	1801
		SUBWR 	57H, 0H 		//0B3C 	1257
		BTSS 	3H, 0H 			//0B3D 	2C03
		LJUMP 	348H 			//0B3E 	3B48
		LDWI 	1H 			//0B3F 	0001
		STR 	53H 			//0B40 	10D3
		INCR 	3EH, 0H 		//0B41 	1A3E
		LJUMP 	344H 			//0B42 	3B44
		LSLF 	53H, 1H 		//0B43 	05D3
		DECRSZ 	9H, 1H 		//0B44 	1B89
		LJUMP 	343H 			//0B45 	3B43
		LDR 	53H, 0H 			//0B46 	1853
		IORWR 	41H, 1H 		//0B47 	14C1
		LCALL 	7B1H 			//0B48 	37B1
		MOVLP 	AH 			//0B49 	018A
		LCALL 	785H 			//0B4A 	3785
		MOVLP 	AH 			//0B4B 	018A
		LCALL 	656H 			//0B4C 	3656
		MOVLP 	AH 			//0B4D 	018A
		LDWI 	5AH 			//0B4E 	005A
		STR 	53H 			//0B4F 	10D3
		LDWI 	98H 			//0B50 	0098
		LCALL 	793H 			//0B51 	3793
		MOVLP 	AH 			//0B52 	018A
		SUBWR 	1H, 0H 		//0B53 	1201
		BTSS 	3H, 0H 			//0B54 	2C03
		LJUMP 	35FH 			//0B55 	3B5F
		LDWI 	1H 			//0B56 	0001
		STR 	53H 			//0B57 	10D3
		INCR 	3EH, 0H 		//0B58 	1A3E
		LJUMP 	35BH 			//0B59 	3B5B
		LSLF 	53H, 1H 		//0B5A 	05D3
		DECRSZ 	9H, 1H 		//0B5B 	1B89
		LJUMP 	35AH 			//0B5C 	3B5A
		LDR 	53H, 0H 			//0B5D 	1853
		IORWR 	42H, 1H 		//0B5E 	14C2
		INCR 	3EH, 1H 		//0B5F 	1ABE
		LDWI 	2H 			//0B60 	0002
		SUBWR 	3EH, 0H 		//0B61 	123E
		BTSS 	3H, 0H 			//0B62 	2C03
		LJUMP 	298H 			//0B63 	3A98
		LCALL 	7D5H 			//0B64 	37D5
		MOVLP 	AH 			//0B65 	018A
		LJUMP 	369H 			//0B66 	3B69
		LSRF 	54H, 1H 		//0B67 	06D4
		RRR 	53H, 1H 			//0B68 	1CD3
		DECRSZ 	9H, 1H 		//0B69 	1B89
		LJUMP 	367H 			//0B6A 	3B67
		BTSS 	53H, 0H 		//0B6B 	2C53
		LJUMP 	3E5H 			//0B6C 	3BE5
		MOVLB 	1H 			//0B6D 	1021
		LDWI 	3H 			//0B6E 	0003
		INCR 	4EH, 1H 		//0B6F 	1ACE
		MOVLB 	0H 			//0B70 	1020
		ANDWR 	41H, 0H 		//0B71 	1541
		STR 	53H 			//0B72 	10D3
		XORWI 	3H 			//0B73 	0A03
		BTSS 	3H, 2H 			//0B74 	2D03
		LJUMP 	385H 			//0B75 	3B85
		LDWI 	1H 			//0B76 	0001
		STR 	53H 			//0B77 	10D3
		CLRF 	54H 			//0B78 	11D4
		INCR 	4BH, 0H 		//0B79 	1A4B
		LJUMP 	37DH 			//0B7A 	3B7D
		LSLF 	53H, 1H 		//0B7B 	05D3
		RLR 	54H, 1H 			//0B7C 	1DD4
		DECRSZ 	9H, 1H 		//0B7D 	1B89
		LJUMP 	37BH 			//0B7E 	3B7B
		LCALL 	7E1H 			//0B7F 	37E1
		MOVLP 	AH 			//0B80 	018A
		LCALL 	7EFH 			//0B81 	37EF
		MOVLP 	AH 			//0B82 	018A
		DECR 	4EH, 1H 		//0B83 	13CE
		LJUMP 	3BDH 			//0B84 	3BBD
		LDR 	41H, 0H 			//0B85 	1841
		ANDWI 	3H 			//0B86 	0903
		BTSC 	3H, 2H 			//0B87 	2903
		LJUMP 	3BDH 			//0B88 	3BBD
		CLRF 	3CH 			//0B89 	11BC
		INCR 	3CH, 1H 		//0B8A 	1ABC
		LDR 	4BH, 0H 			//0B8B 	184B
		MOVLP 	2H 			//0B8C 	0182
		LCALL 	20EH 			//0B8D 	320E
		MOVLP 	AH 			//0B8E 	018A
		MOVLB 	0H 			//0B8F 	1020
		LDR 	4BH, 0H 			//0B90 	184B
		LCALL 	66BH 			//0B91 	366B
		MOVLP 	AH 			//0B92 	018A
		MOVLB 	0H 			//0B93 	1020
		CLRF 	3CH 			//0B94 	11BC
		LCALL 	785H 			//0B95 	3785
		MOVLP 	AH 			//0B96 	018A
		LCALL 	656H 			//0B97 	3656
		MOVLP 	AH 			//0B98 	018A
		LDR 	4DH, 0H 			//0B99 	184D
		STR 	5H 			//0B9A 	1085
		LDR 	4CH, 0H 			//0B9B 	184C
		STR 	4H 			//0B9C 	1084
		LDWI 	3H 			//0B9D 	0003
		ADDWR 	4H, 1H 		//0B9E 	1784
		LDWI 	98H 			//0B9F 	0098
		ADDWFC 	5H, 1H 		//0BA0 	0D85
		LDR 	0H, 0H 			//0BA1 	1800
		STR 	53H 			//0BA2 	10D3
		MOVLB 	1H 			//0BA3 	1021
		LDR 	3CH, 0H 			//0BA4 	183C
		MOVLB 	0H 			//0BA5 	1020
		SUBWR 	53H, 0H 		//0BA6 	1253
		BTSS 	3H, 0H 			//0BA7 	2C03
		LJUMP 	3BDH 			//0BA8 	3BBD
		LCALL 	785H 			//0BA9 	3785
		MOVLP 	AH 			//0BAA 	018A
		LCALL 	656H 			//0BAB 	3656
		MOVLP 	AH 			//0BAC 	018A
		LDR 	4DH, 0H 			//0BAD 	184D
		STR 	5H 			//0BAE 	1085
		LDR 	4CH, 0H 			//0BAF 	184C
		STR 	4H 			//0BB0 	1084
		LDWI 	2H 			//0BB1 	0002
		ADDWR 	4H, 1H 		//0BB2 	1784
		LDWI 	98H 			//0BB3 	0098
		ADDWFC 	5H, 1H 		//0BB4 	0D85
		LDR 	0H, 0H 			//0BB5 	1800
		STR 	53H 			//0BB6 	10D3
		MOVLB 	1H 			//0BB7 	1021
		LDR 	3BH, 0H 			//0BB8 	183B
		MOVLB 	0H 			//0BB9 	1020
		SUBWR 	53H, 0H 		//0BBA 	1253
		BTSC 	3H, 0H 			//0BBB 	2803
		LJUMP 	376H 			//0BBC 	3B76
		MOVLB 	0H 			//0BBD 	1020
		LDR 	36H, 0H 			//0BBE 	1836
		STR 	54H 			//0BBF 	10D4
		LDR 	35H, 0H 			//0BC0 	1835
		STR 	53H 			//0BC1 	10D3
		INCR 	4BH, 0H 		//0BC2 	1A4B
		LJUMP 	3C6H 			//0BC3 	3BC6
		LSRF 	54H, 1H 		//0BC4 	06D4
		RRR 	53H, 1H 			//0BC5 	1CD3
		DECRSZ 	9H, 1H 		//0BC6 	1B89
		LJUMP 	3C4H 			//0BC7 	3BC4
		BTSS 	53H, 0H 		//0BC8 	2C53
		LJUMP 	45BH 			//0BC9 	3C5B
		LCALL 	7D5H 			//0BCA 	37D5
		MOVLP 	AH 			//0BCB 	018A
		LJUMP 	3CFH 			//0BCC 	3BCF
		LSRF 	54H, 1H 		//0BCD 	06D4
		RRR 	53H, 1H 			//0BCE 	1CD3
		DECRSZ 	9H, 1H 		//0BCF 	1B89
		LJUMP 	3CDH 			//0BD0 	3BCD
		BTSS 	53H, 0H 		//0BD1 	2C53
		LJUMP 	3D6H 			//0BD2 	3BD6
		MOVLB 	1H 			//0BD3 	1021
		CLRF 	4DH 			//0BD4 	11CD
		LJUMP 	45BH 			//0BD5 	3C5B
		MOVLB 	1H 			//0BD6 	1021
		LDR 	4DH, 0H 			//0BD7 	184D
		BTSS 	3H, 2H 			//0BD8 	2D03
		LJUMP 	3DDH 			//0BD9 	3BDD
		CLRF 	4CH 			//0BDA 	11CC
		INCR 	4CH, 1H 		//0BDB 	1ACC
		LJUMP 	3DFH 			//0BDC 	3BDF
		LDWI 	2H 			//0BDD 	0002
		STR 	4CH 			//0BDE 	10CC
		CLRF 	4DH 			//0BDF 	11CD
		INCR 	4DH, 1H 		//0BE0 	1ACD
		CLRF 	41H 			//0BE1 	11C1
		CLRF 	42H 			//0BE2 	11C2
		BCR 	76H, 3H 			//0BE3 	21F6
		LJUMP 	45BH 			//0BE4 	3C5B
		LDWI 	3H 			//0BE5 	0003
		ANDWR 	42H, 0H 		//0BE6 	1542
		STR 	53H 			//0BE7 	10D3
		XORWI 	3H 			//0BE8 	0A03
		BTSS 	3H, 2H 			//0BE9 	2D03
		LJUMP 	3FEH 			//0BEA 	3BFE
		LDWI 	1H 			//0BEB 	0001
		MOVLB 	0H 			//0BEC 	1020
		STR 	53H 			//0BED 	10D3
		CLRF 	54H 			//0BEE 	11D4
		INCR 	4BH, 0H 		//0BEF 	1A4B
		LJUMP 	3F3H 			//0BF0 	3BF3
		LSLF 	53H, 1H 		//0BF1 	05D3
		RLR 	54H, 1H 			//0BF2 	1DD4
		DECRSZ 	9H, 1H 		//0BF3 	1B89
		LJUMP 	3F1H 			//0BF4 	3BF1
		LDR 	53H, 0H 			//0BF5 	1853
		IORWR 	37H, 1H 		//0BF6 	14B7
		LDR 	54H, 0H 			//0BF7 	1854
		IORWR 	38H, 1H 		//0BF8 	14B8
		LCALL 	7EFH 			//0BF9 	37EF
		MOVLP 	AH 			//0BFA 	018A
		INCR 	4EH, 1H 		//0BFB 	1ACE
		BSR 	76H, 4H 			//0BFC 	2676
		LJUMP 	45BH 			//0BFD 	3C5B
		LDR 	42H, 0H 			//0BFE 	1842
		ANDWI 	3H 			//0BFF 	0903
		BTSC 	3H, 2H 			//0C00 	2903
		LJUMP 	45BH 			//0C01 	3C5B
		CLRF 	3CH 			//0C02 	11BC
		INCR 	3CH, 1H 		//0C03 	1ABC
		LDR 	4BH, 0H 			//0C04 	184B
		MOVLP 	2H 			//0C05 	0182
		LCALL 	20EH 			//0C06 	320E
		MOVLP 	AH 			//0C07 	018A
		MOVLB 	0H 			//0C08 	1020
		LDR 	4BH, 0H 			//0C09 	184B
		LCALL 	66BH 			//0C0A 	366B
		MOVLP 	AH 			//0C0B 	018A
		MOVLB 	0H 			//0C0C 	1020
		CLRF 	3CH 			//0C0D 	11BC
		LCALL 	785H 			//0C0E 	3785
		MOVLP 	AH 			//0C0F 	018A
		LCALL 	656H 			//0C10 	3656
		MOVLP 	AH 			//0C11 	018A
		LDR 	4DH, 0H 			//0C12 	184D
		STR 	5H 			//0C13 	1085
		LDR 	4CH, 0H 			//0C14 	184C
		STR 	4H 			//0C15 	1084
		LDWI 	5DH 			//0C16 	005D
		ADDWR 	4H, 1H 		//0C17 	1784
		LDWI 	98H 			//0C18 	0098
		ADDWFC 	5H, 1H 		//0C19 	0D85
		LDR 	0H, 0H 			//0C1A 	1800
		MOVLB 	1H 			//0C1B 	1021
		SUBWR 	3CH, 0H 		//0C1C 	123C
		BTSS 	3H, 0H 			//0C1D 	2C03
		LJUMP 	45BH 			//0C1E 	3C5B
		MOVLB 	0H 			//0C1F 	1020
		LCALL 	785H 			//0C20 	3785
		MOVLP 	AH 			//0C21 	018A
		LCALL 	656H 			//0C22 	3656
		MOVLP 	AH 			//0C23 	018A
		LDR 	4DH, 0H 			//0C24 	184D
		STR 	5H 			//0C25 	1085
		LDR 	4CH, 0H 			//0C26 	184C
		STR 	4H 			//0C27 	1084
		LDWI 	5CH 			//0C28 	005C
		ADDWR 	4H, 1H 		//0C29 	1784
		LDWI 	98H 			//0C2A 	0098
		ADDWFC 	5H, 1H 		//0C2B 	0D85
		LDR 	0H, 0H 			//0C2C 	1800
		MOVLB 	1H 			//0C2D 	1021
		SUBWR 	3BH, 0H 		//0C2E 	123B
		BTSS 	3H, 0H 			//0C2F 	2C03
		LJUMP 	45BH 			//0C30 	3C5B
		MOVLB 	0H 			//0C31 	1020
		LCALL 	785H 			//0C32 	3785
		MOVLP 	AH 			//0C33 	018A
		LCALL 	656H 			//0C34 	3656
		MOVLP 	AH 			//0C35 	018A
		LDR 	4DH, 0H 			//0C36 	184D
		STR 	5H 			//0C37 	1085
		LDR 	4CH, 0H 			//0C38 	184C
		STR 	4H 			//0C39 	1084
		LDWI 	5AH 			//0C3A 	005A
		ADDWR 	4H, 1H 		//0C3B 	1784
		LDWI 	98H 			//0C3C 	0098
		LCALL 	7B6H 			//0C3D 	37B6
		MOVLP 	AH 			//0C3E 	018A
		BTSS 	3H, 2H 			//0C3F 	2D03
		LJUMP 	444H 			//0C40 	3C44
		LDR 	53H, 0H 			//0C41 	1853
		MOVLB 	1H 			//0C42 	1021
		SUBWR 	39H, 0H 		//0C43 	1239
		BTSC 	3H, 0H 			//0C44 	2803
		LJUMP 	3EBH 			//0C45 	3BEB
		MOVLB 	0H 			//0C46 	1020
		LCALL 	785H 			//0C47 	3785
		MOVLP 	AH 			//0C48 	018A
		LCALL 	656H 			//0C49 	3656
		MOVLP 	AH 			//0C4A 	018A
		LDR 	4DH, 0H 			//0C4B 	184D
		STR 	5H 			//0C4C 	1085
		LDR 	4CH, 0H 			//0C4D 	184C
		STR 	4H 			//0C4E 	1084
		LDWI 	5BH 			//0C4F 	005B
		ADDWR 	4H, 1H 		//0C50 	1784
		LDWI 	98H 			//0C51 	0098
		LCALL 	7B6H 			//0C52 	37B6
		MOVLP 	AH 			//0C53 	018A
		BTSS 	3H, 2H 			//0C54 	2D03
		LJUMP 	459H 			//0C55 	3C59
		LDR 	53H, 0H 			//0C56 	1853
		MOVLB 	1H 			//0C57 	1021
		SUBWR 	3AH, 0H 		//0C58 	123A
		BTSC 	3H, 0H 			//0C59 	2803
		LJUMP 	3EBH 			//0C5A 	3BEB
		BTSS 	76H, 4H 		//0C5B 	2E76
		LJUMP 	4E5H 			//0C5C 	3CE5
		BCR 	76H, 4H 			//0C5D 	2276
		BTSC 	76H, 3H 		//0C5E 	29F6
		LJUMP 	480H 			//0C5F 	3C80
		BSR 	76H, 3H 			//0C60 	25F6
		BSR 	76H, 2H 			//0C61 	2576
		MOVLB 	0H 			//0C62 	1020
		LDR 	3FH, 0H 			//0C63 	183F
		LCALL 	7CFH 			//0C64 	37CF
		MOVLP 	AH 			//0C65 	018A
		MOVLB 	1H 			//0C66 	1021
		STR 	50H 			//0C67 	10D0
		MOVLB 	0H 			//0C68 	1020
		CLRF 	3EH 			//0C69 	11BE
		LDWI 	2H 			//0C6A 	0002
		SUBWR 	3EH, 0H 		//0C6B 	123E
		BTSC 	3H, 0H 			//0C6C 	2803
		LJUMP 	4E5H 			//0C6D 	3CE5
		LCALL 	758H 			//0C6E 	3758
		MOVLP 	AH 			//0C6F 	018A
		LCALL 	71FH 			//0C70 	371F
		MOVLP 	AH 			//0C71 	018A
		LCALL 	6CCH 			//0C72 	36CC
		STR 	25H 			//0C73 	10A5
		MOVIW 	1H[1] 			//0C74 	0F41
		STR 	26H 			//0C75 	10A6
		MOVLP 	3H 			//0C76 	0183
		LCALL 	34DH 			//0C77 	334D
		MOVLP 	AH 			//0C78 	018A
		MOVLB 	0H 			//0C79 	1020
		LSLF 	3EH, 0H 		//0C7A 	053E
		ADDWI 	B5H 			//0C7B 	0EB5
		LCALL 	7E8H 			//0C7C 	37E8
		MOVLP 	AH 			//0C7D 	018A
		INCR 	3EH, 1H 		//0C7E 	1ABE
		LJUMP 	46AH 			//0C7F 	3C6A
		MOVLB 	1H 			//0C80 	1021
		CLRF 	4FH 			//0C81 	11CF
		LCALL 	7FBH 			//0C82 	37FB
		MOVLP 	AH 			//0C83 	018A
		BTSC 	3H, 0H 			//0C84 	2803
		LJUMP 	4B4H 			//0C85 	3CB4
		LCALL 	758H 			//0C86 	3758
		MOVLP 	AH 			//0C87 	018A
		LCALL 	71FH 			//0C88 	371F
		MOVLP 	AH 			//0C89 	018A
		LCALL 	6CCH 			//0C8A 	36CC
		STR 	25H 			//0C8B 	10A5
		MOVIW 	1H[1] 			//0C8C 	0F41
		STR 	26H 			//0C8D 	10A6
		MOVLP 	3H 			//0C8E 	0183
		LCALL 	34DH 			//0C8F 	334D
		MOVLP 	AH 			//0C90 	018A
		MOVLB 	0H 			//0C91 	1020
		LSLF 	3EH, 0H 		//0C92 	053E
		ADDWI 	B1H 			//0C93 	0EB1
		LCALL 	7E8H 			//0C94 	37E8
		MOVLP 	AH 			//0C95 	018A
		LSLF 	3EH, 0H 		//0C96 	053E
		ADDWI 	B1H 			//0C97 	0EB1
		STR 	6H 			//0C98 	1086
		MOVIW 	0H[1] 			//0C99 	0F40
		STR 	53H 			//0C9A 	10D3
		MOVIW 	1H[1] 			//0C9B 	0F41
		STR 	54H 			//0C9C 	10D4
		LSLF 	3EH, 0H 		//0C9D 	053E
		ADDWI 	B5H 			//0C9E 	0EB5
		STR 	6H 			//0C9F 	1086
		MOVIW 	0H[1] 			//0CA0 	0F40
		STR 	55H 			//0CA1 	10D5
		MOVIW 	1H[1] 			//0CA2 	0F41
		STR 	56H 			//0CA3 	10D6
		LDR 	54H, 0H 			//0CA4 	1854
		SUBWR 	56H, 0H 		//0CA5 	1256
		BTSS 	3H, 2H 			//0CA6 	2D03
		LJUMP 	4AAH 			//0CA7 	3CAA
		LDR 	53H, 0H 			//0CA8 	1853
		SUBWR 	55H, 0H 		//0CA9 	1255
		BTSC 	3H, 0H 			//0CAA 	2803
		LJUMP 	4AEH 			//0CAB 	3CAE
		MOVLB 	1H 			//0CAC 	1021
		INCR 	4FH, 1H 		//0CAD 	1ACF
		MOVLB 	0H 			//0CAE 	1020
		INCR 	3EH, 1H 		//0CAF 	1ABE
		LDWI 	2H 			//0CB0 	0002
		SUBWR 	3EH, 0H 		//0CB1 	123E
		BTSS 	3H, 0H 			//0CB2 	2C03
		LJUMP 	486H 			//0CB3 	3C86
		LDWI 	2H 			//0CB4 	0002
		MOVLB 	1H 			//0CB5 	1021
		XORWR 	4FH, 0H 		//0CB6 	164F
		LDWI 	1H 			//0CB7 	0001
		BTSS 	3H, 2H 			//0CB8 	2D03
		LJUMP 	4DAH 			//0CB9 	3CDA
		MOVLB 	0H 			//0CBA 	1020
		STR 	53H 			//0CBB 	10D3
		CLRF 	54H 			//0CBC 	11D4
		INCR 	4BH, 0H 		//0CBD 	1A4B
		LJUMP 	4C1H 			//0CBE 	3CC1
		LSLF 	53H, 1H 		//0CBF 	05D3
		RLR 	54H, 1H 			//0CC0 	1DD4
		DECRSZ 	9H, 1H 		//0CC1 	1B89
		LJUMP 	4BFH 			//0CC2 	3CBF
		LDR 	53H, 0H 			//0CC3 	1853
		STR 	37H 			//0CC4 	10B7
		LDR 	54H, 0H 			//0CC5 	1854
		STR 	38H 			//0CC6 	10B8
		CLRF 	3EH 			//0CC7 	11BE
		LDWI 	2H 			//0CC8 	0002
		SUBWR 	3EH, 0H 		//0CC9 	123E
		BTSC 	3H, 0H 			//0CCA 	2803
		LJUMP 	4E5H 			//0CCB 	3CE5
		LSLF 	3EH, 0H 		//0CCC 	053E
		ADDWI 	B1H 			//0CCD 	0EB1
		STR 	6H 			//0CCE 	1086
		CLRF 	7H 			//0CCF 	1187
		LSLF 	3EH, 0H 		//0CD0 	053E
		ADDWI 	B5H 			//0CD1 	0EB5
		STR 	4H 			//0CD2 	1084
		CLRF 	5H 			//0CD3 	1185
		MOVIW 	0H[1] 			//0CD4 	0F40
		MOVWI 	0H[0] 			//0CD5 	0F80
		MOVIW 	1H[1] 			//0CD6 	0F41
		MOVWI 	1H[0] 			//0CD7 	0F81
		INCR 	3EH, 1H 		//0CD8 	1ABE
		LJUMP 	4C8H 			//0CD9 	3CC8
		MOVLB 	0H 			//0CDA 	1020
		STR 	53H 			//0CDB 	10D3
		CLRF 	54H 			//0CDC 	11D4
		INCR 	4BH, 0H 		//0CDD 	1A4B
		LJUMP 	4E1H 			//0CDE 	3CE1
		LSLF 	53H, 1H 		//0CDF 	05D3
		RLR 	54H, 1H 			//0CE0 	1DD4
		DECRSZ 	9H, 1H 		//0CE1 	1B89
		LJUMP 	4DFH 			//0CE2 	3CDF
		LCALL 	7E1H 			//0CE3 	37E1
		MOVLP 	AH 			//0CE4 	018A
		MOVLB 	0H 			//0CE5 	1020
		LDR 	37H, 0H 			//0CE6 	1837
		IORWR 	38H, 0H 		//0CE7 	1438
		BTSS 	3H, 2H 			//0CE8 	2D03
		LJUMP 	4FDH 			//0CE9 	3CFD
		MOVLB 	1H 			//0CEA 	1021
		CLRF 	4DH 			//0CEB 	11CD
		INCR 	4DH, 1H 		//0CEC 	1ACD
		LCALL 	7FBH 			//0CED 	37FB
		MOVLP 	AH 			//0CEE 	018A
		BTSC 	3H, 0H 			//0CEF 	2803
		LJUMP 	4FDH 			//0CF0 	3CFD
		LSLF 	3EH, 0H 		//0CF1 	053E
		ADDWI 	B5H 			//0CF2 	0EB5
		STR 	6H 			//0CF3 	1086
		LDWI 	0H 			//0CF4 	0000
		CLRF 	7H 			//0CF5 	1187
		MOVWI 	0H[1] 			//0CF6 	0FC0
		MOVWI 	1H[1] 			//0CF7 	0FC1
		INCR 	3EH, 1H 		//0CF8 	1ABE
		LDWI 	2H 			//0CF9 	0002
		SUBWR 	3EH, 0H 		//0CFA 	123E
		BTSS 	3H, 0H 			//0CFB 	2C03
		LJUMP 	4F1H 			//0CFC 	3CF1
		LCALL 	7D5H 			//0CFD 	37D5
		MOVLP 	AH 			//0CFE 	018A
		LJUMP 	502H 			//0CFF 	3D02
		LSRF 	54H, 1H 		//0D00 	06D4
		RRR 	53H, 1H 			//0D01 	1CD3
		DECRSZ 	9H, 1H 		//0D02 	1B89
		LJUMP 	500H 			//0D03 	3D00
		BTSC 	53H, 0H 		//0D04 	2853
		LJUMP 	57FH 			//0D05 	3D7F
		LCALL 	7C0H 			//0D06 	37C0
		MOVLP 	AH 			//0D07 	018A
		MOVIW 	0H[1] 			//0D08 	0F40
		STR 	53H 			//0D09 	10D3
		MOVIW 	1H[1] 			//0D0A 	0F41
		STR 	54H 			//0D0B 	10D4
		SUBWR 	2CH, 0H 		//0D0C 	122C
		BTSS 	3H, 2H 			//0D0D 	2D03
		LJUMP 	511H 			//0D0E 	3D11
		LDR 	53H, 0H 			//0D0F 	1853
		SUBWR 	2BH, 0H 		//0D10 	122B
		BTSS 	3H, 0H 			//0D11 	2C03
		LJUMP 	518H 			//0D12 	3D18
		LCALL 	7C0H 			//0D13 	37C0
		MOVLP 	AH 			//0D14 	018A
		LDR 	1H, 0H 			//0D15 	1801
		SUBWR 	2BH, 0H 		//0D16 	122B
		LJUMP 	51CH 			//0D17 	3D1C
		LCALL 	7C0H 			//0D18 	37C0
		MOVLP 	AH 			//0D19 	018A
		LDR 	2BH, 0H 			//0D1A 	182B
		SUBWR 	1H, 0H 		//0D1B 	1201
		STR 	44H 			//0D1C 	10C4
		LDWI 	AH 			//0D1D 	000A
		SUBWR 	44H, 0H 		//0D1E 	1244
		BTSC 	3H, 0H 			//0D1F 	2803
		LJUMP 	56DH 			//0D20 	3D6D
		LCALL 	7DBH 			//0D21 	37DB
		MOVLP 	AH 			//0D22 	018A
		MOVIW 	0H[1] 			//0D23 	0F40
		STR 	53H 			//0D24 	10D3
		MOVIW 	1H[1] 			//0D25 	0F41
		STR 	54H 			//0D26 	10D4
		SUBWR 	2EH, 0H 		//0D27 	122E
		BTSS 	3H, 2H 			//0D28 	2D03
		LJUMP 	52CH 			//0D29 	3D2C
		LDR 	53H, 0H 			//0D2A 	1853
		SUBWR 	2DH, 0H 		//0D2B 	122D
		BTSS 	3H, 0H 			//0D2C 	2C03
		LJUMP 	533H 			//0D2D 	3D33
		LCALL 	7DBH 			//0D2E 	37DB
		MOVLP 	AH 			//0D2F 	018A
		LDR 	1H, 0H 			//0D30 	1801
		SUBWR 	2DH, 0H 		//0D31 	122D
		LJUMP 	537H 			//0D32 	3D37
		LCALL 	7DBH 			//0D33 	37DB
		MOVLP 	AH 			//0D34 	018A
		LDR 	2DH, 0H 			//0D35 	182D
		SUBWR 	1H, 0H 		//0D36 	1201
		STR 	44H 			//0D37 	10C4
		LDWI 	AH 			//0D38 	000A
		SUBWR 	44H, 0H 		//0D39 	1244
		LDR 	4BH, 0H 			//0D3A 	184B
		BTSC 	3H, 0H 			//0D3B 	2803
		LJUMP 	56EH 			//0D3C 	3D6E
		ADDWI 	4DH 			//0D3D 	0E4D
		STR 	6H 			//0D3E 	1086
		LDWI 	1H 			//0D3F 	0001
		STR 	7H 			//0D40 	1087
		INCR 	1H, 1H 			//0D41 	1A81
		LDR 	4BH, 0H 			//0D42 	184B
		ADDWI 	4DH 			//0D43 	0E4D
		STR 	6H 			//0D44 	1086
		LDR 	1H, 0H 			//0D45 	1801
		STR 	53H 			//0D46 	10D3
		CLRF 	54H 			//0D47 	11D4
		LDR 	54H, 0H 			//0D48 	1854
		MOVLB 	1H 			//0D49 	1021
		SUBWR 	66H, 0H 		//0D4A 	1266
		BTSS 	3H, 2H 			//0D4B 	2D03
		LJUMP 	551H 			//0D4C 	3D51
		MOVLB 	0H 			//0D4D 	1020
		LDR 	53H, 0H 			//0D4E 	1853
		MOVLB 	1H 			//0D4F 	1021
		SUBWR 	65H, 0H 		//0D50 	1265
		BTSC 	3H, 0H 			//0D51 	2803
		LJUMP 	570H 			//0D52 	3D70
		NOP 					//0D53 	1000
		NOP 					//0D54 	1000
		LCALL 	7FBH 			//0D55 	37FB
		MOVLP 	AH 			//0D56 	018A
		BTSC 	3H, 0H 			//0D57 	2803
		LJUMP 	56DH 			//0D58 	3D6D
		LDR 	3EH, 0H 			//0D59 	183E
		LCALL 	71FH 			//0D5A 	371F
		MOVLP 	AH 			//0D5B 	018A
		STR 	55H 			//0D5C 	10D5
		LDWI 	23H 			//0D5D 	0023
		LCALL 	6E6H 			//0D5E 	36E6
		MOVLP 	AH 			//0D5F 	018A
		LDR 	3EH, 0H 			//0D60 	183E
		STR 	5BH 			//0D61 	10DB
		CLRF 	5CH 			//0D62 	11DC
		LSLF 	5BH, 1H 		//0D63 	05DB
		RLR 	5CH, 1H 			//0D64 	1DDC
		LDR 	4BH, 0H 			//0D65 	184B
		LCALL 	702H 			//0D66 	3702
		MOVLP 	AH 			//0D67 	018A
		INCR 	3EH, 1H 		//0D68 	1ABE
		LDWI 	2H 			//0D69 	0002
		SUBWR 	3EH, 0H 		//0D6A 	123E
		BTSS 	3H, 0H 			//0D6B 	2C03
		LJUMP 	559H 			//0D6C 	3D59
		LDR 	4BH, 0H 			//0D6D 	184B
		LCALL 	7F5H 			//0D6E 	37F5
		MOVLP 	AH 			//0D6F 	018A
		MOVLB 	0H 			//0D70 	1020
		LCALL 	7C0H 			//0D71 	37C0
		MOVLP 	AH 			//0D72 	018A
		LDR 	2BH, 0H 			//0D73 	182B
		MOVWI 	0H[1] 			//0D74 	0FC0
		LDR 	2CH, 0H 			//0D75 	182C
		MOVWI 	1H[1] 			//0D76 	0FC1
		LSLF 	4BH, 0H 		//0D77 	054B
		ADDWI 	A0H 			//0D78 	0EA0
		STR 	6H 			//0D79 	1086
		LDR 	2DH, 0H 			//0D7A 	182D
		MOVWI 	0H[1] 			//0D7B 	0FC0
		LDR 	2EH, 0H 			//0D7C 	182E
		MOVWI 	1H[1] 			//0D7D 	0FC1
		LJUMP 	58CH 			//0D7E 	3D8C
		CLRF 	40H 			//0D7F 	11C0
		LDWI 	FH 			//0D80 	000F
		SUBWR 	40H, 0H 		//0D81 	1240
		BTSC 	3H, 0H 			//0D82 	2803
		LJUMP 	58CH 			//0D83 	3D8C
		LDR 	40H, 0H 			//0D84 	1840
		LCALL 	7F5H 			//0D85 	37F5
		MOVLP 	AH 			//0D86 	018A
		INCR 	40H, 1H 		//0D87 	1AC0
		LDWI 	FH 			//0D88 	000F
		SUBWR 	40H, 0H 		//0D89 	1240
		BTSS 	3H, 0H 			//0D8A 	2C03
		LJUMP 	584H 			//0D8B 	3D84
		LDR 	3DH, 0H 			//0D8C 	183D
		BTSC 	3H, 2H 			//0D8D 	2903
		RET 					//0D8E 	1008
		LDR 	47H, 0H 			//0D8F 	1847
		LCALL 	7CFH 			//0D90 	37CF
		MOVLP 	AH 			//0D91 	018A
		XORWR 	4BH, 0H 		//0D92 	164B
		BTSS 	3H, 2H 			//0D93 	2D03
		RET 					//0D94 	1008
		MOVLB 	1H 			//0D95 	1021
		LDR 	66H, 0H 			//0D96 	1866
		SUBWR 	6AH, 0H 		//0D97 	126A
		BTSS 	3H, 2H 			//0D98 	2D03
		LJUMP 	59CH 			//0D99 	3D9C
		LDR 	65H, 0H 			//0D9A 	1865
		SUBWR 	69H, 0H 		//0D9B 	1269
		BTSS 	3H, 0H 			//0D9C 	2C03
		LJUMP 	62AH 			//0D9D 	3E2A
		CLRF 	69H 			//0D9E 	11E9
		CLRF 	6AH 			//0D9F 	11EA
		CLRF 	67H 			//0DA0 	11E7
		CLRF 	68H 			//0DA1 	11E8
		MOVLB 	0H 			//0DA2 	1020
		CLRF 	40H 			//0DA3 	11C0
		LDWI 	FH 			//0DA4 	000F
		SUBWR 	40H, 0H 		//0DA5 	1240
		BTSC 	3H, 0H 			//0DA6 	2803
		LJUMP 	62AH 			//0DA7 	3E2A
		CLRF 	3EH 			//0DA8 	11BE
		LDWI 	4H 			//0DA9 	0004
		SUBWR 	3EH, 0H 		//0DAA 	123E
		BTSC 	3H, 0H 			//0DAB 	2803
		LJUMP 	625H 			//0DAC 	3E25
		LDR 	3EH, 0H 			//0DAD 	183E
		LCALL 	6FCH 			//0DAE 	36FC
		MOVLP 	AH 			//0DAF 	018A
		LCALL 	6CCH 			//0DB0 	36CC
		MOVLP 	AH 			//0DB1 	018A
		LCALL 	78CH 			//0DB2 	378C
		MOVLP 	AH 			//0DB3 	018A
		LCALL 	767H 			//0DB4 	3767
		MOVLP 	AH 			//0DB5 	018A
		STR 	66H 			//0DB6 	10E6
		LDR 	5CH, 0H 			//0DB7 	185C
		SUBWR 	66H, 0H 		//0DB8 	1266
		BTSS 	3H, 2H 			//0DB9 	2D03
		LJUMP 	5BDH 			//0DBA 	3DBD
		LDR 	5BH, 0H 			//0DBB 	185B
		SUBWR 	65H, 0H 		//0DBC 	1265
		BTSC 	3H, 0H 			//0DBD 	2803
		LJUMP 	5F5H 			//0DBE 	3DF5
		LDR 	3EH, 0H 			//0DBF 	183E
		LCALL 	6FCH 			//0DC0 	36FC
		MOVLP 	AH 			//0DC1 	018A
		LCALL 	6CCH 			//0DC2 	36CC
		MOVLP 	AH 			//0DC3 	018A
		STR 	5BH 			//0DC4 	10DB
		MOVIW 	1H[1] 			//0DC5 	0F41
		STR 	5CH 			//0DC6 	10DC
		LDR 	5BH, 0H 			//0DC7 	185B
		ADDWI 	FFH 			//0DC8 	0EFF
		STR 	5DH 			//0DC9 	10DD
		LDWI 	FFH 			//0DCA 	00FF
		LCALL 	732H 			//0DCB 	3732
		MOVLP 	AH 			//0DCC 	018A
		LCALL 	6FCH 			//0DCD 	36FC
		MOVLP 	AH 			//0DCE 	018A
		STR 	55H 			//0DCF 	10D5
		LDWI 	23H 			//0DD0 	0023
		LCALL 	6E6H 			//0DD1 	36E6
		MOVLP 	AH 			//0DD2 	018A
		MOVIW 	0H[1] 			//0DD3 	0F40
		LCALL 	78CH 			//0DD4 	378C
		MOVLP 	AH 			//0DD5 	018A
		LSLF 	5DH, 1H 		//0DD6 	05DD
		RLR 	5EH, 1H 			//0DD7 	1DDE
		LDR 	40H, 0H 			//0DD8 	1840
		STR 	5FH 			//0DD9 	10DF
		LDWI 	78H 			//0DDA 	0078
		CLRF 	60H 			//0DDB 	11E0
		LSLF 	5FH, 1H 		//0DDC 	05DF
		RLR 	60H, 1H 			//0DDD 	1DE0
		LSLF 	5FH, 1H 		//0DDE 	05DF
		RLR 	60H, 1H 			//0DDF 	1DE0
		LSLF 	5FH, 1H 		//0DE0 	05DF
		RLR 	60H, 1H 			//0DE1 	1DE0
		STR 	61H 			//0DE2 	10E1
		LDWI 	23H 			//0DE3 	0023
		STR 	62H 			//0DE4 	10E2
		LDR 	5FH, 0H 			//0DE5 	185F
		ADDWR 	61H, 0H 		//0DE6 	1761
		STR 	63H 			//0DE7 	10E3
		LDR 	60H, 0H 			//0DE8 	1860
		ADDWFC 	62H, 0H 		//0DE9 	0D62
		STR 	64H 			//0DEA 	10E4
		LDR 	5DH, 0H 			//0DEB 	185D
		ADDWR 	63H, 0H 		//0DEC 	1763
		STR 	6H 			//0DED 	1086
		LDR 	5EH, 0H 			//0DEE 	185E
		ADDWFC 	64H, 0H 		//0DEF 	0D64
		STR 	7H 			//0DF0 	1087
		MOVIW 	0H[1] 			//0DF1 	0F40
		STR 	65H 			//0DF2 	10E5
		MOVIW 	1H[1] 			//0DF3 	0F41
		LJUMP 	60BH 			//0DF4 	3E0B
		LDR 	3EH, 0H 			//0DF5 	183E
		LCALL 	6FCH 			//0DF6 	36FC
		MOVLP 	AH 			//0DF7 	018A
		LCALL 	6CCH 			//0DF8 	36CC
		MOVLP 	AH 			//0DF9 	018A
		STR 	5BH 			//0DFA 	10DB
		MOVIW 	1H[1] 			//0DFB 	0F41
		STR 	5CH 			//0DFC 	10DC
		LDR 	5BH, 0H 			//0DFD 	185B
		ADDWI 	1H 			//0DFE 	0E01
		STR 	5DH 			//0DFF 	10DD
		LDWI 	0H 			//0E00 	0000
		LCALL 	732H 			//0E01 	3732
		MOVLP 	AH 			//0E02 	018A
		LCALL 	6FCH 			//0E03 	36FC
		MOVLP 	AH 			//0E04 	018A
		LCALL 	6CCH 			//0E05 	36CC
		MOVLP 	AH 			//0E06 	018A
		LCALL 	78CH 			//0E07 	378C
		MOVLP 	AH 			//0E08 	018A
		LCALL 	767H 			//0E09 	3767
		MOVLP 	AH 			//0E0A 	018A
		STR 	66H 			//0E0B 	10E6
		LDR 	5CH, 0H 			//0E0C 	185C
		SUBWR 	66H, 0H 		//0E0D 	1266
		BTSS 	3H, 2H 			//0E0E 	2D03
		LJUMP 	612H 			//0E0F 	3E12
		LDR 	5BH, 0H 			//0E10 	185B
		SUBWR 	65H, 0H 		//0E11 	1265
		BTSC 	3H, 0H 			//0E12 	2803
		LJUMP 	620H 			//0E13 	3E20
		LDR 	3EH, 0H 			//0E14 	183E
		LCALL 	6FCH 			//0E15 	36FC
		MOVLP 	AH 			//0E16 	018A
		STR 	55H 			//0E17 	10D5
		LDWI 	23H 			//0E18 	0023
		LCALL 	6E6H 			//0E19 	36E6
		MOVLP 	AH 			//0E1A 	018A
		LDR 	3EH, 0H 			//0E1B 	183E
		LCALL 	761H 			//0E1C 	3761
		MOVLP 	AH 			//0E1D 	018A
		LCALL 	702H 			//0E1E 	3702
		MOVLP 	AH 			//0E1F 	018A
		INCR 	3EH, 1H 		//0E20 	1ABE
		LDWI 	4H 			//0E21 	0004
		SUBWR 	3EH, 0H 		//0E22 	123E
		BTSS 	3H, 0H 			//0E23 	2C03
		LJUMP 	5ADH 			//0E24 	3DAD
		INCR 	40H, 1H 		//0E25 	1AC0
		LDWI 	FH 			//0E26 	000F
		SUBWR 	40H, 0H 		//0E27 	1240
		BTSS 	3H, 0H 			//0E28 	2C03
		LJUMP 	5A8H 			//0E29 	3DA8
		LDWI 	2H 			//0E2A 	0002
		MOVLB 	0H 			//0E2B 	1020
		XORWR 	3DH, 0H 		//0E2C 	163D
		BTSS 	3H, 2H 			//0E2D 	2D03
		RET 					//0E2E 	1008
		MOVLB 	1H 			//0E2F 	1021
		LDR 	4BH, 0H 			//0E30 	184B
		BTSS 	3H, 2H 			//0E31 	2D03
		LJUMP 	636H 			//0E32 	3E36
		CLRF 	4BH 			//0E33 	11CB
		INCR 	4BH, 1H 		//0E34 	1ACB
		RET 					//0E35 	1008
		MOVLB 	0H 			//0E36 	1020
		CLRF 	3DH 			//0E37 	11BD
		INCR 	3DH, 1H 		//0E38 	1ABD
		CLRF 	40H 			//0E39 	11C0
		LDWI 	FH 			//0E3A 	000F
		SUBWR 	40H, 0H 		//0E3B 	1240
		BTSC 	3H, 0H 			//0E3C 	2803
		RET 					//0E3D 	1008
		CLRF 	3EH 			//0E3E 	11BE
		LDWI 	4H 			//0E3F 	0004
		SUBWR 	3EH, 0H 		//0E40 	123E
		BTSC 	3H, 0H 			//0E41 	2803
		LJUMP 	654H 			//0E42 	3E54
		LDR 	3EH, 0H 			//0E43 	183E
		LCALL 	6FCH 			//0E44 	36FC
		MOVLP 	AH 			//0E45 	018A
		STR 	55H 			//0E46 	10D5
		LDWI 	23H 			//0E47 	0023
		LCALL 	6E6H 			//0E48 	36E6
		MOVLP 	AH 			//0E49 	018A
		LDR 	3EH, 0H 			//0E4A 	183E
		LCALL 	761H 			//0E4B 	3761
		MOVLP 	AH 			//0E4C 	018A
		LCALL 	702H 			//0E4D 	3702
		MOVLP 	AH 			//0E4E 	018A
		INCR 	3EH, 1H 		//0E4F 	1ABE
		LDWI 	4H 			//0E50 	0004
		SUBWR 	3EH, 0H 		//0E51 	123E
		BTSS 	3H, 0H 			//0E52 	2C03
		LJUMP 	643H 			//0E53 	3E43
		INCR 	40H, 1H 		//0E54 	1AC0
		LJUMP 	63AH 			//0E55 	3E3A
		CLRF 	50H 			//0E56 	11D0
		CLRF 	51H 			//0E57 	11D1
		BTSS 	4CH, 0H 		//0E58 	2C4C
		LJUMP 	65EH 			//0E59 	3E5E
		LDR 	4EH, 0H 			//0E5A 	184E
		ADDWR 	50H, 1H 		//0E5B 	17D0
		LDR 	4FH, 0H 			//0E5C 	184F
		ADDWFC 	51H, 1H 		//0E5D 	0DD1
		LSLF 	4EH, 1H 		//0E5E 	05CE
		RLR 	4FH, 1H 			//0E5F 	1DCF
		LSRF 	4DH, 1H 		//0E60 	06CD
		RRR 	4CH, 1H 			//0E61 	1CCC
		LDR 	4CH, 0H 			//0E62 	184C
		IORWR 	4DH, 0H 		//0E63 	144D
		BTSS 	3H, 2H 			//0E64 	2D03
		LJUMP 	658H 			//0E65 	3E58
		LDR 	51H, 0H 			//0E66 	1851
		STR 	4DH 			//0E67 	10CD
		LDR 	50H, 0H 			//0E68 	1850
		STR 	4CH 			//0E69 	10CC
		RET 					//0E6A 	1008
		STR 	52H 			//0E6B 	10D2
		STR 	4CH 			//0E6C 	10CC
		LDWI 	7EH 			//0E6D 	007E
		LCALL 	725H 			//0E6E 	3725
		MOVLP 	AH 			//0E6F 	018A
		LCALL 	7C6H 			//0E70 	37C6
		MOVLP 	AH 			//0E71 	018A
		LDR 	32H, 0H 			//0E72 	1832
		SUBWR 	51H, 0H 		//0E73 	1251
		BTSS 	3H, 2H 			//0E74 	2D03
		LJUMP 	678H 			//0E75 	3E78
		LDR 	31H, 0H 			//0E76 	1831
		SUBWR 	50H, 0H 		//0E77 	1250
		BTSS 	3H, 0H 			//0E78 	2C03
		LJUMP 	698H 			//0E79 	3E98
		LDWI 	31H 			//0E7A 	0031
		STR 	6H 			//0E7B 	1086
		CLRF 	7H 			//0E7C 	1187
		LDR 	52H, 0H 			//0E7D 	1852
		STR 	4CH 			//0E7E 	10CC
		LDWI 	7EH 			//0E7F 	007E
		LCALL 	725H 			//0E80 	3725
		MOVLP 	AH 			//0E81 	018A
		LCALL 	7A3H 			//0E82 	37A3
		MOVLP 	AH 			//0E83 	018A
		BTSC 	3H, 2H 			//0E84 	2903
		SUBWR 	50H, 0H 		//0E85 	1250
		BTSC 	3H, 0H 			//0E86 	2803
		LJUMP 	694H 			//0E87 	3E94
		LDR 	52H, 0H 			//0E88 	1852
		STR 	4CH 			//0E89 	10CC
		LDWI 	7EH 			//0E8A 	007E
		LCALL 	725H 			//0E8B 	3725
		MOVLP 	AH 			//0E8C 	018A
		STR 	6H 			//0E8D 	1086
		LDR 	4DH, 0H 			//0E8E 	184D
		ADDWFC 	4FH, 0H 		//0E8F 	0D4F
		STR 	7H 			//0E90 	1087
		LDR 	31H, 0H 			//0E91 	1831
		SUBWR 	1H, 0H 		//0E92 	1201
		LJUMP 	695H 			//0E93 	3E95
		LDWI 	FFH 			//0E94 	00FF
		MOVLB 	1H 			//0E95 	1021
		STR 	3CH 			//0E96 	10BC
		LJUMP 	69AH 			//0E97 	3E9A
		MOVLB 	1H 			//0E98 	1021
		CLRF 	3CH 			//0E99 	11BC
		MOVLB 	0H 			//0E9A 	1020
		LDR 	52H, 0H 			//0E9B 	1852
		STR 	4CH 			//0E9C 	10CC
		LDWI 	7CH 			//0E9D 	007C
		LCALL 	725H 			//0E9E 	3725
		MOVLP 	AH 			//0E9F 	018A
		LCALL 	7C6H 			//0EA0 	37C6
		MOVLP 	AH 			//0EA1 	018A
		LDR 	30H, 0H 			//0EA2 	1830
		SUBWR 	51H, 0H 		//0EA3 	1251
		BTSS 	3H, 2H 			//0EA4 	2D03
		LJUMP 	6A8H 			//0EA5 	3EA8
		LDR 	2FH, 0H 			//0EA6 	182F
		SUBWR 	50H, 0H 		//0EA7 	1250
		BTSS 	3H, 0H 			//0EA8 	2C03
		LJUMP 	6C9H 			//0EA9 	3EC9
		LDWI 	2FH 			//0EAA 	002F
		STR 	6H 			//0EAB 	1086
		CLRF 	7H 			//0EAC 	1187
		LDR 	52H, 0H 			//0EAD 	1852
		STR 	4CH 			//0EAE 	10CC
		LDWI 	7CH 			//0EAF 	007C
		LCALL 	725H 			//0EB0 	3725
		MOVLP 	AH 			//0EB1 	018A
		LCALL 	7A3H 			//0EB2 	37A3
		MOVLP 	AH 			//0EB3 	018A
		BTSC 	3H, 2H 			//0EB4 	2903
		SUBWR 	50H, 0H 		//0EB5 	1250
		BTSC 	3H, 0H 			//0EB6 	2803
		LJUMP 	6C5H 			//0EB7 	3EC5
		LDR 	52H, 0H 			//0EB8 	1852
		STR 	4CH 			//0EB9 	10CC
		LDWI 	7CH 			//0EBA 	007C
		LCALL 	725H 			//0EBB 	3725
		STR 	6H 			//0EBC 	1086
		LDR 	4DH, 0H 			//0EBD 	184D
		ADDWFC 	4FH, 0H 		//0EBE 	0D4F
		STR 	7H 			//0EBF 	1087
		LDR 	2FH, 0H 			//0EC0 	182F
		SUBWR 	1H, 0H 		//0EC1 	1201
		MOVLB 	1H 			//0EC2 	1021
		STR 	3BH 			//0EC3 	10BB
		RET 					//0EC4 	1008
		LDWI 	FFH 			//0EC5 	00FF
		MOVLB 	1H 			//0EC6 	1021
		STR 	3BH 			//0EC7 	10BB
		RET 					//0EC8 	1008
		MOVLB 	1H 			//0EC9 	1021
		CLRF 	3BH 			//0ECA 	11BB
		RET 					//0ECB 	1008
		STR 	55H 			//0ECC 	10D5
		LDWI 	78H 			//0ECD 	0078
		CLRF 	56H 			//0ECE 	11D6
		LSLF 	55H, 1H 		//0ECF 	05D5
		RLR 	56H, 1H 			//0ED0 	1DD6
		LSLF 	55H, 1H 		//0ED1 	05D5
		RLR 	56H, 1H 			//0ED2 	1DD6
		LSLF 	55H, 1H 		//0ED3 	05D5
		RLR 	56H, 1H 			//0ED4 	1DD6
		STR 	57H 			//0ED5 	10D7
		LDWI 	23H 			//0ED6 	0023
		STR 	58H 			//0ED7 	10D8
		LDR 	55H, 0H 			//0ED8 	1855
		ADDWR 	57H, 0H 		//0ED9 	1757
		STR 	59H 			//0EDA 	10D9
		LDR 	56H, 0H 			//0EDB 	1856
		ADDWFC 	58H, 0H 		//0EDC 	0D58
		STR 	5AH 			//0EDD 	10DA
		LDR 	53H, 0H 			//0EDE 	1853
		ADDWR 	59H, 0H 		//0EDF 	1759
		STR 	6H 			//0EE0 	1086
		LDR 	54H, 0H 			//0EE1 	1854
		ADDWFC 	5AH, 0H 		//0EE2 	0D5A
		STR 	7H 			//0EE3 	1087
		MOVIW 	0H[1] 			//0EE4 	0F40
		RET 					//0EE5 	1008
		CLRF 	56H 			//0EE6 	11D6
		LSLF 	55H, 1H 		//0EE7 	05D5
		RLR 	56H, 1H 			//0EE8 	1DD6
		LSLF 	55H, 1H 		//0EE9 	05D5
		RLR 	56H, 1H 			//0EEA 	1DD6
		LSLF 	55H, 1H 		//0EEB 	05D5
		RLR 	56H, 1H 			//0EEC 	1DD6
		CLRF 	57H 			//0EED 	11D7
		STR 	58H 			//0EEE 	10D8
		LDR 	55H, 0H 			//0EEF 	1855
		ADDWR 	57H, 0H 		//0EF0 	1757
		STR 	59H 			//0EF1 	10D9
		LDR 	56H, 0H 			//0EF2 	1856
		ADDWFC 	58H, 0H 		//0EF3 	0D58
		STR 	5AH 			//0EF4 	10DA
		LDR 	53H, 0H 			//0EF5 	1853
		ADDWR 	59H, 0H 		//0EF6 	1759
		STR 	6H 			//0EF7 	1086
		LDR 	54H, 0H 			//0EF8 	1854
		ADDWFC 	5AH, 0H 		//0EF9 	0D5A
		STR 	7H 			//0EFA 	1087
		RET 					//0EFB 	1008
		STR 	53H 			//0EFC 	10D3
		CLRF 	54H 			//0EFD 	11D4
		LSLF 	53H, 1H 		//0EFE 	05D3
		RLR 	54H, 1H 			//0EFF 	1DD4
		LDR 	40H, 0H 			//0F00 	1840
		RET 					//0F01 	1008
		STR 	5DH 			//0F02 	10DD
		LDWI 	78H 			//0F03 	0078
		CLRF 	5EH 			//0F04 	11DE
		LSLF 	5DH, 1H 		//0F05 	05DD
		RLR 	5EH, 1H 			//0F06 	1DDE
		LSLF 	5DH, 1H 		//0F07 	05DD
		RLR 	5EH, 1H 			//0F08 	1DDE
		LSLF 	5DH, 1H 		//0F09 	05DD
		RLR 	5EH, 1H 			//0F0A 	1DDE
		STR 	5FH 			//0F0B 	10DF
		LDWI 	23H 			//0F0C 	0023
		STR 	60H 			//0F0D 	10E0
		LDR 	5DH, 0H 			//0F0E 	185D
		ADDWR 	5FH, 0H 		//0F0F 	175F
		STR 	61H 			//0F10 	10E1
		LDR 	5EH, 0H 			//0F11 	185E
		ADDWFC 	60H, 0H 		//0F12 	0D60
		STR 	62H 			//0F13 	10E2
		LDR 	5BH, 0H 			//0F14 	185B
		ADDWR 	61H, 0H 		//0F15 	1761
		STR 	4H 			//0F16 	1084
		LDR 	5CH, 0H 			//0F17 	185C
		ADDWFC 	62H, 0H 		//0F18 	0D62
		STR 	5H 			//0F19 	1085
		MOVIW 	0H[1] 			//0F1A 	0F40
		MOVWI 	0H[0] 			//0F1B 	0F80
		MOVIW 	1H[1] 			//0F1C 	0F41
		MOVWI 	1H[0] 			//0F1D 	0F81
		RET 					//0F1E 	1008
		STR 	53H 			//0F1F 	10D3
		CLRF 	54H 			//0F20 	11D4
		LSLF 	53H, 1H 		//0F21 	05D3
		RLR 	54H, 1H 			//0F22 	1DD4
		LDR 	4BH, 0H 			//0F23 	184B
		RET 					//0F24 	1008
		CLRF 	4DH 			//0F25 	11CD
		LSLF 	4CH, 1H 		//0F26 	05CC
		RLR 	4DH, 1H 			//0F27 	1DCD
		LSLF 	4CH, 1H 		//0F28 	05CC
		RLR 	4DH, 1H 			//0F29 	1DCD
		LSLF 	4CH, 1H 		//0F2A 	05CC
		RLR 	4DH, 1H 			//0F2B 	1DCD
		STR 	4EH 			//0F2C 	10CE
		LDWI 	23H 			//0F2D 	0023
		STR 	4FH 			//0F2E 	10CF
		LDR 	4CH, 0H 			//0F2F 	184C
		ADDWR 	4EH, 0H 		//0F30 	174E
		RET 					//0F31 	1008
		ADDWFC 	5CH, 0H 		//0F32 	0D5C
		STR 	5EH 			//0F33 	10DE
		LDR 	3EH, 0H 			//0F34 	183E
		STR 	5FH 			//0F35 	10DF
		CLRF 	60H 			//0F36 	11E0
		LSLF 	5FH, 1H 		//0F37 	05DF
		RLR 	60H, 1H 			//0F38 	1DE0
		LDR 	40H, 0H 			//0F39 	1840
		STR 	61H 			//0F3A 	10E1
		LDWI 	78H 			//0F3B 	0078
		CLRF 	62H 			//0F3C 	11E2
		LSLF 	61H, 1H 		//0F3D 	05E1
		RLR 	62H, 1H 			//0F3E 	1DE2
		LSLF 	61H, 1H 		//0F3F 	05E1
		RLR 	62H, 1H 			//0F40 	1DE2
		LSLF 	61H, 1H 		//0F41 	05E1
		RLR 	62H, 1H 			//0F42 	1DE2
		STR 	63H 			//0F43 	10E3
		LDWI 	23H 			//0F44 	0023
		STR 	64H 			//0F45 	10E4
		LDR 	61H, 0H 			//0F46 	1861
		ADDWR 	63H, 0H 		//0F47 	1763
		STR 	65H 			//0F48 	10E5
		LDR 	62H, 0H 			//0F49 	1862
		ADDWFC 	64H, 0H 		//0F4A 	0D64
		STR 	66H 			//0F4B 	10E6
		LDR 	5FH, 0H 			//0F4C 	185F
		ADDWR 	65H, 0H 		//0F4D 	1765
		STR 	6H 			//0F4E 	1086
		LDR 	60H, 0H 			//0F4F 	1860
		ADDWFC 	66H, 0H 		//0F50 	0D66
		STR 	7H 			//0F51 	1087
		LDR 	5DH, 0H 			//0F52 	185D
		MOVWI 	0H[1] 			//0F53 	0FC0
		LDR 	5EH, 0H 			//0F54 	185E
		MOVWI 	1H[1] 			//0F55 	0FC1
		LDR 	3EH, 0H 			//0F56 	183E
		RET 					//0F57 	1008
		LDR 	3EH, 0H 			//0F58 	183E
		ADDWI 	B9H 			//0F59 	0EB9
		STR 	6H 			//0F5A 	1086
		CLRF 	7H 			//0F5B 	1187
		LDR 	1H, 0H 			//0F5C 	1801
		STR 	21H 			//0F5D 	10A1
		CLRF 	22H 			//0F5E 	11A2
		LDR 	3EH, 0H 			//0F5F 	183E
		RET 					//0F60 	1008
		STR 	5BH 			//0F61 	10DB
		CLRF 	5CH 			//0F62 	11DC
		LSLF 	5BH, 1H 		//0F63 	05DB
		RLR 	5CH, 1H 			//0F64 	1DDC
		LDR 	40H, 0H 			//0F65 	1840
		RET 					//0F66 	1008
		LSLF 	5DH, 1H 		//0F67 	05DD
		RLR 	5EH, 1H 			//0F68 	1DDE
		LDR 	40H, 0H 			//0F69 	1840
		STR 	5FH 			//0F6A 	10DF
		LDWI 	23H 			//0F6B 	0023
		CLRF 	60H 			//0F6C 	11E0
		LSLF 	5FH, 1H 		//0F6D 	05DF
		RLR 	60H, 1H 			//0F6E 	1DE0
		LSLF 	5FH, 1H 		//0F6F 	05DF
		RLR 	60H, 1H 			//0F70 	1DE0
		LSLF 	5FH, 1H 		//0F71 	05DF
		RLR 	60H, 1H 			//0F72 	1DE0
		CLRF 	61H 			//0F73 	11E1
		STR 	62H 			//0F74 	10E2
		LDR 	5FH, 0H 			//0F75 	185F
		ADDWR 	61H, 0H 		//0F76 	1761
		STR 	63H 			//0F77 	10E3
		LDR 	60H, 0H 			//0F78 	1860
		ADDWFC 	62H, 0H 		//0F79 	0D62
		STR 	64H 			//0F7A 	10E4
		LDR 	5DH, 0H 			//0F7B 	185D
		ADDWR 	63H, 0H 		//0F7C 	1763
		STR 	6H 			//0F7D 	1086
		LDR 	5EH, 0H 			//0F7E 	185E
		ADDWFC 	64H, 0H 		//0F7F 	0D64
		STR 	7H 			//0F80 	1087
		MOVIW 	0H[1] 			//0F81 	0F40
		STR 	65H 			//0F82 	10E5
		MOVIW 	1H[1] 			//0F83 	0F41
		RET 					//0F84 	1008
		LDR 	4BH, 0H 			//0F85 	184B
		STR 	4CH 			//0F86 	10CC
		LDWI 	6H 			//0F87 	0006
		CLRF 	4DH 			//0F88 	11CD
		STR 	4EH 			//0F89 	10CE
		CLRF 	4FH 			//0F8A 	11CF
		RET 					//0F8B 	1008
		STR 	5BH 			//0F8C 	10DB
		MOVIW 	1H[1] 			//0F8D 	0F41
		STR 	5CH 			//0F8E 	10DC
		LDR 	3EH, 0H 			//0F8F 	183E
		STR 	5DH 			//0F90 	10DD
		CLRF 	5EH 			//0F91 	11DE
		RET 					//0F92 	1008
		STR 	54H 			//0F93 	10D4
		LDR 	4CH, 0H 			//0F94 	184C
		ADDWR 	53H, 0H 		//0F95 	1753
		STR 	55H 			//0F96 	10D5
		LDR 	4DH, 0H 			//0F97 	184D
		ADDWFC 	54H, 0H 		//0F98 	0D54
		STR 	56H 			//0F99 	10D6
		LDR 	3EH, 0H 			//0F9A 	183E
		ADDWR 	55H, 0H 		//0F9B 	1755
		STR 	4H 			//0F9C 	1084
		LDR 	56H, 0H 			//0F9D 	1856
		BTSC 	3H, 0H 			//0F9E 	2803
		INCR 	56H, 0H 		//0F9F 	1A56
		STR 	5H 			//0FA0 	1085
		LDR 	0H, 0H 			//0FA1 	1800
		RET 					//0FA2 	1008
		STR 	4H 			//0FA3 	1084
		LDR 	4DH, 0H 			//0FA4 	184D
		ADDWFC 	4FH, 0H 		//0FA5 	0D4F
		STR 	5H 			//0FA6 	1085
		MOVIW 	0H[1] 			//0FA7 	0F40
		SUBWR 	0H, 0H 		//0FA8 	1200
		STR 	50H 			//0FA9 	10D0
		ADDFSR 	0H, 1H 		//0FAA 	0101
		MOVIW 	1H[1] 			//0FAB 	0F41
		SUBWFB 	0H, 0H 		//0FAC 	0B00
		STR 	51H 			//0FAD 	10D1
		LDWI 	0H 			//0FAE 	0000
		SUBWR 	51H, 0H 		//0FAF 	1251
		RETW 	FFH 			//0FB0 	04FF
		LDR 	3EH, 0H 			//0FB1 	183E
		ADDWI 	B9H 			//0FB2 	0EB9
		STR 	6H 			//0FB3 	1086
		CLRF 	7H 			//0FB4 	1187
		RET 					//0FB5 	1008
		ADDWFC 	5H, 1H 		//0FB6 	0D85
		LDR 	0H, 0H 			//0FB7 	1800
		STR 	53H 			//0FB8 	10D3
		CLRF 	54H 			//0FB9 	11D4
		LSLF 	53H, 1H 		//0FBA 	05D3
		RLR 	54H, 1H 			//0FBB 	1DD4
		LDR 	54H, 0H 			//0FBC 	1854
		XORWI 	80H 			//0FBD 	0A80
		SUBWI 	80H 			//0FBE 	0C80
		RET 					//0FBF 	1008
		LSLF 	4BH, 0H 		//0FC0 	054B
		ADDWI 	20H 			//0FC1 	0E20
		STR 	6H 			//0FC2 	1086
		LDWI 	1H 			//0FC3 	0001
		STR 	7H 			//0FC4 	1087
		RET 					//0FC5 	1008
		STR 	6H 			//0FC6 	1086
		LDR 	4DH, 0H 			//0FC7 	184D
		ADDWFC 	4FH, 0H 		//0FC8 	0D4F
		STR 	7H 			//0FC9 	1087
		MOVIW 	0H[1] 			//0FCA 	0F40
		STR 	50H 			//0FCB 	10D0
		MOVIW 	1H[1] 			//0FCC 	0F41
		STR 	51H 			//0FCD 	10D1
		RET 					//0FCE 	1008
		ADDWI 	3EH 			//0FCF 	0E3E
		STR 	6H 			//0FD0 	1086
		LDWI 	1H 			//0FD1 	0001
		STR 	7H 			//0FD2 	1087
		LDR 	1H, 0H 			//0FD3 	1801
		RET 					//0FD4 	1008
		LDR 	38H, 0H 			//0FD5 	1838
		STR 	54H 			//0FD6 	10D4
		LDR 	37H, 0H 			//0FD7 	1837
		STR 	53H 			//0FD8 	10D3
		INCR 	4BH, 0H 		//0FD9 	1A4B
		RET 					//0FDA 	1008
		LSLF 	4BH, 0H 		//0FDB 	054B
		ADDWI 	A0H 			//0FDC 	0EA0
		STR 	6H 			//0FDD 	1086
		LDWI 	1H 			//0FDE 	0001
		STR 	7H 			//0FDF 	1087
		RET 					//0FE0 	1008
		COMR 	53H, 1H 		//0FE1 	19D3
		COMR 	54H, 1H 		//0FE2 	19D4
		LDR 	53H, 0H 			//0FE3 	1853
		ANDWR 	37H, 1H 		//0FE4 	15B7
		LDR 	54H, 0H 			//0FE5 	1854
		ANDWR 	38H, 1H 		//0FE6 	15B8
		RET 					//0FE7 	1008
		STR 	6H 			//0FE8 	1086
		CLRF 	7H 			//0FE9 	1187
		LDR 	27H, 0H 			//0FEA 	1827
		MOVWI 	0H[1] 			//0FEB 	0FC0
		LDR 	28H, 0H 			//0FEC 	1828
		MOVWI 	1H[1] 			//0FED 	0FC1
		RET 					//0FEE 	1008
		LDR 	38H, 0H 			//0FEF 	1838
		STR 	34H 			//0FF0 	10B4
		LDR 	37H, 0H 			//0FF1 	1837
		STR 	33H 			//0FF2 	10B3
		MOVLB 	1H 			//0FF3 	1021
		RET 					//0FF4 	1008
		ADDWI 	4DH 			//0FF5 	0E4D
		STR 	6H 			//0FF6 	1086
		LDWI 	1H 			//0FF7 	0001
		STR 	7H 			//0FF8 	1087
		CLRF 	1H 			//0FF9 	1181
		RET 					//0FFA 	1008
		MOVLB 	0H 			//0FFB 	1020
		CLRF 	3EH 			//0FFC 	11BE
		LDWI 	2H 			//0FFD 	0002
		ORG		0FFEH
		SUBWR 	3EH, 0H 		//0FFE 	123E
		RET 					//0FFF 	1008
		ORG		1531H

		//;sub.c: 265: static unsigned char LedMenuIndex=0;
		//;sub.c: 266: static unsigned char DspBuf,DspCnt;
		//;sub.c: 268: if(++DspCnt <=16 )return;
		LDWI 	11H 			//1531 	0011
		MOVLB 	1H 			//1532 	1021
		INCR 	53H, 1H 		//1533 	1AD3
		SUBWR 	53H, 0H 		//1534 	1253
		BTSS 	3H, 0H 			//1535 	2C03
		RET 					//1536 	1008

		//;sub.c: 269: DspCnt = 0;
		CLRF 	53H 			//1537 	11D3

		//;sub.c: 271: {LATB1=0;LATD1=0;LATC1=0;LATC0=0; LATA0=0;LATB0=0;LATB3=0; LATA4=0;LATD2=0;
		//+                          LATA1=0;LATD3=0;};
		LCALL 	7EDH 			//1538 	37ED
		MOVLP 	15H 			//1539 	0195

		//;sub.c: 275: LedMenuIndex++;
		MOVLB 	1H 			//153A 	1021
		LDWI 	4H 			//153B 	0004
		INCR 	55H, 1H 		//153C 	1AD5

		//;sub.c: 276: if(LedMenuIndex>3)
		SUBWR 	55H, 0H 		//153D 	1255
		BTSS 	3H, 0H 			//153E 	2C03
		LJUMP 	5ADH 			//153F 	3DAD

		//;sub.c: 277: LedMenuIndex=0;
		CLRF 	55H 			//1540 	11D5
		LJUMP 	5ADH 			//1541 	3DAD

		//;sub.c: 282: if(PwrType)
		LDR 	7BH, 0H 			//1542 	187B
		BTSC 	3H, 2H 			//1543 	2903
		LJUMP 	566H 			//1544 	3D66

		//;sub.c: 283: {
		//;sub.c: 284: if(PwrType)LATD2=1;
		LDR 	7BH, 0H 			//1545 	187B
		BTSC 	3H, 2H 			//1546 	2903
		LJUMP 	54AH 			//1547 	3D4A
		MOVLB 	2H 			//1548 	1022
		BSR 	FH, 2H 			//1549 	250F

		//;sub.c: 286: if(HeatType==1)LATA4=1;
		MOVLB 	1H 			//154A 	1021
		DECRSZ 	62H, 0H 		//154B 	1B62
		LJUMP 	54FH 			//154C 	3D4F
		MOVLB 	2H 			//154D 	1022
		BSR 	CH, 4H 			//154E 	260C

		//;sub.c: 288: if(ManualType||ModeType)
		LDR 	78H, 0H 			//154F 	1878
		BTSC 	3H, 2H 			//1550 	2903
		LDR 	7AH, 0H 			//1551 	187A
		BTSC 	3H, 2H 			//1552 	2903
		LJUMP 	566H 			//1553 	3D66

		//;sub.c: 289: {
		//;sub.c: 302: if(StrongType==1){
		DECRSZ 	79H, 0H 		//1554 	1B79
		LJUMP 	559H 			//1555 	3D59

		//;sub.c: 303: LATB3=1;
		MOVLB 	2H 			//1556 	1022
		BSR 	DH, 3H 			//1557 	258D

		//;sub.c: 304: }
		LJUMP 	566H 			//1558 	3D66

		//;sub.c: 305: else if(StrongType==2){
		LDWI 	2H 			//1559 	0002
		XORWR 	79H, 0H 		//155A 	1679
		BTSS 	3H, 2H 			//155B 	2D03
		LJUMP 	560H 			//155C 	3D60

		//;sub.c: 306: LATB0=1;
		MOVLB 	2H 			//155D 	1022
		BSR 	DH, 0H 			//155E 	240D

		//;sub.c: 307: }
		LJUMP 	566H 			//155F 	3D66

		//;sub.c: 308: else if(StrongType==3){
		LDWI 	3H 			//1560 	0003
		XORWR 	79H, 0H 		//1561 	1679
		BTSS 	3H, 2H 			//1562 	2D03
		LJUMP 	566H 			//1563 	3D66

		//;sub.c: 309: LATA0=1;
		MOVLB 	2H 			//1564 	1022
		BSR 	CH, 0H 			//1565 	240C

		//;sub.c: 310: }
		//;sub.c: 311: }
		//;sub.c: 312: }
		//;sub.c: 313: {LATB1=1;LATD1=0;LATC1=0;LATC0=0;};
		MOVLB 	2H 			//1566 	1022
		BSR 	DH, 1H 			//1567 	248D
		BCR 	FH, 1H 			//1568 	208F
		BCR 	EH, 1H 			//1569 	208E
		BCR 	EH, 0H 			//156A 	200E

		//;sub.c: 314: break;
		RET 					//156B 	1008

		//;sub.c: 316: if(PwrType)
		LDR 	7BH, 0H 			//156C 	187B
		BTSC 	3H, 2H 			//156D 	2903
		LJUMP 	593H 			//156E 	3D93

		//;sub.c: 317: {
		//;sub.c: 318: if(ModeType==1){ LATB3=1; }
		DECRSZ 	7AH, 0H 		//156F 	1B7A
		LJUMP 	574H 			//1570 	3D74
		MOVLB 	2H 			//1571 	1022
		BSR 	DH, 3H 			//1572 	258D
		LJUMP 	581H 			//1573 	3D81

		//;sub.c: 319: else if(ModeType==2){ LATB0=1; }
		LDWI 	2H 			//1574 	0002
		XORWR 	7AH, 0H 		//1575 	167A
		BTSS 	3H, 2H 			//1576 	2D03
		LJUMP 	57BH 			//1577 	3D7B
		MOVLB 	2H 			//1578 	1022
		BSR 	DH, 0H 			//1579 	240D
		LJUMP 	581H 			//157A 	3D81

		//;sub.c: 320: else if(ModeType==3){ LATA0=1; }
		LDWI 	3H 			//157B 	0003
		XORWR 	7AH, 0H 		//157C 	167A
		BTSS 	3H, 2H 			//157D 	2D03
		LJUMP 	581H 			//157E 	3D81
		MOVLB 	2H 			//157F 	1022
		BSR 	CH, 0H 			//1580 	240C

		//;sub.c: 322: if(ManualType==1)LATA4=1;
		DECRSZ 	78H, 0H 		//1581 	1B78
		LJUMP 	586H 			//1582 	3D86
		MOVLB 	2H 			//1583 	1022
		BSR 	CH, 4H 			//1584 	260C
		LJUMP 	593H 			//1585 	3D93

		//;sub.c: 323: else if(ManualType==2){LATA4=1;LATD2=1;}
		LDWI 	2H 			//1586 	0002
		XORWR 	78H, 0H 		//1587 	1678
		BTSS 	3H, 2H 			//1588 	2D03
		LJUMP 	58DH 			//1589 	3D8D
		MOVLB 	2H 			//158A 	1022
		BSR 	CH, 4H 			//158B 	260C
		LJUMP 	592H 			//158C 	3D92

		//;sub.c: 324: else if(ManualType==3)LATD2=1;
		LDWI 	3H 			//158D 	0003
		XORWR 	78H, 0H 		//158E 	1678
		BTSS 	3H, 2H 			//158F 	2D03
		LJUMP 	593H 			//1590 	3D93
		MOVLB 	2H 			//1591 	1022
		BSR 	FH, 2H 			//1592 	250F

		//;sub.c: 325: }
		//;sub.c: 326: {LATD1=1;LATB1=0;LATC1=0;LATC0=0;};
		MOVLB 	2H 			//1593 	1022
		BSR 	FH, 1H 			//1594 	248F
		BCR 	DH, 1H 			//1595 	208D
		BCR 	EH, 1H 			//1596 	208E
		BCR 	EH, 0H 			//1597 	200E

		//;sub.c: 327: break;
		RET 					//1598 	1008

		//;sub.c: 330: DspBuf=SpecialDisplay1();
		LCALL 	781H 			//1599 	3781
		MOVLP 	15H 			//159A 	0195
		STR 	54H 			//159B 	10D4

		//;sub.c: 331: ShowLedData(DspBuf);
		LCALL 	5BCH 			//159C 	35BC

		//;sub.c: 332: {LATC1=1;LATB1=0;LATD1=0;LATC0=0;};
		MOVLB 	2H 			//159D 	1022
		BSR 	EH, 1H 			//159E 	248E
		BCR 	DH, 1H 			//159F 	208D
		BCR 	FH, 1H 			//15A0 	208F
		BCR 	EH, 0H 			//15A1 	200E

		//;sub.c: 333: break;
		RET 					//15A2 	1008

		//;sub.c: 336: DspBuf=SpecialDisplay2();
		LCALL 	7B5H 			//15A3 	37B5
		MOVLP 	15H 			//15A4 	0195
		STR 	54H 			//15A5 	10D4

		//;sub.c: 337: ShowLedData(DspBuf);
		LCALL 	5BCH 			//15A6 	35BC

		//;sub.c: 338: {LATC0=1;LATB1=0;LATD1=0;LATC1=0;};
		MOVLB 	2H 			//15A7 	1022
		BSR 	EH, 0H 			//15A8 	240E
		BCR 	DH, 1H 			//15A9 	208D
		BCR 	FH, 1H 			//15AA 	208F
		BCR 	EH, 1H 			//15AB 	208E

		//;sub.c: 339: break;
		RET 					//15AC 	1008
		LDR 	55H, 0H 			//15AD 	1855
		XORWI 	0H 			//15AE 	0A00
		BTSC 	3H, 2H 			//15AF 	2903
		LJUMP 	542H 			//15B0 	3D42
		XORWI 	1H 			//15B1 	0A01
		BTSC 	3H, 2H 			//15B2 	2903
		LJUMP 	56CH 			//15B3 	3D6C
		XORWI 	3H 			//15B4 	0A03
		BTSC 	3H, 2H 			//15B5 	2903
		LJUMP 	599H 			//15B6 	3D99
		XORWI 	1H 			//15B7 	0A01
		BTSC 	3H, 2H 			//15B8 	2903
		LJUMP 	5A3H 			//15B9 	3DA3
		LJUMP 	5BBH 			//15BA 	3DBB
		RET 					//15BB 	1008
		STR 	70H 			//15BC 	10F0

		//;sub.c: 206: switch (DspBuf)
		LJUMP 	776H 			//15BD 	3F76

		//;sub.c: 207: {
		//;sub.c: 208: case 1: LATB0=LATB3=1;
		MOVLB 	2H 			//15BE 	1022
		BSR 	DH, 3H 			//15BF 	258D
		BTSS 	DH, 3H 			//15C0 	2D8D
		LJUMP 	5C5H 			//15C1 	3DC5
		MOVLB 	2H 			//15C2 	1022
		BSR 	DH, 0H 			//15C3 	240D
		RET 					//15C4 	1008
		MOVLB 	2H 			//15C5 	1022
		BCR 	DH, 0H 			//15C6 	200D

		//;sub.c: 209: break; case 2: LATA0=LATB0=LATA4=LATD2=LATD3=1;
		RET 					//15C7 	1008
		MOVLB 	2H 			//15C8 	1022
		BSR 	FH, 3H 			//15C9 	258F
		BTSS 	FH, 3H 			//15CA 	2D8F
		LJUMP 	5CFH 			//15CB 	3DCF
		MOVLB 	2H 			//15CC 	1022
		BSR 	FH, 2H 			//15CD 	250F
		LJUMP 	5D1H 			//15CE 	3DD1
		MOVLB 	2H 			//15CF 	1022
		BCR 	FH, 2H 			//15D0 	210F
		BTSS 	FH, 2H 			//15D1 	2D0F
		LJUMP 	5D6H 			//15D2 	3DD6
		MOVLB 	2H 			//15D3 	1022
		BSR 	CH, 4H 			//15D4 	260C
		LJUMP 	5D8H 			//15D5 	3DD8
		MOVLB 	2H 			//15D6 	1022
		BCR 	CH, 4H 			//15D7 	220C
		BTSS 	CH, 4H 			//15D8 	2E0C
		LJUMP 	5DDH 			//15D9 	3DDD
		MOVLB 	2H 			//15DA 	1022
		BSR 	DH, 0H 			//15DB 	240D
		LJUMP 	5DFH 			//15DC 	3DDF
		MOVLB 	2H 			//15DD 	1022
		BCR 	DH, 0H 			//15DE 	200D
		BTSS 	DH, 0H 			//15DF 	2C0D
		LJUMP 	5E4H 			//15E0 	3DE4
		MOVLB 	2H 			//15E1 	1022
		BSR 	CH, 0H 			//15E2 	240C
		RET 					//15E3 	1008
		MOVLB 	2H 			//15E4 	1022
		BCR 	CH, 0H 			//15E5 	200C

		//;sub.c: 210: break; case 3: LATA0=LATB0=LATB3=LATA4=LATD3=1;
		RET 					//15E6 	1008
		MOVLB 	2H 			//15E7 	1022
		BSR 	FH, 3H 			//15E8 	258F
		BTSS 	FH, 3H 			//15E9 	2D8F
		LJUMP 	5EEH 			//15EA 	3DEE
		MOVLB 	2H 			//15EB 	1022
		BSR 	CH, 4H 			//15EC 	260C
		LJUMP 	5F0H 			//15ED 	3DF0
		MOVLB 	2H 			//15EE 	1022
		BCR 	CH, 4H 			//15EF 	220C
		BTSS 	CH, 4H 			//15F0 	2E0C
		LJUMP 	5F5H 			//15F1 	3DF5
		MOVLB 	2H 			//15F2 	1022
		BSR 	DH, 3H 			//15F3 	258D
		LJUMP 	5F7H 			//15F4 	3DF7
		MOVLB 	2H 			//15F5 	1022
		BCR 	DH, 3H 			//15F6 	218D
		BTSS 	DH, 3H 			//15F7 	2D8D
		LJUMP 	5FCH 			//15F8 	3DFC
		MOVLB 	2H 			//15F9 	1022
		BSR 	DH, 0H 			//15FA 	240D
		LJUMP 	5FEH 			//15FB 	3DFE
		MOVLB 	2H 			//15FC 	1022
		BCR 	DH, 0H 			//15FD 	200D
		BTSS 	DH, 0H 			//15FE 	2C0D
		LJUMP 	603H 			//15FF 	3E03
		MOVLB 	2H 			//1600 	1022
		BSR 	CH, 0H 			//1601 	240C
		RET 					//1602 	1008
		MOVLB 	2H 			//1603 	1022
		BCR 	CH, 0H 			//1604 	200C

		//;sub.c: 211: break; case 4: LATB0=LATB3=LATA1=LATD3=1;
		RET 					//1605 	1008
		MOVLB 	2H 			//1606 	1022
		BSR 	FH, 3H 			//1607 	258F
		BTSS 	FH, 3H 			//1608 	2D8F
		LJUMP 	60DH 			//1609 	3E0D
		MOVLB 	2H 			//160A 	1022
		BSR 	CH, 1H 			//160B 	248C
		LJUMP 	60FH 			//160C 	3E0F
		MOVLB 	2H 			//160D 	1022
		BCR 	CH, 1H 			//160E 	208C
		BTSS 	CH, 1H 			//160F 	2C8C
		LJUMP 	614H 			//1610 	3E14
		MOVLB 	2H 			//1611 	1022
		BSR 	DH, 3H 			//1612 	258D
		LJUMP 	616H 			//1613 	3E16
		MOVLB 	2H 			//1614 	1022
		BCR 	DH, 3H 			//1615 	218D
		BTSS 	DH, 3H 			//1616 	2D8D
		LJUMP 	61BH 			//1617 	3E1B
		MOVLB 	2H 			//1618 	1022
		BSR 	DH, 0H 			//1619 	240D
		RET 					//161A 	1008
		MOVLB 	2H 			//161B 	1022
		BCR 	DH, 0H 			//161C 	200D

		//;sub.c: 212: break; case 5: LATA0=LATB3=LATA4=LATA1=LATD3=1;
		RET 					//161D 	1008
		MOVLB 	2H 			//161E 	1022
		BSR 	FH, 3H 			//161F 	258F
		BTSS 	FH, 3H 			//1620 	2D8F
		LJUMP 	625H 			//1621 	3E25
		MOVLB 	2H 			//1622 	1022
		BSR 	CH, 1H 			//1623 	248C
		LJUMP 	627H 			//1624 	3E27
		MOVLB 	2H 			//1625 	1022
		BCR 	CH, 1H 			//1626 	208C
		BTSS 	CH, 1H 			//1627 	2C8C
		LJUMP 	62CH 			//1628 	3E2C
		MOVLB 	2H 			//1629 	1022
		BSR 	CH, 4H 			//162A 	260C
		LJUMP 	62EH 			//162B 	3E2E
		MOVLB 	2H 			//162C 	1022
		BCR 	CH, 4H 			//162D 	220C
		BTSS 	CH, 4H 			//162E 	2E0C
		LJUMP 	633H 			//162F 	3E33
		MOVLB 	2H 			//1630 	1022
		BSR 	DH, 3H 			//1631 	258D
		LJUMP 	635H 			//1632 	3E35
		MOVLB 	2H 			//1633 	1022
		BCR 	DH, 3H 			//1634 	218D
		BTSS 	DH, 3H 			//1635 	2D8D
		LJUMP 	63AH 			//1636 	3E3A
		MOVLB 	2H 			//1637 	1022
		BSR 	CH, 0H 			//1638 	240C
		RET 					//1639 	1008
		MOVLB 	2H 			//163A 	1022
		BCR 	CH, 0H 			//163B 	200C

		//;sub.c: 213: break; case 6: LATA0=LATD3=LATB3=LATA4=LATD2=LATA1=1;
		RET 					//163C 	1008
		MOVLB 	2H 			//163D 	1022
		BSR 	CH, 1H 			//163E 	248C
		BTSS 	CH, 1H 			//163F 	2C8C
		LJUMP 	644H 			//1640 	3E44
		MOVLB 	2H 			//1641 	1022
		BSR 	FH, 2H 			//1642 	250F
		LJUMP 	646H 			//1643 	3E46
		MOVLB 	2H 			//1644 	1022
		BCR 	FH, 2H 			//1645 	210F
		BTSS 	FH, 2H 			//1646 	2D0F
		LJUMP 	64BH 			//1647 	3E4B
		MOVLB 	2H 			//1648 	1022
		BSR 	CH, 4H 			//1649 	260C
		LJUMP 	64DH 			//164A 	3E4D
		MOVLB 	2H 			//164B 	1022
		BCR 	CH, 4H 			//164C 	220C
		BTSS 	CH, 4H 			//164D 	2E0C
		LJUMP 	652H 			//164E 	3E52
		MOVLB 	2H 			//164F 	1022
		BSR 	DH, 3H 			//1650 	258D
		LJUMP 	654H 			//1651 	3E54
		MOVLB 	2H 			//1652 	1022
		BCR 	DH, 3H 			//1653 	218D
		BTSS 	DH, 3H 			//1654 	2D8D
		LJUMP 	659H 			//1655 	3E59
		MOVLB 	2H 			//1656 	1022
		BSR 	FH, 3H 			//1657 	258F
		LJUMP 	65BH 			//1658 	3E5B
		MOVLB 	2H 			//1659 	1022
		BCR 	FH, 3H 			//165A 	218F
		BTSS 	FH, 3H 			//165B 	2D8F
		LJUMP 	660H 			//165C 	3E60
		MOVLB 	2H 			//165D 	1022
		BSR 	CH, 0H 			//165E 	240C
		RET 					//165F 	1008
		MOVLB 	2H 			//1660 	1022
		BCR 	CH, 0H 			//1661 	200C

		//;sub.c: 214: break; case 7: LATA0=LATB0=LATB3=1;
		RET 					//1662 	1008
		MOVLB 	2H 			//1663 	1022
		BSR 	DH, 3H 			//1664 	258D
		BTSS 	DH, 3H 			//1665 	2D8D
		LJUMP 	66AH 			//1666 	3E6A
		MOVLB 	2H 			//1667 	1022
		BSR 	DH, 0H 			//1668 	240D
		LJUMP 	66CH 			//1669 	3E6C
		MOVLB 	2H 			//166A 	1022
		BCR 	DH, 0H 			//166B 	200D
		BTSS 	DH, 0H 			//166C 	2C0D
		LJUMP 	671H 			//166D 	3E71
		MOVLB 	2H 			//166E 	1022
		BSR 	CH, 0H 			//166F 	240C
		RET 					//1670 	1008
		MOVLB 	2H 			//1671 	1022
		BCR 	CH, 0H 			//1672 	200C

		//;sub.c: 215: break; case 8: LATA0=LATB0=LATB3=LATA4=LATD2=LATA1=LATD3=1;
		RET 					//1673 	1008
		MOVLB 	2H 			//1674 	1022
		BSR 	FH, 3H 			//1675 	258F
		BTSS 	FH, 3H 			//1676 	2D8F
		LJUMP 	67BH 			//1677 	3E7B
		MOVLB 	2H 			//1678 	1022
		BSR 	CH, 1H 			//1679 	248C
		LJUMP 	67DH 			//167A 	3E7D
		MOVLB 	2H 			//167B 	1022
		BCR 	CH, 1H 			//167C 	208C
		BTSS 	CH, 1H 			//167D 	2C8C
		LJUMP 	682H 			//167E 	3E82
		MOVLB 	2H 			//167F 	1022
		BSR 	FH, 2H 			//1680 	250F
		LJUMP 	684H 			//1681 	3E84
		MOVLB 	2H 			//1682 	1022
		BCR 	FH, 2H 			//1683 	210F
		BTSS 	FH, 2H 			//1684 	2D0F
		LJUMP 	689H 			//1685 	3E89
		MOVLB 	2H 			//1686 	1022
		BSR 	CH, 4H 			//1687 	260C
		LJUMP 	68BH 			//1688 	3E8B
		MOVLB 	2H 			//1689 	1022
		BCR 	CH, 4H 			//168A 	220C
		BTSS 	CH, 4H 			//168B 	2E0C
		LJUMP 	690H 			//168C 	3E90
		MOVLB 	2H 			//168D 	1022
		BSR 	DH, 3H 			//168E 	258D
		LJUMP 	692H 			//168F 	3E92
		MOVLB 	2H 			//1690 	1022
		BCR 	DH, 3H 			//1691 	218D
		BTSS 	DH, 3H 			//1692 	2D8D
		LJUMP 	697H 			//1693 	3E97
		MOVLB 	2H 			//1694 	1022
		BSR 	DH, 0H 			//1695 	240D
		LJUMP 	699H 			//1696 	3E99
		MOVLB 	2H 			//1697 	1022
		BCR 	DH, 0H 			//1698 	200D
		BTSS 	DH, 0H 			//1699 	2C0D
		LJUMP 	69EH 			//169A 	3E9E
		MOVLB 	2H 			//169B 	1022
		BSR 	CH, 0H 			//169C 	240C
		RET 					//169D 	1008
		MOVLB 	2H 			//169E 	1022
		BCR 	CH, 0H 			//169F 	200C

		//;sub.c: 216: break; case 9: LATA0=LATB0=LATB3=LATA4=LATA1=LATD3=1;
		RET 					//16A0 	1008
		MOVLB 	2H 			//16A1 	1022
		BSR 	FH, 3H 			//16A2 	258F
		BTSS 	FH, 3H 			//16A3 	2D8F
		LJUMP 	6A8H 			//16A4 	3EA8
		MOVLB 	2H 			//16A5 	1022
		BSR 	CH, 1H 			//16A6 	248C
		LJUMP 	6AAH 			//16A7 	3EAA
		MOVLB 	2H 			//16A8 	1022
		BCR 	CH, 1H 			//16A9 	208C
		BTSS 	CH, 1H 			//16AA 	2C8C
		LJUMP 	6AFH 			//16AB 	3EAF
		MOVLB 	2H 			//16AC 	1022
		BSR 	CH, 4H 			//16AD 	260C
		LJUMP 	6B1H 			//16AE 	3EB1
		MOVLB 	2H 			//16AF 	1022
		BCR 	CH, 4H 			//16B0 	220C
		BTSS 	CH, 4H 			//16B1 	2E0C
		LJUMP 	6B6H 			//16B2 	3EB6
		MOVLB 	2H 			//16B3 	1022
		BSR 	DH, 3H 			//16B4 	258D
		LJUMP 	6B8H 			//16B5 	3EB8
		MOVLB 	2H 			//16B6 	1022
		BCR 	DH, 3H 			//16B7 	218D
		BTSS 	DH, 3H 			//16B8 	2D8D
		LJUMP 	6BDH 			//16B9 	3EBD
		MOVLB 	2H 			//16BA 	1022
		BSR 	DH, 0H 			//16BB 	240D
		LJUMP 	6BFH 			//16BC 	3EBF
		MOVLB 	2H 			//16BD 	1022
		BCR 	DH, 0H 			//16BE 	200D
		BTSS 	DH, 0H 			//16BF 	2C0D
		LJUMP 	6C4H 			//16C0 	3EC4
		MOVLB 	2H 			//16C1 	1022
		BSR 	CH, 0H 			//16C2 	240C
		RET 					//16C3 	1008
		MOVLB 	2H 			//16C4 	1022
		BCR 	CH, 0H 			//16C5 	200C

		//;sub.c: 217: break; case 0: LATA0=LATB0=LATB3=LATA4=LATD2=LATA1=1;
		RET 					//16C6 	1008
		MOVLB 	2H 			//16C7 	1022
		BSR 	CH, 1H 			//16C8 	248C
		BTSS 	CH, 1H 			//16C9 	2C8C
		LJUMP 	6CEH 			//16CA 	3ECE
		MOVLB 	2H 			//16CB 	1022
		BSR 	FH, 2H 			//16CC 	250F
		LJUMP 	6D0H 			//16CD 	3ED0
		MOVLB 	2H 			//16CE 	1022
		BCR 	FH, 2H 			//16CF 	210F
		BTSS 	FH, 2H 			//16D0 	2D0F
		LJUMP 	6D5H 			//16D1 	3ED5
		MOVLB 	2H 			//16D2 	1022
		BSR 	CH, 4H 			//16D3 	260C
		LJUMP 	6D7H 			//16D4 	3ED7
		MOVLB 	2H 			//16D5 	1022
		BCR 	CH, 4H 			//16D6 	220C
		BTSS 	CH, 4H 			//16D7 	2E0C
		LJUMP 	6DCH 			//16D8 	3EDC
		MOVLB 	2H 			//16D9 	1022
		BSR 	DH, 3H 			//16DA 	258D
		LJUMP 	6DEH 			//16DB 	3EDE
		MOVLB 	2H 			//16DC 	1022
		BCR 	DH, 3H 			//16DD 	218D
		BTSS 	DH, 3H 			//16DE 	2D8D
		LJUMP 	6E3H 			//16DF 	3EE3
		MOVLB 	2H 			//16E0 	1022
		BSR 	DH, 0H 			//16E1 	240D
		LJUMP 	6E5H 			//16E2 	3EE5
		MOVLB 	2H 			//16E3 	1022
		BCR 	DH, 0H 			//16E4 	200D
		BTSS 	DH, 0H 			//16E5 	2C0D
		LJUMP 	6EAH 			//16E6 	3EEA
		MOVLB 	2H 			//16E7 	1022
		BSR 	CH, 0H 			//16E8 	240C
		RET 					//16E9 	1008
		MOVLB 	2H 			//16EA 	1022
		BCR 	CH, 0H 			//16EB 	200C

		//;sub.c: 218: break; case 10: LATD3=0;
		RET 					//16EC 	1008
		MOVLB 	2H 			//16ED 	1022
		BCR 	FH, 3H 			//16EE 	218F

		//;sub.c: 220: break; case 11: LATA0=LATB0=LATD2=LATA1=LATD3=1;
		RET 					//16EF 	1008
		MOVLB 	2H 			//16F0 	1022
		BSR 	FH, 3H 			//16F1 	258F
		BTSS 	FH, 3H 			//16F2 	2D8F
		LJUMP 	6F7H 			//16F3 	3EF7
		MOVLB 	2H 			//16F4 	1022
		BSR 	CH, 1H 			//16F5 	248C
		LJUMP 	6F9H 			//16F6 	3EF9
		MOVLB 	2H 			//16F7 	1022
		BCR 	CH, 1H 			//16F8 	208C
		BTSS 	CH, 1H 			//16F9 	2C8C
		LJUMP 	6FEH 			//16FA 	3EFE
		MOVLB 	2H 			//16FB 	1022
		BSR 	FH, 2H 			//16FC 	250F
		LJUMP 	700H 			//16FD 	3F00
		MOVLB 	2H 			//16FE 	1022
		BCR 	FH, 2H 			//16FF 	210F
		BTSS 	FH, 2H 			//1700 	2D0F
		LJUMP 	705H 			//1701 	3F05
		MOVLB 	2H 			//1702 	1022
		BSR 	DH, 0H 			//1703 	240D
		LJUMP 	707H 			//1704 	3F07
		MOVLB 	2H 			//1705 	1022
		BCR 	DH, 0H 			//1706 	200D
		BTSS 	DH, 0H 			//1707 	2C0D
		LJUMP 	70CH 			//1708 	3F0C
		MOVLB 	2H 			//1709 	1022
		BSR 	CH, 0H 			//170A 	240C
		RET 					//170B 	1008
		MOVLB 	2H 			//170C 	1022
		BCR 	CH, 0H 			//170D 	200C

		//;sub.c: 221: break; case 12: LATA0=LATA4=LATD2=LATA1=LATD3=1;
		RET 					//170E 	1008
		MOVLB 	2H 			//170F 	1022
		BSR 	FH, 3H 			//1710 	258F
		BTSS 	FH, 3H 			//1711 	2D8F
		LJUMP 	716H 			//1712 	3F16
		MOVLB 	2H 			//1713 	1022
		BSR 	CH, 1H 			//1714 	248C
		LJUMP 	718H 			//1715 	3F18
		MOVLB 	2H 			//1716 	1022
		BCR 	CH, 1H 			//1717 	208C
		BTSS 	CH, 1H 			//1718 	2C8C
		LJUMP 	71DH 			//1719 	3F1D
		MOVLB 	2H 			//171A 	1022
		BSR 	FH, 2H 			//171B 	250F
		LJUMP 	71FH 			//171C 	3F1F
		MOVLB 	2H 			//171D 	1022
		BCR 	FH, 2H 			//171E 	210F
		BTSS 	FH, 2H 			//171F 	2D0F
		LJUMP 	724H 			//1720 	3F24
		MOVLB 	2H 			//1721 	1022
		BSR 	CH, 4H 			//1722 	260C
		LJUMP 	726H 			//1723 	3F26
		MOVLB 	2H 			//1724 	1022
		BCR 	CH, 4H 			//1725 	220C
		BTSS 	CH, 4H 			//1726 	2E0C
		LJUMP 	72BH 			//1727 	3F2B
		MOVLB 	2H 			//1728 	1022
		BSR 	CH, 0H 			//1729 	240C
		RET 					//172A 	1008
		MOVLB 	2H 			//172B 	1022
		BCR 	CH, 0H 			//172C 	200C

		//;sub.c: 222: break; case 13: LATB0=LATB3=LATD2=LATA1=LATD3=1;
		RET 					//172D 	1008
		MOVLB 	2H 			//172E 	1022
		BSR 	FH, 3H 			//172F 	258F
		BTSS 	FH, 3H 			//1730 	2D8F
		LJUMP 	735H 			//1731 	3F35
		MOVLB 	2H 			//1732 	1022
		BSR 	CH, 1H 			//1733 	248C
		LJUMP 	737H 			//1734 	3F37
		MOVLB 	2H 			//1735 	1022
		BCR 	CH, 1H 			//1736 	208C
		BTSS 	CH, 1H 			//1737 	2C8C
		LJUMP 	73CH 			//1738 	3F3C
		MOVLB 	2H 			//1739 	1022
		BSR 	FH, 2H 			//173A 	250F
		LJUMP 	73EH 			//173B 	3F3E
		MOVLB 	2H 			//173C 	1022
		BCR 	FH, 2H 			//173D 	210F
		BTSS 	FH, 2H 			//173E 	2D0F
		LJUMP 	743H 			//173F 	3F43
		MOVLB 	2H 			//1740 	1022
		BSR 	DH, 3H 			//1741 	258D
		LJUMP 	745H 			//1742 	3F45
		MOVLB 	2H 			//1743 	1022
		BCR 	DH, 3H 			//1744 	218D
		BTSS 	DH, 3H 			//1745 	2D8D
		LJUMP 	74AH 			//1746 	3F4A
		MOVLB 	2H 			//1747 	1022
		BSR 	DH, 0H 			//1748 	240D
		RET 					//1749 	1008
		MOVLB 	2H 			//174A 	1022
		BCR 	DH, 0H 			//174B 	200D

		//;sub.c: 223: break; case 14: LATA4=LATD2=LATA1=1;
		RET 					//174C 	1008
		MOVLB 	2H 			//174D 	1022
		BSR 	CH, 1H 			//174E 	248C
		BTSS 	CH, 1H 			//174F 	2C8C
		LJUMP 	754H 			//1750 	3F54
		MOVLB 	2H 			//1751 	1022
		BSR 	FH, 2H 			//1752 	250F
		LJUMP 	756H 			//1753 	3F56
		MOVLB 	2H 			//1754 	1022
		BCR 	FH, 2H 			//1755 	210F
		BTSS 	FH, 2H 			//1756 	2D0F
		LJUMP 	75BH 			//1757 	3F5B
		MOVLB 	2H 			//1758 	1022
		BSR 	CH, 4H 			//1759 	260C
		RET 					//175A 	1008
		MOVLB 	2H 			//175B 	1022
		BCR 	CH, 4H 			//175C 	220C

		//;sub.c: 224: break; case 15: LATA0=LATD2=LATA1=LATD3=1;
		RET 					//175D 	1008
		MOVLB 	2H 			//175E 	1022
		BSR 	FH, 3H 			//175F 	258F
		BTSS 	FH, 3H 			//1760 	2D8F
		LJUMP 	765H 			//1761 	3F65
		MOVLB 	2H 			//1762 	1022
		BSR 	CH, 1H 			//1763 	248C
		LJUMP 	767H 			//1764 	3F67
		MOVLB 	2H 			//1765 	1022
		BCR 	CH, 1H 			//1766 	208C
		BTSS 	CH, 1H 			//1767 	2C8C
		LJUMP 	76CH 			//1768 	3F6C
		MOVLB 	2H 			//1769 	1022
		BSR 	FH, 2H 			//176A 	250F
		LJUMP 	76EH 			//176B 	3F6E
		MOVLB 	2H 			//176C 	1022
		BCR 	FH, 2H 			//176D 	210F
		BTSS 	FH, 2H 			//176E 	2D0F
		LJUMP 	773H 			//176F 	3F73
		MOVLB 	2H 			//1770 	1022
		BSR 	CH, 0H 			//1771 	240C
		RET 					//1772 	1008
		MOVLB 	2H 			//1773 	1022
		BCR 	CH, 0H 			//1774 	200C

		//;sub.c: 225: }
		RET 					//1775 	1008
		LDR 	70H, 0H 			//1776 	1870
		STR 	4H 			//1777 	1084
		LDWI 	10H 			//1778 	0010
		SUBWR 	4H, 0H 		//1779 	1204
		BTSC 	3H, 0H 			//177A 	2803
		RET 					//177B 	1008
		MOVLP 	8H 			//177C 	0188
		LSLF 	4H, 0H 			//177D 	0504
		ADDWI 	0H 			//177E 	0E00
		STR 	2H 			//177F 	1082
		RET 					//1780 	1008

		//;sub.c: 230: unsigned char DspBuf;
		//;sub.c: 231: switch(DspIndex)
		LJUMP 	793H 			//1781 	3F93
		CLRF 	74H 			//1782 	11F4

		//;sub.c: 234: break; case DsMode: DspBuf=11;
		LJUMP 	79BH 			//1783 	3F9B
		LDWI 	BH 			//1784 	000B
		LJUMP 	791H 			//1785 	3F91

		//;sub.c: 235: break; case DsStrong: DspBuf=12;
		LDWI 	CH 			//1786 	000C
		LJUMP 	791H 			//1787 	3F91

		//;sub.c: 236: break; case DsHeat: DspBuf=13;
		LDWI 	DH 			//1788 	000D
		LJUMP 	791H 			//1789 	3F91

		//;sub.c: 237: break; case DsManual: DspBuf=14;
		LDWI 	EH 			//178A 	000E
		LJUMP 	791H 			//178B 	3F91

		//;sub.c: 238: break; case DsTime: DspBuf=(TimeMin/10);
		LDWI 	AH 			//178C 	000A
		STR 	70H 			//178D 	10F0
		LDR 	77H, 0H 			//178E 	1877
		LCALL 	79DH 			//178F 	379D
		MOVLP 	15H 			//1790 	0195
		STR 	74H 			//1791 	10F4

		//;sub.c: 239: break;
		LJUMP 	79BH 			//1792 	3F9B
		LCALL 	7FAH 			//1793 	37FA
		MOVLP 	15H 			//1794 	0195
		BTSC 	3H, 0H 			//1795 	2803
		LJUMP 	79BH 			//1796 	3F9B
		MOVLP 	8H 			//1797 	0188
		LSLF 	4H, 0H 			//1798 	0504
		ADDWI 	38H 			//1799 	0E38
		STR 	2H 			//179A 	1082

		//;sub.c: 241: return DspBuf;
		LDR 	74H, 0H 			//179B 	1874
		RET 					//179C 	1008
		STR 	71H 			//179D 	10F1
		CLRF 	73H 			//179E 	11F3
		LDR 	70H, 0H 			//179F 	1870
		BTSC 	3H, 2H 			//17A0 	2903
		LJUMP 	7B3H 			//17A1 	3FB3
		CLRF 	72H 			//17A2 	11F2
		INCR 	72H, 1H 		//17A3 	1AF2
		BTSC 	70H, 7H 		//17A4 	2BF0
		LJUMP 	7A8H 			//17A5 	3FA8
		LSLF 	70H, 1H 		//17A6 	05F0
		LJUMP 	7A3H 			//17A7 	3FA3
		LSLF 	73H, 1H 		//17A8 	05F3
		LDR 	70H, 0H 			//17A9 	1870
		SUBWR 	71H, 0H 		//17AA 	1271
		BTSS 	3H, 0H 			//17AB 	2C03
		LJUMP 	7B0H 			//17AC 	3FB0
		LDR 	70H, 0H 			//17AD 	1870
		SUBWR 	71H, 1H 		//17AE 	12F1
		BSR 	73H, 0H 			//17AF 	2473
		LSRF 	70H, 1H 		//17B0 	06F0
		DECRSZ 	72H, 1H 		//17B1 	1BF2
		LJUMP 	7A8H 			//17B2 	3FA8
		LDR 	73H, 0H 			//17B3 	1873
		RET 					//17B4 	1008

		//;sub.c: 246: unsigned char DspBuf;
		//;sub.c: 247: switch(DspIndex)
		LJUMP 	7C3H 			//17B5 	3FC3
		LDWI 	FH 			//17B6 	000F
		LJUMP 	7C1H 			//17B7 	3FC1

		//;sub.c: 250: break; case DsMode: DspBuf=ModeType;
		LDR 	7AH, 0H 			//17B8 	187A
		LJUMP 	7C1H 			//17B9 	3FC1

		//;sub.c: 251: break; case DsStrong: DspBuf=StrongType;
		LDR 	79H, 0H 			//17BA 	1879
		LJUMP 	7C1H 			//17BB 	3FC1

		//;sub.c: 252: break; case DsHeat: DspBuf=HeatType;
		LDR 	62H, 0H 			//17BC 	1862
		LJUMP 	7C1H 			//17BD 	3FC1

		//;sub.c: 253: break; case DsManual: DspBuf=ManualType;
		LDR 	78H, 0H 			//17BE 	1878
		LJUMP 	7C1H 			//17BF 	3FC1

		//;sub.c: 254: break; case DsTime: DspBuf=TimeMin;
		LDR 	77H, 0H 			//17C0 	1877
		STR 	75H 			//17C1 	10F5

		//;sub.c: 255: break;
		LJUMP 	7CBH 			//17C2 	3FCB
		LCALL 	7FAH 			//17C3 	37FA
		MOVLP 	15H 			//17C4 	0195
		BTSC 	3H, 0H 			//17C5 	2803
		LJUMP 	7CBH 			//17C6 	3FCB
		MOVLP 	8H 			//17C7 	0188
		LSLF 	4H, 0H 			//17C8 	0504
		ADDWI 	2CH 			//17C9 	0E2C
		STR 	2H 			//17CA 	1082

		//;sub.c: 257: if(DspIndex!=DsSty)
		LDR 	5EH, 0H 			//17CB 	185E
		BTSC 	3H, 2H 			//17CC 	2903
		LJUMP 	7D3H 			//17CD 	3FD3

		//;sub.c: 258: DspBuf%=10;
		LDWI 	AH 			//17CE 	000A
		STR 	70H 			//17CF 	10F0
		LDR 	75H, 0H 			//17D0 	1875
		LCALL 	7D5H 			//17D1 	37D5
		STR 	75H 			//17D2 	10F5

		//;sub.c: 259: return DspBuf;
		LDR 	75H, 0H 			//17D3 	1875
		RET 					//17D4 	1008
		STR 	72H 			//17D5 	10F2
		LDWI 	8H 			//17D6 	0008
		STR 	73H 			//17D7 	10F3
		CLRF 	74H 			//17D8 	11F4
		LDR 	72H, 0H 			//17D9 	1872
		STR 	71H 			//17DA 	10F1
		LDWI 	7H 			//17DB 	0007
		LSRF 	71H, 1H 		//17DC 	06F1
		DECRSZ 	9H, 1H 		//17DD 	1B89
		LJUMP 	7DCH 			//17DE 	3FDC
		LSLF 	74H, 0H 		//17DF 	0574
		IORWR 	71H, 0H 		//17E0 	1471
		STR 	74H 			//17E1 	10F4
		LSLF 	72H, 1H 		//17E2 	05F2
		LDR 	70H, 0H 			//17E3 	1870
		SUBWR 	74H, 0H 		//17E4 	1274
		BTSS 	3H, 0H 			//17E5 	2C03
		LJUMP 	7E9H 			//17E6 	3FE9
		LDR 	70H, 0H 			//17E7 	1870
		SUBWR 	74H, 1H 		//17E8 	12F4
		DECRSZ 	73H, 1H 		//17E9 	1BF3
		LJUMP 	7D9H 			//17EA 	3FD9
		LDR 	74H, 0H 			//17EB 	1874
		RET 					//17EC 	1008
		MOVLB 	2H 			//17ED 	1022
		BCR 	DH, 1H 			//17EE 	208D
		BCR 	FH, 1H 			//17EF 	208F
		BCR 	EH, 1H 			//17F0 	208E
		BCR 	EH, 0H 			//17F1 	200E
		BCR 	CH, 0H 			//17F2 	200C
		BCR 	DH, 0H 			//17F3 	200D
		BCR 	DH, 3H 			//17F4 	218D
		BCR 	CH, 4H 			//17F5 	220C
		BCR 	FH, 2H 			//17F6 	210F
		BCR 	CH, 1H 			//17F7 	208C
		BCR 	FH, 3H 			//17F8 	218F
		RET 					//17F9 	1008
		MOVLB 	1H 			//17FA 	1021
		LDR 	5EH, 0H 			//17FB 	185E
		STR 	4H 			//17FC 	1084
		LDWI 	6H 			//17FD 	0006
		SUBWR 	4H, 0H 		//17FE 	1204
		RET 					//17FF 	1008
		RETW 	0H 			//1800 	0400
		RETW 	0H 			//1801 	0400
		RETW 	0H 			//1802 	0400
		RETW 	0H 			//1803 	0400
		RETW 	0H 			//1804 	0400
		RETW 	0H 			//1805 	0400
		RETW 	0H 			//1806 	0400
		RETW 	0H 			//1807 	0400
		RETW 	0H 			//1808 	0400
		RETW 	0H 			//1809 	0400
		RETW 	0H 			//180A 	0400
		RETW 	0H 			//180B 	0400
		RETW 	0H 			//180C 	0400
		RETW 	0H 			//180D 	0400
		RETW 	0H 			//180E 	0400
		RETW 	0H 			//180F 	0400
		RETW 	0H 			//1810 	0400
		RETW 	0H 			//1811 	0400
		RETW 	0H 			//1812 	0400
		RETW 	0H 			//1813 	0400
		RETW 	0H 			//1814 	0400
		RETW 	0H 			//1815 	0400
		RETW 	0H 			//1816 	0400
		RETW 	0H 			//1817 	0400
		RETW 	0H 			//1818 	0400
		RETW 	0H 			//1819 	0400
		RETW 	0H 			//181A 	0400
		RETW 	0H 			//181B 	0400
		RETW 	0H 			//181C 	0400
		RETW 	0H 			//181D 	0400
		RETW 	0H 			//181E 	0400
		RETW 	0H 			//181F 	0400
		RETW 	0H 			//1820 	0400
		RETW 	0H 			//1821 	0400
		RETW 	0H 			//1822 	0400
		RETW 	0H 			//1823 	0400
		RETW 	0H 			//1824 	0400
		RETW 	0H 			//1825 	0400
		RETW 	0H 			//1826 	0400
		RETW 	0H 			//1827 	0400
		RETW 	0H 			//1828 	0400
		RETW 	0H 			//1829 	0400
		RETW 	65H 			//182A 	0465
		RETW 	AEH 			//182B 	04AE
		RETW 	45H 			//182C 	0445
		RETW 	44H 			//182D 	0444
		RETW 	0H 			//182E 	0400
		RETW 	0H 			//182F 	0400
		RETW 	0H 			//1830 	0400
		RETW 	0H 			//1831 	0400
		RETW 	0H 			//1832 	0400
		RETW 	0H 			//1833 	0400
		RETW 	0H 			//1834 	0400
		RETW 	0H 			//1835 	0400
		RETW 	0H 			//1836 	0400
		RETW 	0H 			//1837 	0400
		RETW 	0H 			//1838 	0400
		RETW 	0H 			//1839 	0400
		RETW 	0H 			//183A 	0400
		RETW 	0H 			//183B 	0400
		RETW 	0H 			//183C 	0400
		RETW 	0H 			//183D 	0400
		RETW 	0H 			//183E 	0400
		RETW 	0H 			//183F 	0400
		RETW 	0H 			//1840 	0400
		RETW 	0H 			//1841 	0400
		RETW 	65H 			//1842 	0465
		RETW 	B8H 			//1843 	04B8
		RETW 	56H 			//1844 	0456
		RETW 	37H 			//1845 	0437
		RETW 	0H 			//1846 	0400
		RETW 	0H 			//1847 	0400
		RETW 	65H 			//1848 	0465
		RETW 	A2H 			//1849 	04A2
		RETW 	42H 			//184A 	0442
		RETW 	90H 			//184B 	0490
		RETW 	0H 			//184C 	0400
		RETW 	0H 			//184D 	0400
		RETW 	65H 			//184E 	0465
		RETW 	88H 			//184F 	0488
		RETW 	2DH 			//1850 	042D
		RETW 	8AH 			//1851 	048A
		RETW 	0H 			//1852 	0400
		RETW 	0H 			//1853 	0400
		RETW 	65H 			//1854 	0465
		RETW 	8CH 			//1855 	048C
		RETW 	28H 			//1856 	0428
		RETW 	87H 			//1857 	0487
		RETW 	0H 			//1858 	0400
		RETW 	0H 			//1859 	0400
		RETW 	0H 			//185A 	0400
		RETW 	0H 			//185B 	0400
		RETW 	0H 			//185C 	0400
		RETW 	0H 			//185D 	0400
		RETW 	0H 			//185E 	0400
		RETW 	0H 			//185F 	0400
		RETW 	0H 			//1860 	0400
		RETW 	0H 			//1861 	0400
		RETW 	0H 			//1862 	0400
		RETW 	0H 			//1863 	0400
		RETW 	0H 			//1864 	0400
		RETW 	0H 			//1865 	0400
		RETW 	0H 			//1866 	0400
		RETW 	0H 			//1867 	0400
		RETW 	0H 			//1868 	0400
		RETW 	0H 			//1869 	0400
		RETW 	0H 			//186A 	0400
		RETW 	0H 			//186B 	0400
		RETW 	0H 			//186C 	0400
		RETW 	0H 			//186D 	0400
		RETW 	0H 			//186E 	0400
		RETW 	0H 			//186F 	0400
		RETW 	0H 			//1870 	0400
		RETW 	0H 			//1871 	0400
		RETW 	0H 			//1872 	0400
		RETW 	0H 			//1873 	0400
		RETW 	0H 			//1874 	0400
		RETW 	0H 			//1875 	0400
		RETW 	0H 			//1876 	0400
		RETW 	0H 			//1877 	0400
		RETW 	0H 			//1878 	0400
		RETW 	0H 			//1879 	0400
		RETW 	0H 			//187A 	0400
		RETW 	0H 			//187B 	0400
		RETW 	0H 			//187C 	0400
		RETW 	0H 			//187D 	0400
		RETW 	0H 			//187E 	0400
		RETW 	0H 			//187F 	0400
		RETW 	0H 			//1880 	0400
		RETW 	0H 			//1881 	0400
		RETW 	0H 			//1882 	0400
		RETW 	0H 			//1883 	0400
		RETW 	A5H 			//1884 	04A5
		RETW 	1AH 			//1885 	041A
		RETW 	71H 			//1886 	0471
		RETW 	6EH 			//1887 	046E
		RETW 	0H 			//1888 	0400
		RETW 	0H 			//1889 	0400
		RETW 	0H 			//188A 	0400
		RETW 	0H 			//188B 	0400
		RETW 	0H 			//188C 	0400
		RETW 	0H 			//188D 	0400
		RETW 	0H 			//188E 	0400
		RETW 	0H 			//188F 	0400
		RETW 	0H 			//1890 	0400
		RETW 	0H 			//1891 	0400
		RETW 	0H 			//1892 	0400
		RETW 	0H 			//1893 	0400
		RETW 	0H 			//1894 	0400
		RETW 	0H 			//1895 	0400
		RETW 	0H 			//1896 	0400
		RETW 	0H 			//1897 	0400
		RETW 	0H 			//1898 	0400
		RETW 	0H 			//1899 	0400
		RETW 	0H 			//189A 	0400
		RETW 	0H 			//189B 	0400
		RETW 	A5H 			//189C 	04A5
		RETW 	2CH 			//189D 	042C
		RETW 	8DH 			//189E 	048D
		RETW 	5AH 			//189F 	045A
		RETW 	0H 			//18A0 	0400
		RETW 	0H 			//18A1 	0400
		RETW 	A5H 			//18A2 	04A5
		RETW 	8H 			//18A3 	0408
		RETW 	6CH 			//18A4 	046C
		RETW 	E2H 			//18A5 	04E2
		RETW 	0H 			//18A6 	0400
		RETW 	0H 			//18A7 	0400
		RETW 	A5H 			//18A8 	04A5
		RETW 	DEH 			//18A9 	04DE
		RETW 	49H 			//18AA 	0449
		RETW 	D8H 			//18AB 	04D8
		RETW 	0H 			//18AC 	0400
		RETW 	0H 			//18AD 	0400
		RETW 	A5H 			//18AE 	04A5
		RETW 	E4H 			//18AF 	04E4
		RETW 	41H 			//18B0 	0441
		RETW 	D3H 			//18B1 	04D3
		RETW 	0H 			//18B2 	0400
		RETW 	0H 			//18B3 	0400
		RETW 	0H 			//18B4 	0400
		RETW 	0H 			//18B5 	0400
		RETW 	0H 			//18B6 	0400
		RETW 	0H 			//18B7 	0400
		RETW 	0H 			//18B8 	0400
		RETW 	0H 			//18B9 	0400
		RETW 	0H 			//18BA 	0400
		RETW 	0H 			//18BB 	0400
		RETW 	80H 			//18BC 	0480
		RETW 	78H 			//18BD 	0478
		RETW 	CH 			//18BE 	040C
		RETW 	0H 			//18BF 	0400
		RETW 	4H 			//18C0 	0404
			END
