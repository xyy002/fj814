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
		_URTE		EQU		2471H
		_TXEF		EQU		2495H
		_TCF		EQU		24E0H
		_RxBuf		EQU		AFH
		_RxBit		EQU		73H
		_TmsRxH		EQU		72H
		_TmsRxL		EQU		D0H
		_RxData		EQU		71H
		_SysFunFlg0.OneBits		EQU		DDH
		_SysFunFlg0.AllBits		EQU		DDH
		_SysFunFlg0		EQU		DDH
		_SysFunFlg1.OneBits		EQU		D8H
		_SysFunFlg1.AllBits		EQU		D8H
		_SysFunFlg1		EQU		D8H
		_SysFunFlg2.OneBits		EQU		D1H
		_SysFunFlg2.AllBits		EQU		D1H
		_SysFunFlg2		EQU		D1H
		_PwrType		EQU		DCH
		_ModeType		EQU		75H
		_HeatType		EQU		DBH
		_StrongType		EQU		DAH
		_ManualType		EQU		D9H
		_BuzzerCnt		EQU		C7H
		_DspIndex		EQU		D7H
		_readKeyNum		EQU		C5H
		_TouchTimeCount		EQU		C3H
		_TimeUs		EQU		D6H
		_Time2Ms		EQU		D5H
		_Time10Ms		EQU		D4H
		_Time100Ms		EQU		D3H
		_TimeSec		EQU		D2H
		_TimeMin		EQU		74H
		_fmd_OriginalData		EQU		21H
		_fmd_ReferenceData		EQU		25H
		_fmd_ResultData		EQU		27H
		_fmd_ResultDataH		EQU		29H
		_fmd_Null0		EQU		20H
		_fmd_Null1		EQU		23H
		_fmd_Null2		EQU		24H
		_fmd_Null3		EQU		2AH
		_fmd_Keystatus		EQU		C1H
		_fmd_Keystatus1		EQU		BFH
		_fmd_Keystatus2		EQU		BDH
		_fmd_a		EQU		DFH
		_fmd_a1		EQU		CBH
		_fmd_a2		EQU		CAH
		_fmd_a3		EQU		C9H
		_fmd_u		EQU		70H
		_fmd_nodownavrdata_Key		EQU		2378H
		_fmd_nodownsum_Key		EQU		2300H
		_fmd_theUsedChannel		EQU		A0H
		_send_buf		EQU		B7H
//		send_uart_data@ByteNum		EQU		CCH
//		UartSetEmptyInt@value		EQU		76H
//		UartSetEmptyInt@value		EQU		76H
//		UartSetEmptyInt@value		EQU		76H
//		DisplayHandler@LedMenuIndex		EQU		CFH
//		DisplayHandler@DspBuf		EQU		CEH
//		DisplayHandler@DspCnt		EQU		CDH
//		SpecialDisplay2@DspBuf		EQU		7BH
//		___lbmod@dividend		EQU		78H
//		___lbmod@rem		EQU		7AH
//		___lbmod@counter		EQU		79H
//		___lbmod@dividend		EQU		78H
//		___lbmod@divisor		EQU		76H
//		___lbmod@dividend		EQU		78H
//		SpecialDisplay1@DspBuf		EQU		7AH
//		___lbdiv@dividend		EQU		77H
//		___lbdiv@quotient		EQU		79H
//		___lbdiv@counter		EQU		78H
//		___lbdiv@dividend		EQU		77H
//		___lbdiv@divisor		EQU		76H
//		___lbdiv@dividend		EQU		77H
//		ShowLedData@DspBuf		EQU		76H
//		ShowLedData@DspBuf		EQU		76H
//		ShowLedData@DspBuf		EQU		76H
//-----------------------Variable END---------------------------------

		ORG		0000H
		MOVLP 	0H 			//0000 	0180
		LJUMP 	34H 			//0001 	3834
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

		//;CHIPINIT.C: 57: Rx_Drive();
		MOVLP 	1H 			//000B 	0181
		LCALL 	174H 			//000C 	3174
		MOVLP 	0H 			//000D 	0180

		//;CHIPINIT.C: 58: exact_event_process();
		MOVLP 	4H 			//000E 	0184
		LCALL 	4ABH 			//000F 	34AB
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
		MOVLP 	1H 			//0016 	0181
		LCALL 	1DAH 			//0017 	31DA
		MOVLP 	0H 			//0018 	0180

		//;CHIPINIT.C: 68: if(BuzzerCnt)
		MOVLB 	1H 			//0019 	1021
		LDR 	47H, 0H 			//001A 	1847
		IORWR 	48H, 0H 		//001B 	1448
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
		SUBWR 	47H, 1H 		//0023 	12C7
		LDWI 	0H 			//0024 	0000
		SUBWFB 	48H, 1H 		//0025 	0BC8

		//;CHIPINIT.C: 72: if(BuzzerCnt==0)
		LDR 	47H, 0H 			//0026 	1847
		IORWR 	48H, 0H 		//0027 	1448
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
		MOVLP 	4H 			//0030 	0184
		LCALL 	4D3H 			//0031 	34D3
		BCR 	7EH, 0H 			//0032 	207E
		RETI 					//0033 	1009
		MOVLP 	0H 			//0034 	0180
		LJUMP 	36H 			//0035 	3836
		LDWI 	23H 			//0036 	0023
		CLRF 	4H 			//0037 	1184
		STR 	5H 			//0038 	1085
		LDWI 	F0H 			//0039 	00F0
		STR 	7EH 			//003A 	10FE
		CLRF 	7FH 			//003B 	11FF
		MOVLP 	5H 			//003C 	0185
		LCALL 	520H 			//003D 	3520
		MOVLP 	0H 			//003E 	0180
		LDWI 	A0H 			//003F 	00A0
		CLRF 	70H 			//0040 	11F0
		CLRF 	71H 			//0041 	11F1
		CLRF 	72H 			//0042 	11F2
		CLRF 	73H 			//0043 	11F3
		CLRF 	74H 			//0044 	11F4
		CLRF 	75H 			//0045 	11F5
		STR 	4H 			//0046 	1084
		LDWI 	0H 			//0047 	0000
		STR 	5H 			//0048 	1085
		LDWI 	40H 			//0049 	0040
		STR 	7EH 			//004A 	10FE
		LDWI 	0H 			//004B 	0000
		STR 	7FH 			//004C 	10FF
		MOVLP 	5H 			//004D 	0185
		LCALL 	520H 			//004E 	3520
		MOVLP 	0H 			//004F 	0180
		BCR 	7EH, 0H 			//0050 	207E
		MOVLB 	0H 			//0051 	1020
		LJUMP 	53H 			//0052 	3853

		//;main.c: 154: Sys_init();
		LCALL 	D1H 			//0053 	30D1
		MOVLP 	0H 			//0054 	0180

		//;main.c: 155: TouchInital();
		LCALL 	11AH 			//0055 	311A
		MOVLP 	0H 			//0056 	0180

		//;main.c: 157: Time2Initial();
		LCALL 	FBH 			//0057 	30FB
		MOVLP 	0H 			//0058 	0180

		//;main.c: 158: Time4Initial();
		LCALL 	109H 			//0059 	3109
		MOVLP 	0H 			//005A 	0180

		//;main.c: 159: WDT_INITIAL ();
		LCALL 	16AH 			//005B 	316A
		MOVLP 	0H 			//005C 	0180

		//;main.c: 160: UART_INITIAL();
		LCALL 	157H 			//005D 	3157
		MOVLP 	0H 			//005E 	0180

		//;main.c: 162: User_init();
		LCALL 	163H 			//005F 	3163
		MOVLP 	0H 			//0060 	0180

		//;main.c: 163: Display_init();
		LCALL 	6EH 			//0061 	306E
		MOVLP 	0H 			//0062 	0180

		//;main.c: 164: {BuzzerCnt=400;};
		LDWI 	90H 			//0063 	0090
		MOVLB 	1H 			//0064 	1021
		STR 	47H 			//0065 	10C7
		LDWI 	1H 			//0066 	0001
		STR 	48H 			//0067 	10C8

		//;main.c: 166: while(1)
		CLRWDT 			//0068 	1064

		//;main.c: 169: Rx_Drive();
		LCALL 	81H 			//0069 	3081
		MOVLP 	0H 			//006A 	0180

		//;main.c: 180: RxData_Drive();
		LCALL 	73H 			//006B 	3073
		MOVLP 	0H 			//006C 	0180
		LJUMP 	68H 			//006D 	3868

		//;CHIPINIT.C: 691: {LATB1=0;LATD1=0;LATC1=0;LATC0=0; LATA0=0;LATB0=0;LATB3=0; LATA4=0;LAT
		//+                          D2=0;LATA1=0;LATD3=0;}
		MOVLP 	4H 			//006E 	0184
		LCALL 	498H 			//006F 	3498

		//;CHIPINIT.C: 692: INTCON |= 0B11000000;
		LDWI 	C0H 			//0070 	00C0
		IORWR 	BH, 1H 		//0071 	148B
		RET 					//0072 	1008

		//;rx.c: 61: if(RxData==0)return;
		LDR 	71H, 0H 			//0073 	1871
		BTSC 	3H, 2H 			//0074 	2903
		RET 					//0075 	1008

		//;rx.c: 64: {
		//;rx.c: 65: KeyType=PowerKey;
		DECRSZ 	71H, 0H 		//0076 	1B71
		LJUMP 	79H 			//0077 	3879
		LJUMP 	7FH 			//0078 	387F

		//;rx.c: 68: {
		//;rx.c: 69: KeyType=ModeKey;
		LDWI 	D7H 			//0079 	00D7
		XORWR 	71H, 0H 		//007A 	1671
		BTSC 	3H, 2H 			//007B 	2903
		LJUMP 	7FH 			//007C 	387F

		//;rx.c: 72: {
		//;rx.c: 73: KeyType=StrongKey;
		LDWI 	57H 			//007D 	0057
		XORWR 	71H, 0H 		//007E 	1671

		//;rx.c: 82: }
		//;rx.c: 84: RxData=0;
		CLRF 	71H 			//007F 	11F1
		RET 					//0080 	1008

		//;rx.c: 16: if (PB4 == 1)
		MOVLB 	0H 			//0081 	1020
		BTSS 	DH, 4H 			//0082 	2E0D
		LJUMP 	8CH 			//0083 	388C

		//;rx.c: 17: {
		//;rx.c: 18: if (TmsRxH < 250)
		LDWI 	FAH 			//0084 	00FA
		SUBWR 	72H, 0H 		//0085 	1272
		BTSC 	3H, 0H 			//0086 	2803
		LJUMP 	8AH 			//0087 	388A

		//;rx.c: 19: TmsRxH++;
		INCR 	72H, 1H 		//0088 	1AF2
		RET 					//0089 	1008

		//;rx.c: 20: else
		//;rx.c: 21: RxBit = 0;
		CLRF 	73H 			//008A 	11F3
		RET 					//008B 	1008

		//;rx.c: 23: else
		//;rx.c: 24: {
		//;rx.c: 25: if (TmsRxH >= 20)
		LDWI 	14H 			//008C 	0014
		SUBWR 	72H, 0H 		//008D 	1272
		BTSS 	3H, 0H 			//008E 	2C03
		LJUMP 	93H 			//008F 	3893

		//;rx.c: 26: {
		//;rx.c: 27: TmsRxH = 0;
		//;rx.c: 28: TmsRxL = 0;
		//;rx.c: 29: RxBit = 0;
		//;rx.c: 30: RxBuf[0] = 0;
		//;rx.c: 31: RxBuf[1] = 0;
		//;rx.c: 32: RxBuf[2] = 0;
		//;rx.c: 33: RxBuf[3] = 0;
		LCALL 	1BEH 			//0090 	31BE
		MOVLP 	0H 			//0091 	0180

		//;rx.c: 34: }
		LJUMP 	D0H 			//0092 	38D0

		//;rx.c: 35: else if (TmsRxH)
		LDR 	72H, 0H 			//0093 	1872
		BTSC 	3H, 2H 			//0094 	2903
		LJUMP 	D0H 			//0095 	38D0

		//;rx.c: 36: {
		//;rx.c: 37: if ((TmsRxH > TmsRxL)&&(TmsRxH>8))
		LDR 	72H, 0H 			//0096 	1872
		MOVLB 	1H 			//0097 	1021
		SUBWR 	50H, 0H 		//0098 	1250
		BTSC 	3H, 0H 			//0099 	2803
		LJUMP 	B7H 			//009A 	38B7
		LDWI 	9H 			//009B 	0009
		SUBWR 	72H, 0H 		//009C 	1272
		BTSS 	3H, 0H 			//009D 	2C03
		LJUMP 	B7H 			//009E 	38B7

		//;rx.c: 38: RxBuf[RxBit / 8] |= 0x80 >> (RxBit % 8);
		LDR 	73H, 0H 			//009F 	1873
		MOVLB 	0H 			//00A0 	1020
		STR 	2BH 			//00A1 	10AB
		LSRF 	2BH, 1H 		//00A2 	06AB
		LSRF 	2BH, 1H 		//00A3 	06AB
		LSRF 	2BH, 1H 		//00A4 	06AB
		LDR 	2BH, 0H 			//00A5 	182B
		LCALL 	1D4H 			//00A6 	31D4
		MOVLP 	0H 			//00A7 	0180
		STR 	2CH 			//00A8 	10AC
		LDWI 	80H 			//00A9 	0080
		INCR 	2CH, 1H 		//00AA 	1AAC
		STR 	2DH 			//00AB 	10AD
		LDWI 	0H 			//00AC 	0000
		STR 	2EH 			//00AD 	10AE
		LJUMP 	B2H 			//00AE 	38B2
		RLR 	2EH, 0H 			//00AF 	1D2E
		RRR 	2EH, 1H 			//00B0 	1CAE
		RRR 	2DH, 1H 			//00B1 	1CAD
		DECRSZ 	2CH, 1H 		//00B2 	1BAC
		LJUMP 	AFH 			//00B3 	38AF
		MOVLB 	0H 			//00B4 	1020
		LDR 	2DH, 0H 			//00B5 	182D
		IORWR 	1H, 1H 		//00B6 	1481

		//;rx.c: 39: TmsRxH = 0;
		//;rx.c: 40: TmsRxL = 0;
		//;rx.c: 41: if (++RxBit >= 32)
		LCALL 	1C7H 			//00B7 	31C7
		MOVLP 	0H 			//00B8 	0180
		BTSS 	3H, 0H 			//00B9 	2C03
		LJUMP 	D0H 			//00BA 	38D0

		//;rx.c: 42: {
		//;rx.c: 43: RxBit = 0;
		CLRF 	73H 			//00BB 	11F3

		//;rx.c: 45: if(RxBuf[1]-RxBuf[0]==0XDF)
		LDR 	30H, 0H 			//00BC 	1830
		MOVLB 	0H 			//00BD 	1020
		STR 	2BH 			//00BE 	10AB
		CLRF 	2CH 			//00BF 	11AC
		LDR 	2CH, 0H 			//00C0 	182C
		STR 	2EH 			//00C1 	10AE
		MOVLB 	1H 			//00C2 	1021
		LDR 	2FH, 0H 			//00C3 	182F
		MOVLB 	0H 			//00C4 	1020
		SUBWR 	2BH, 0H 		//00C5 	122B
		STR 	2DH 			//00C6 	10AD
		BTSS 	3H, 0H 			//00C7 	2C03
		DECR 	2EH, 1H 		//00C8 	13AE
		XORWI 	DFH 			//00C9 	0ADF
		IORWR 	2EH, 0H 		//00CA 	142E
		BTSS 	3H, 2H 			//00CB 	2D03
		LJUMP 	D0H 			//00CC 	38D0

		//;rx.c: 46: RxData = RxBuf[3];
		MOVLB 	1H 			//00CD 	1021
		LDR 	32H, 0H 			//00CE 	1832
		STR 	71H 			//00CF 	10F1

		//;rx.c: 47: }
		//;rx.c: 48: }
		//;rx.c: 49: if (TmsRxL < 250)
		//;rx.c: 50: TmsRxL++;
		LJUMP 	1CEH 			//00D0 	39CE

		//;CHIPINIT.C: 87: OSCCON = 0B01100001;
		LDWI 	61H 			//00D1 	0061
		MOVLB 	1H 			//00D2 	1021
		STR 	19H 			//00D3 	1099

		//;CHIPINIT.C: 98: INTCON = 0B00000000;
		CLRF 	BH 			//00D4 	118B

		//;CHIPINIT.C: 100: PORTA = 0B00000000;
		MOVLB 	0H 			//00D5 	1020
		CLRF 	CH 			//00D6 	118C

		//;CHIPINIT.C: 101: TRISA = 0B00000000;
		MOVLB 	1H 			//00D7 	1021
		CLRF 	CH 			//00D8 	118C

		//;CHIPINIT.C: 102: PORTB = 0B00000000;
		MOVLB 	0H 			//00D9 	1020
		CLRF 	DH 			//00DA 	118D

		//;CHIPINIT.C: 103: TRISB = 0B00010000;
		LDWI 	10H 			//00DB 	0010
		MOVLB 	1H 			//00DC 	1021
		STR 	DH 			//00DD 	108D

		//;CHIPINIT.C: 104: PORTC = 0B00000000;
		MOVLB 	0H 			//00DE 	1020
		CLRF 	EH 			//00DF 	118E

		//;CHIPINIT.C: 105: TRISC = 0B00000000;
		MOVLB 	1H 			//00E0 	1021
		CLRF 	EH 			//00E1 	118E

		//;CHIPINIT.C: 106: PORTD = 0B00000000;
		MOVLB 	0H 			//00E2 	1020
		CLRF 	FH 			//00E3 	118F

		//;CHIPINIT.C: 107: TRISD = 0B00000000;
		MOVLB 	1H 			//00E4 	1021
		CLRF 	FH 			//00E5 	118F

		//;CHIPINIT.C: 109: WPUA = 0B00000000;
		MOVLB 	3H 			//00E6 	1023
		CLRF 	CH 			//00E7 	118C

		//;CHIPINIT.C: 110: WPUB = 0B00010000;
		STR 	DH 			//00E8 	108D

		//;CHIPINIT.C: 111: WPUC = 0B00000000;
		CLRF 	EH 			//00E9 	118E

		//;CHIPINIT.C: 112: WPUD = 0B00000000;
		CLRF 	FH 			//00EA 	118F

		//;CHIPINIT.C: 114: WPDA = 0B00000000;
		MOVLB 	4H 			//00EB 	1024
		CLRF 	CH 			//00EC 	118C

		//;CHIPINIT.C: 115: WPDB = 0B00000000;
		CLRF 	DH 			//00ED 	118D

		//;CHIPINIT.C: 116: WPDC = 0B00000000;
		CLRF 	EH 			//00EE 	118E

		//;CHIPINIT.C: 117: WPDD = 0B00000000;
		CLRF 	FH 			//00EF 	118F

		//;CHIPINIT.C: 119: PSRC0 = 0B11111111;
		LDWI 	FFH 			//00F0 	00FF
		MOVLB 	2H 			//00F1 	1022
		STR 	1AH 			//00F2 	109A

		//;CHIPINIT.C: 123: PSRC1 = 0B11111111;
		STR 	1BH 			//00F3 	109B

		//;CHIPINIT.C: 127: PSINK0 = 0B11111111;
		MOVLB 	3H 			//00F4 	1023
		STR 	1AH 			//00F5 	109A

		//;CHIPINIT.C: 128: PSINK1 = 0B11111111;
		STR 	1BH 			//00F6 	109B

		//;CHIPINIT.C: 129: PSINK2 = 0B11111111;
		STR 	1CH 			//00F7 	109C

		//;CHIPINIT.C: 130: PSINK3 = 0B11111111;
		STR 	1DH 			//00F8 	109D

		//;CHIPINIT.C: 132: ANSELA = 0B00000000;
		CLRF 	17H 			//00F9 	1197
		RET 					//00FA 	1008

		//;CHIPINIT.C: 477: PCKEN |=0B00000100;
		BSR 	1AH, 2H 			//00FB 	251A

		//;CHIPINIT.C: 478: CKOCON=0B00100000;
		LDWI 	20H 			//00FC 	0020
		STR 	15H 			//00FD 	1095

		//;CHIPINIT.C: 479: TCKSRC|=0B00010000;
		MOVLB 	6H 			//00FE 	1026
		BSR 	1FH, 4H 			//00FF 	261F

		//;CHIPINIT.C: 480: TIM2CR1 =0B10000101;
		LDWI 	85H 			//0100 	0085
		STR 	CH 			//0101 	108C

		//;CHIPINIT.C: 481: TIM2IER =0B00000001;
		LDWI 	1H 			//0102 	0001
		STR 	DH 			//0103 	108D

		//;CHIPINIT.C: 484: TIM2ARRH =0x06;
		LDWI 	6H 			//0104 	0006
		STR 	19H 			//0105 	1099

		//;CHIPINIT.C: 485: TIM2ARRL =0x40;
		LDWI 	40H 			//0106 	0040
		STR 	1AH 			//0107 	109A
		RET 					//0108 	1008

		//;CHIPINIT.C: 497: PCKEN |=0B00001000;
		MOVLB 	1H 			//0109 	1021
		BSR 	1AH, 3H 			//010A 	259A

		//;CHIPINIT.C: 501: TIM4CR1 =0B00000101;
		LDWI 	5H 			//010B 	0005
		MOVLB 	2H 			//010C 	1022
		STR 	11H 			//010D 	1091

		//;CHIPINIT.C: 532: TIM4IER =0B00000001;
		LDWI 	1H 			//010E 	0001
		STR 	12H 			//010F 	1092

		//;CHIPINIT.C: 535: TIM4SR =0B00000000;
		CLRF 	13H 			//0110 	1193

		//;CHIPINIT.C: 544: TIM4EGR =0B00000000;
		CLRF 	14H 			//0111 	1194

		//;CHIPINIT.C: 549: TIM4CNTR=0;
		CLRF 	15H 			//0112 	1195

		//;CHIPINIT.C: 551: TIM4PSCR=0B00000110;
		LDWI 	6H 			//0113 	0006
		STR 	16H 			//0114 	1096

		//;CHIPINIT.C: 555: TIM4ARR =124;
		LDWI 	7CH 			//0115 	007C
		STR 	17H 			//0116 	1097

		//;CHIPINIT.C: 556: TIM4ARR =22;
		LDWI 	16H 			//0117 	0016
		STR 	17H 			//0118 	1097
		RET 					//0119 	1008
		MOVLB 	1H 			//011A 	1021
		BSR 	DH, 7H 			//011B 	278D
		BSR 	DH, 2H 			//011C 	250D
		BSR 	EH, 4H 			//011D 	260E
		BSR 	EH, 5H 			//011E 	268E
		BSR 	EH, 6H 			//011F 	270E
		BSR 	EH, 7H 			//0120 	278E
		LDWI 	1H 			//0121 	0001
		STR 	70H 			//0122 	10F0
		LDWI 	3CH 			//0123 	003C
		STR 	4H 			//0124 	1084
		LDWI 	85H 			//0125 	0085
		STR 	5H 			//0126 	1085
		LDR 	0H, 0H 			//0127 	1800
		STR 	70H 			//0128 	10F0
		LDWI 	38H 			//0129 	0038
		STR 	4H 			//012A 	1084
		LDWI 	85H 			//012B 	0085
		STR 	5H 			//012C 	1085
		LDR 	0H, 0H 			//012D 	1800
		STR 	70H 			//012E 	10F0
		CLRF 	70H 			//012F 	11F0
		CLRF 	70H 			//0130 	11F0
		CLRF 	70H 			//0131 	11F0
		CLRF 	5FH 			//0132 	11DF
		CLRF 	4AH 			//0133 	11CA
		CLRF 	70H 			//0134 	11F0
		LDWI 	FH 			//0135 	000F
		SUBWR 	70H, 0H 		//0136 	1270
		BTSC 	3H, 0H 			//0137 	2803
		LJUMP 	153H 			//0138 	3953
		LDWI 	80H 			//0139 	0080
		MOVLB 	0H 			//013A 	1020
		STR 	2BH 			//013B 	10AB
		LDWI 	78H 			//013C 	0078
		STR 	2CH 			//013D 	10AC
		INCR 	70H, 0H 		//013E 	1A70
		LJUMP 	142H 			//013F 	3942
		LSRF 	2CH, 1H 		//0140 	06AC
		RRR 	2BH, 1H 			//0141 	1CAB
		DECRSZ 	9H, 1H 		//0142 	1B89
		LJUMP 	140H 			//0143 	3940
		BTSS 	2BH, 0H 		//0144 	2C2B
		LJUMP 	14EH 			//0145 	394E
		MOVLB 	1H 			//0146 	1021
		LDR 	5FH, 0H 			//0147 	185F
		ADDWI 	A0H 			//0148 	0EA0
		STR 	6H 			//0149 	1086
		CLRF 	7H 			//014A 	1187
		LDR 	70H, 0H 			//014B 	1870
		STR 	1H 			//014C 	1081
		INCR 	5FH, 1H 		//014D 	1ADF
		INCR 	70H, 1H 		//014E 	1AF0
		LDWI 	FH 			//014F 	000F
		SUBWR 	70H, 0H 		//0150 	1270
		BTSS 	3H, 0H 			//0151 	2C03
		LJUMP 	139H 			//0152 	3939
		MOVLB 	1H 			//0153 	1021
		LDR 	20H, 0H 			//0154 	1820
		STR 	5FH 			//0155 	10DF
		RET 					//0156 	1008

		//;CHIPINIT.C: 590: PCKEN |=0B00100000;
		BSR 	1AH, 5H 			//0157 	269A

		//;CHIPINIT.C: 592: URIER =0B00000000;
		MOVLB 	9H 			//0158 	1029
		CLRF 	EH 			//0159 	118E

		//;CHIPINIT.C: 593: URLCR =0B00000001;
		LDWI 	1H 			//015A 	0001
		STR 	FH 			//015B 	108F

		//;CHIPINIT.C: 594: URMCR =0B00011000;
		LDWI 	18H 			//015C 	0018
		STR 	11H 			//015D 	1091

		//;CHIPINIT.C: 597: URDLL =52;
		LDWI 	34H 			//015E 	0034
		STR 	14H 			//015F 	1094

		//;CHIPINIT.C: 598: URDLH =0;
		CLRF 	15H 			//0160 	1195

		//;CHIPINIT.C: 599: TCF=1;
		BSR 	1CH, 0H 			//0161 	241C
		RET 					//0162 	1008

		//;CHIPINIT.C: 666: SysFunFlg0.AllBits = 0;
		MOVLB 	1H 			//0163 	1021
		CLRF 	5DH 			//0164 	11DD

		//;CHIPINIT.C: 667: SysFunFlg1.AllBits = 0;
		CLRF 	58H 			//0165 	11D8

		//;CHIPINIT.C: 668: SysFunFlg2.AllBits = 0;
		CLRF 	51H 			//0166 	11D1

		//;CHIPINIT.C: 671: KeyType=NullKey;
		LCALL 	171H 			//0167 	3171

		//;CHIPINIT.C: 672: DspIndex =DsSty;
		CLRF 	57H 			//0168 	11D7
		RET 					//0169 	1008
		CLRWDT 			//016A 	1064

		//;CHIPINIT.C: 46: MISC0 = 0B00000000;
		MOVLB 	2H 			//016B 	1022
		CLRF 	1CH 			//016C 	119C

		//;CHIPINIT.C: 47: WDTCON = 0B00001011;
		LDWI 	BH 			//016D 	000B
		MOVLB 	1H 			//016E 	1021
		STR 	17H 			//016F 	1097
		RET 					//0170 	1008

		//;CHIPINIT.C: 658: Time100Ms=0;
		CLRF 	53H 			//0171 	11D3

		//;CHIPINIT.C: 659: TimeSec=0;
		CLRF 	52H 			//0172 	11D2
		RET 					//0173 	1008

		//;rx.c: 16: if (PB4 == 1)
		MOVLB 	0H 			//0174 	1020
		BTSS 	DH, 4H 			//0175 	2E0D
		LJUMP 	17FH 			//0176 	397F

		//;rx.c: 17: {
		//;rx.c: 18: if (TmsRxH < 250)
		LDWI 	FAH 			//0177 	00FA
		SUBWR 	72H, 0H 		//0178 	1272
		BTSC 	3H, 0H 			//0179 	2803
		LJUMP 	17DH 			//017A 	397D

		//;rx.c: 19: TmsRxH++;
		INCR 	72H, 1H 		//017B 	1AF2
		RET 					//017C 	1008

		//;rx.c: 20: else
		//;rx.c: 21: RxBit = 0;
		CLRF 	73H 			//017D 	11F3
		RET 					//017E 	1008

		//;rx.c: 23: else
		//;rx.c: 24: {
		//;rx.c: 25: if (TmsRxH >= 20)
		LDWI 	14H 			//017F 	0014
		SUBWR 	72H, 0H 		//0180 	1272
		BTSS 	3H, 0H 			//0181 	2C03
		LJUMP 	186H 			//0182 	3986

		//;rx.c: 26: {
		//;rx.c: 27: TmsRxH = 0;
		//;rx.c: 28: TmsRxL = 0;
		//;rx.c: 29: RxBit = 0;
		//;rx.c: 30: RxBuf[0] = 0;
		//;rx.c: 31: RxBuf[1] = 0;
		//;rx.c: 32: RxBuf[2] = 0;
		//;rx.c: 33: RxBuf[3] = 0;
		LCALL 	1BEH 			//0183 	31BE
		MOVLP 	0H 			//0184 	0180

		//;rx.c: 34: }
		LJUMP 	1BDH 			//0185 	39BD

		//;rx.c: 35: else if (TmsRxH)
		LDR 	72H, 0H 			//0186 	1872
		BTSC 	3H, 2H 			//0187 	2903
		LJUMP 	1BDH 			//0188 	39BD

		//;rx.c: 36: {
		//;rx.c: 37: if ((TmsRxH > TmsRxL)&&(TmsRxH>8))
		LDR 	72H, 0H 			//0189 	1872
		MOVLB 	1H 			//018A 	1021
		SUBWR 	50H, 0H 		//018B 	1250
		BTSC 	3H, 0H 			//018C 	2803
		LJUMP 	1A8H 			//018D 	39A8
		LDWI 	9H 			//018E 	0009
		SUBWR 	72H, 0H 		//018F 	1272
		BTSS 	3H, 0H 			//0190 	2C03
		LJUMP 	1A8H 			//0191 	39A8

		//;rx.c: 38: RxBuf[RxBit / 8] |= 0x80 >> (RxBit % 8);
		LDR 	73H, 0H 			//0192 	1873
		STR 	76H 			//0193 	10F6
		LSRF 	76H, 1H 		//0194 	06F6
		LSRF 	76H, 1H 		//0195 	06F6
		LSRF 	76H, 1H 		//0196 	06F6
		LDR 	76H, 0H 			//0197 	1876
		LCALL 	1D4H 			//0198 	31D4
		MOVLP 	0H 			//0199 	0180
		STR 	77H 			//019A 	10F7
		LDWI 	80H 			//019B 	0080
		INCR 	77H, 1H 		//019C 	1AF7
		STR 	78H 			//019D 	10F8
		LDWI 	0H 			//019E 	0000
		STR 	79H 			//019F 	10F9
		LJUMP 	1A4H 			//01A0 	39A4
		RLR 	79H, 0H 			//01A1 	1D79
		RRR 	79H, 1H 			//01A2 	1CF9
		RRR 	78H, 1H 			//01A3 	1CF8
		DECRSZ 	77H, 1H 		//01A4 	1BF7
		LJUMP 	1A1H 			//01A5 	39A1
		LDR 	78H, 0H 			//01A6 	1878
		IORWR 	1H, 1H 		//01A7 	1481

		//;rx.c: 39: TmsRxH = 0;
		//;rx.c: 40: TmsRxL = 0;
		//;rx.c: 41: if (++RxBit >= 32)
		LCALL 	1C7H 			//01A8 	31C7
		MOVLP 	0H 			//01A9 	0180
		BTSS 	3H, 0H 			//01AA 	2C03
		LJUMP 	1BDH 			//01AB 	39BD

		//;rx.c: 42: {
		//;rx.c: 43: RxBit = 0;
		CLRF 	73H 			//01AC 	11F3

		//;rx.c: 45: if(RxBuf[1]-RxBuf[0]==0XDF)
		LDR 	30H, 0H 			//01AD 	1830
		STR 	76H 			//01AE 	10F6
		CLRF 	77H 			//01AF 	11F7
		LDR 	77H, 0H 			//01B0 	1877
		STR 	79H 			//01B1 	10F9
		LDR 	2FH, 0H 			//01B2 	182F
		SUBWR 	76H, 0H 		//01B3 	1276
		STR 	78H 			//01B4 	10F8
		BTSS 	3H, 0H 			//01B5 	2C03
		DECR 	79H, 1H 		//01B6 	13F9
		XORWI 	DFH 			//01B7 	0ADF
		IORWR 	79H, 0H 		//01B8 	1479
		BTSS 	3H, 2H 			//01B9 	2D03
		LJUMP 	1BDH 			//01BA 	39BD

		//;rx.c: 46: RxData = RxBuf[3];
		LDR 	32H, 0H 			//01BB 	1832
		STR 	71H 			//01BC 	10F1

		//;rx.c: 47: }
		//;rx.c: 48: }
		//;rx.c: 49: if (TmsRxL < 250)
		//;rx.c: 50: TmsRxL++;
		LJUMP 	1CEH 			//01BD 	39CE
		CLRF 	72H 			//01BE 	11F2
		MOVLB 	1H 			//01BF 	1021
		CLRF 	50H 			//01C0 	11D0
		CLRF 	73H 			//01C1 	11F3
		CLRF 	2FH 			//01C2 	11AF
		CLRF 	30H 			//01C3 	11B0
		CLRF 	31H 			//01C4 	11B1
		CLRF 	32H 			//01C5 	11B2
		RET 					//01C6 	1008
		CLRF 	72H 			//01C7 	11F2
		MOVLB 	1H 			//01C8 	1021
		LDWI 	20H 			//01C9 	0020
		CLRF 	50H 			//01CA 	11D0
		INCR 	73H, 1H 		//01CB 	1AF3
		SUBWR 	73H, 0H 		//01CC 	1273
		RET 					//01CD 	1008
		LDWI 	FAH 			//01CE 	00FA
		MOVLB 	1H 			//01CF 	1021
		SUBWR 	50H, 0H 		//01D0 	1250
		BTSS 	3H, 0H 			//01D1 	2C03
		INCR 	50H, 1H 		//01D2 	1AD0
		RET 					//01D3 	1008
		ADDWI 	AFH 			//01D4 	0EAF
		STR 	6H 			//01D5 	1086
		LDWI 	7H 			//01D6 	0007
		CLRF 	7H 			//01D7 	1187
		ANDWR 	73H, 0H 		//01D8 	1573
		RET 					//01D9 	1008

		//;sub.c: 245: static unsigned char LedMenuIndex=0;
		//;sub.c: 246: static unsigned char DspBuf,DspCnt;
		//;sub.c: 248: if(++DspCnt <=16 )return;
		LDWI 	11H 			//01DA 	0011
		MOVLB 	1H 			//01DB 	1021
		INCR 	4DH, 1H 		//01DC 	1ACD
		SUBWR 	4DH, 0H 		//01DD 	124D
		BTSS 	3H, 0H 			//01DE 	2C03
		RET 					//01DF 	1008

		//;sub.c: 249: DspCnt = 0;
		CLRF 	4DH 			//01E0 	11CD

		//;sub.c: 251: {LATB1=0;LATD1=0;LATC1=0;LATC0=0; LATA0=0;LATB0=0;LATB3=0; LATA4=0;LATD2=0;
		//+                          LATA1=0;LATD3=0;};
		LCALL 	498H 			//01E1 	3498
		MOVLP 	1H 			//01E2 	0181

		//;sub.c: 255: LedMenuIndex++;
		MOVLB 	1H 			//01E3 	1021
		LDWI 	4H 			//01E4 	0004
		INCR 	4FH, 1H 		//01E5 	1ACF

		//;sub.c: 256: if(LedMenuIndex>3)
		SUBWR 	4FH, 0H 		//01E6 	124F
		BTSS 	3H, 0H 			//01E7 	2C03
		LJUMP 	258H 			//01E8 	3A58

		//;sub.c: 257: LedMenuIndex=0;
		CLRF 	4FH 			//01E9 	11CF
		LJUMP 	258H 			//01EA 	3A58

		//;sub.c: 262: if(PwrType)
		LDR 	5CH, 0H 			//01EB 	185C
		BTSC 	3H, 2H 			//01EC 	2903
		LJUMP 	210H 			//01ED 	3A10

		//;sub.c: 263: {
		//;sub.c: 264: if(PwrType)LATD2=1;
		LDR 	5CH, 0H 			//01EE 	185C
		BTSC 	3H, 2H 			//01EF 	2903
		LJUMP 	1F3H 			//01F0 	39F3
		MOVLB 	2H 			//01F1 	1022
		BSR 	FH, 2H 			//01F2 	250F

		//;sub.c: 266: if(HeatType==1)LATA4=1;
		MOVLB 	1H 			//01F3 	1021
		DECRSZ 	5BH, 0H 		//01F4 	1B5B
		LJUMP 	1F8H 			//01F5 	39F8
		MOVLB 	2H 			//01F6 	1022
		BSR 	CH, 4H 			//01F7 	260C

		//;sub.c: 268: if(ManualType||ModeType)
		MOVLB 	1H 			//01F8 	1021
		LDR 	59H, 0H 			//01F9 	1859
		BTSC 	3H, 2H 			//01FA 	2903
		LDR 	75H, 0H 			//01FB 	1875
		BTSC 	3H, 2H 			//01FC 	2903
		LJUMP 	210H 			//01FD 	3A10

		//;sub.c: 269: {
		//;sub.c: 282: if(StrongType==1){
		DECRSZ 	5AH, 0H 		//01FE 	1B5A
		LJUMP 	203H 			//01FF 	3A03

		//;sub.c: 283: LATB3=1;
		MOVLB 	2H 			//0200 	1022
		BSR 	DH, 3H 			//0201 	258D

		//;sub.c: 284: }
		LJUMP 	210H 			//0202 	3A10

		//;sub.c: 285: else if(StrongType==2){
		LDWI 	2H 			//0203 	0002
		XORWR 	5AH, 0H 		//0204 	165A
		BTSS 	3H, 2H 			//0205 	2D03
		LJUMP 	20AH 			//0206 	3A0A

		//;sub.c: 286: LATB0=1;
		MOVLB 	2H 			//0207 	1022
		BSR 	DH, 0H 			//0208 	240D

		//;sub.c: 287: }
		LJUMP 	210H 			//0209 	3A10

		//;sub.c: 288: else if(StrongType==3){
		LDWI 	3H 			//020A 	0003
		XORWR 	5AH, 0H 		//020B 	165A
		BTSS 	3H, 2H 			//020C 	2D03
		LJUMP 	210H 			//020D 	3A10

		//;sub.c: 289: LATA0=1;
		MOVLB 	2H 			//020E 	1022
		BSR 	CH, 0H 			//020F 	240C

		//;sub.c: 290: }
		//;sub.c: 291: }
		//;sub.c: 292: }
		//;sub.c: 293: {LATB1=1;LATD1=0;LATC1=0;LATC0=0;};
		MOVLB 	2H 			//0210 	1022
		BSR 	DH, 1H 			//0211 	248D
		BCR 	FH, 1H 			//0212 	208F
		BCR 	EH, 1H 			//0213 	208E
		BCR 	EH, 0H 			//0214 	200E

		//;sub.c: 294: break;
		RET 					//0215 	1008

		//;sub.c: 296: if(PwrType)
		LDR 	5CH, 0H 			//0216 	185C
		BTSC 	3H, 2H 			//0217 	2903
		LJUMP 	23EH 			//0218 	3A3E

		//;sub.c: 297: {
		//;sub.c: 298: if(ModeType==1){ LATB3=1; }
		DECRSZ 	75H, 0H 		//0219 	1B75
		LJUMP 	21EH 			//021A 	3A1E
		MOVLB 	2H 			//021B 	1022
		BSR 	DH, 3H 			//021C 	258D
		LJUMP 	22BH 			//021D 	3A2B

		//;sub.c: 299: else if(ModeType==2){ LATB0=1; }
		LDWI 	2H 			//021E 	0002
		XORWR 	75H, 0H 		//021F 	1675
		BTSS 	3H, 2H 			//0220 	2D03
		LJUMP 	225H 			//0221 	3A25
		MOVLB 	2H 			//0222 	1022
		BSR 	DH, 0H 			//0223 	240D
		LJUMP 	22BH 			//0224 	3A2B

		//;sub.c: 300: else if(ModeType==3){ LATA0=1; }
		LDWI 	3H 			//0225 	0003
		XORWR 	75H, 0H 		//0226 	1675
		BTSS 	3H, 2H 			//0227 	2D03
		LJUMP 	22BH 			//0228 	3A2B
		MOVLB 	2H 			//0229 	1022
		BSR 	CH, 0H 			//022A 	240C

		//;sub.c: 302: if(ManualType==1)LATA4=1;
		MOVLB 	1H 			//022B 	1021
		DECRSZ 	59H, 0H 		//022C 	1B59
		LJUMP 	231H 			//022D 	3A31
		MOVLB 	2H 			//022E 	1022
		BSR 	CH, 4H 			//022F 	260C
		LJUMP 	23EH 			//0230 	3A3E

		//;sub.c: 303: else if(ManualType==2){LATA4=1;LATD2=1;}
		LDWI 	2H 			//0231 	0002
		XORWR 	59H, 0H 		//0232 	1659
		BTSS 	3H, 2H 			//0233 	2D03
		LJUMP 	238H 			//0234 	3A38
		MOVLB 	2H 			//0235 	1022
		BSR 	CH, 4H 			//0236 	260C
		LJUMP 	23DH 			//0237 	3A3D

		//;sub.c: 304: else if(ManualType==3)LATD2=1;
		LDWI 	3H 			//0238 	0003
		XORWR 	59H, 0H 		//0239 	1659
		BTSS 	3H, 2H 			//023A 	2D03
		LJUMP 	23EH 			//023B 	3A3E
		MOVLB 	2H 			//023C 	1022
		BSR 	FH, 2H 			//023D 	250F

		//;sub.c: 305: }
		//;sub.c: 306: {LATD1=1;LATB1=0;LATC1=0;LATC0=0;};
		MOVLB 	2H 			//023E 	1022
		BSR 	FH, 1H 			//023F 	248F
		BCR 	DH, 1H 			//0240 	208D
		BCR 	EH, 1H 			//0241 	208E
		BCR 	EH, 0H 			//0242 	200E

		//;sub.c: 307: break;
		RET 					//0243 	1008

		//;sub.c: 310: DspBuf=SpecialDisplay1();
		LCALL 	42CH 			//0244 	342C
		MOVLP 	1H 			//0245 	0181
		STR 	4EH 			//0246 	10CE

		//;sub.c: 311: ShowLedData(DspBuf);
		LCALL 	267H 			//0247 	3267

		//;sub.c: 312: {LATC1=1;LATB1=0;LATD1=0;LATC0=0;};
		MOVLB 	2H 			//0248 	1022
		BSR 	EH, 1H 			//0249 	248E
		BCR 	DH, 1H 			//024A 	208D
		BCR 	FH, 1H 			//024B 	208F
		BCR 	EH, 0H 			//024C 	200E

		//;sub.c: 313: break;
		RET 					//024D 	1008

		//;sub.c: 316: DspBuf=SpecialDisplay2();
		LCALL 	460H 			//024E 	3460
		MOVLP 	1H 			//024F 	0181
		STR 	4EH 			//0250 	10CE

		//;sub.c: 317: ShowLedData(DspBuf);
		LCALL 	267H 			//0251 	3267

		//;sub.c: 318: {LATC0=1;LATB1=0;LATD1=0;LATC1=0;};
		MOVLB 	2H 			//0252 	1022
		BSR 	EH, 0H 			//0253 	240E
		BCR 	DH, 1H 			//0254 	208D
		BCR 	FH, 1H 			//0255 	208F
		BCR 	EH, 1H 			//0256 	208E

		//;sub.c: 319: break;
		RET 					//0257 	1008
		LDR 	4FH, 0H 			//0258 	184F
		XORWI 	0H 			//0259 	0A00
		BTSC 	3H, 2H 			//025A 	2903
		LJUMP 	1EBH 			//025B 	39EB
		XORWI 	1H 			//025C 	0A01
		BTSC 	3H, 2H 			//025D 	2903
		LJUMP 	216H 			//025E 	3A16
		XORWI 	3H 			//025F 	0A03
		BTSC 	3H, 2H 			//0260 	2903
		LJUMP 	244H 			//0261 	3A44
		XORWI 	1H 			//0262 	0A01
		BTSC 	3H, 2H 			//0263 	2903
		LJUMP 	24EH 			//0264 	3A4E
		LJUMP 	266H 			//0265 	3A66
		RET 					//0266 	1008
		STR 	76H 			//0267 	10F6

		//;sub.c: 186: switch (DspBuf)
		LJUMP 	421H 			//0268 	3C21

		//;sub.c: 187: {
		//;sub.c: 188: case 1: LATB0=LATB3=1;
		MOVLB 	2H 			//0269 	1022
		BSR 	DH, 3H 			//026A 	258D
		BTSS 	DH, 3H 			//026B 	2D8D
		LJUMP 	270H 			//026C 	3A70
		MOVLB 	2H 			//026D 	1022
		BSR 	DH, 0H 			//026E 	240D
		RET 					//026F 	1008
		MOVLB 	2H 			//0270 	1022
		BCR 	DH, 0H 			//0271 	200D

		//;sub.c: 189: break; case 2: LATA0=LATB0=LATA4=LATD2=LATD3=1;
		RET 					//0272 	1008
		MOVLB 	2H 			//0273 	1022
		BSR 	FH, 3H 			//0274 	258F
		BTSS 	FH, 3H 			//0275 	2D8F
		LJUMP 	27AH 			//0276 	3A7A
		MOVLB 	2H 			//0277 	1022
		BSR 	FH, 2H 			//0278 	250F
		LJUMP 	27CH 			//0279 	3A7C
		MOVLB 	2H 			//027A 	1022
		BCR 	FH, 2H 			//027B 	210F
		BTSS 	FH, 2H 			//027C 	2D0F
		LJUMP 	281H 			//027D 	3A81
		MOVLB 	2H 			//027E 	1022
		BSR 	CH, 4H 			//027F 	260C
		LJUMP 	283H 			//0280 	3A83
		MOVLB 	2H 			//0281 	1022
		BCR 	CH, 4H 			//0282 	220C
		BTSS 	CH, 4H 			//0283 	2E0C
		LJUMP 	288H 			//0284 	3A88
		MOVLB 	2H 			//0285 	1022
		BSR 	DH, 0H 			//0286 	240D
		LJUMP 	28AH 			//0287 	3A8A
		MOVLB 	2H 			//0288 	1022
		BCR 	DH, 0H 			//0289 	200D
		BTSS 	DH, 0H 			//028A 	2C0D
		LJUMP 	28FH 			//028B 	3A8F
		MOVLB 	2H 			//028C 	1022
		BSR 	CH, 0H 			//028D 	240C
		RET 					//028E 	1008
		MOVLB 	2H 			//028F 	1022
		BCR 	CH, 0H 			//0290 	200C

		//;sub.c: 190: break; case 3: LATA0=LATB0=LATB3=LATA4=LATD3=1;
		RET 					//0291 	1008
		MOVLB 	2H 			//0292 	1022
		BSR 	FH, 3H 			//0293 	258F
		BTSS 	FH, 3H 			//0294 	2D8F
		LJUMP 	299H 			//0295 	3A99
		MOVLB 	2H 			//0296 	1022
		BSR 	CH, 4H 			//0297 	260C
		LJUMP 	29BH 			//0298 	3A9B
		MOVLB 	2H 			//0299 	1022
		BCR 	CH, 4H 			//029A 	220C
		BTSS 	CH, 4H 			//029B 	2E0C
		LJUMP 	2A0H 			//029C 	3AA0
		MOVLB 	2H 			//029D 	1022
		BSR 	DH, 3H 			//029E 	258D
		LJUMP 	2A2H 			//029F 	3AA2
		MOVLB 	2H 			//02A0 	1022
		BCR 	DH, 3H 			//02A1 	218D
		BTSS 	DH, 3H 			//02A2 	2D8D
		LJUMP 	2A7H 			//02A3 	3AA7
		MOVLB 	2H 			//02A4 	1022
		BSR 	DH, 0H 			//02A5 	240D
		LJUMP 	2A9H 			//02A6 	3AA9
		MOVLB 	2H 			//02A7 	1022
		BCR 	DH, 0H 			//02A8 	200D
		BTSS 	DH, 0H 			//02A9 	2C0D
		LJUMP 	2AEH 			//02AA 	3AAE
		MOVLB 	2H 			//02AB 	1022
		BSR 	CH, 0H 			//02AC 	240C
		RET 					//02AD 	1008
		MOVLB 	2H 			//02AE 	1022
		BCR 	CH, 0H 			//02AF 	200C

		//;sub.c: 191: break; case 4: LATB0=LATB3=LATA1=LATD3=1;
		RET 					//02B0 	1008
		MOVLB 	2H 			//02B1 	1022
		BSR 	FH, 3H 			//02B2 	258F
		BTSS 	FH, 3H 			//02B3 	2D8F
		LJUMP 	2B8H 			//02B4 	3AB8
		MOVLB 	2H 			//02B5 	1022
		BSR 	CH, 1H 			//02B6 	248C
		LJUMP 	2BAH 			//02B7 	3ABA
		MOVLB 	2H 			//02B8 	1022
		BCR 	CH, 1H 			//02B9 	208C
		BTSS 	CH, 1H 			//02BA 	2C8C
		LJUMP 	2BFH 			//02BB 	3ABF
		MOVLB 	2H 			//02BC 	1022
		BSR 	DH, 3H 			//02BD 	258D
		LJUMP 	2C1H 			//02BE 	3AC1
		MOVLB 	2H 			//02BF 	1022
		BCR 	DH, 3H 			//02C0 	218D
		BTSS 	DH, 3H 			//02C1 	2D8D
		LJUMP 	2C6H 			//02C2 	3AC6
		MOVLB 	2H 			//02C3 	1022
		BSR 	DH, 0H 			//02C4 	240D
		RET 					//02C5 	1008
		MOVLB 	2H 			//02C6 	1022
		BCR 	DH, 0H 			//02C7 	200D

		//;sub.c: 192: break; case 5: LATA0=LATB3=LATA4=LATA1=LATD3=1;
		RET 					//02C8 	1008
		MOVLB 	2H 			//02C9 	1022
		BSR 	FH, 3H 			//02CA 	258F
		BTSS 	FH, 3H 			//02CB 	2D8F
		LJUMP 	2D0H 			//02CC 	3AD0
		MOVLB 	2H 			//02CD 	1022
		BSR 	CH, 1H 			//02CE 	248C
		LJUMP 	2D2H 			//02CF 	3AD2
		MOVLB 	2H 			//02D0 	1022
		BCR 	CH, 1H 			//02D1 	208C
		BTSS 	CH, 1H 			//02D2 	2C8C
		LJUMP 	2D7H 			//02D3 	3AD7
		MOVLB 	2H 			//02D4 	1022
		BSR 	CH, 4H 			//02D5 	260C
		LJUMP 	2D9H 			//02D6 	3AD9
		MOVLB 	2H 			//02D7 	1022
		BCR 	CH, 4H 			//02D8 	220C
		BTSS 	CH, 4H 			//02D9 	2E0C
		LJUMP 	2DEH 			//02DA 	3ADE
		MOVLB 	2H 			//02DB 	1022
		BSR 	DH, 3H 			//02DC 	258D
		LJUMP 	2E0H 			//02DD 	3AE0
		MOVLB 	2H 			//02DE 	1022
		BCR 	DH, 3H 			//02DF 	218D
		BTSS 	DH, 3H 			//02E0 	2D8D
		LJUMP 	2E5H 			//02E1 	3AE5
		MOVLB 	2H 			//02E2 	1022
		BSR 	CH, 0H 			//02E3 	240C
		RET 					//02E4 	1008
		MOVLB 	2H 			//02E5 	1022
		BCR 	CH, 0H 			//02E6 	200C

		//;sub.c: 193: break; case 6: LATA0=LATD3=LATB3=LATA4=LATD2=LATA1=1;
		RET 					//02E7 	1008
		MOVLB 	2H 			//02E8 	1022
		BSR 	CH, 1H 			//02E9 	248C
		BTSS 	CH, 1H 			//02EA 	2C8C
		LJUMP 	2EFH 			//02EB 	3AEF
		MOVLB 	2H 			//02EC 	1022
		BSR 	FH, 2H 			//02ED 	250F
		LJUMP 	2F1H 			//02EE 	3AF1
		MOVLB 	2H 			//02EF 	1022
		BCR 	FH, 2H 			//02F0 	210F
		BTSS 	FH, 2H 			//02F1 	2D0F
		LJUMP 	2F6H 			//02F2 	3AF6
		MOVLB 	2H 			//02F3 	1022
		BSR 	CH, 4H 			//02F4 	260C
		LJUMP 	2F8H 			//02F5 	3AF8
		MOVLB 	2H 			//02F6 	1022
		BCR 	CH, 4H 			//02F7 	220C
		BTSS 	CH, 4H 			//02F8 	2E0C
		LJUMP 	2FDH 			//02F9 	3AFD
		MOVLB 	2H 			//02FA 	1022
		BSR 	DH, 3H 			//02FB 	258D
		LJUMP 	2FFH 			//02FC 	3AFF
		MOVLB 	2H 			//02FD 	1022
		BCR 	DH, 3H 			//02FE 	218D
		BTSS 	DH, 3H 			//02FF 	2D8D
		LJUMP 	304H 			//0300 	3B04
		MOVLB 	2H 			//0301 	1022
		BSR 	FH, 3H 			//0302 	258F
		LJUMP 	306H 			//0303 	3B06
		MOVLB 	2H 			//0304 	1022
		BCR 	FH, 3H 			//0305 	218F
		BTSS 	FH, 3H 			//0306 	2D8F
		LJUMP 	30BH 			//0307 	3B0B
		MOVLB 	2H 			//0308 	1022
		BSR 	CH, 0H 			//0309 	240C
		RET 					//030A 	1008
		MOVLB 	2H 			//030B 	1022
		BCR 	CH, 0H 			//030C 	200C

		//;sub.c: 194: break; case 7: LATA0=LATB0=LATB3=1;
		RET 					//030D 	1008
		MOVLB 	2H 			//030E 	1022
		BSR 	DH, 3H 			//030F 	258D
		BTSS 	DH, 3H 			//0310 	2D8D
		LJUMP 	315H 			//0311 	3B15
		MOVLB 	2H 			//0312 	1022
		BSR 	DH, 0H 			//0313 	240D
		LJUMP 	317H 			//0314 	3B17
		MOVLB 	2H 			//0315 	1022
		BCR 	DH, 0H 			//0316 	200D
		BTSS 	DH, 0H 			//0317 	2C0D
		LJUMP 	31CH 			//0318 	3B1C
		MOVLB 	2H 			//0319 	1022
		BSR 	CH, 0H 			//031A 	240C
		RET 					//031B 	1008
		MOVLB 	2H 			//031C 	1022
		BCR 	CH, 0H 			//031D 	200C

		//;sub.c: 195: break; case 8: LATA0=LATB0=LATB3=LATA4=LATD2=LATA1=LATD3=1;
		RET 					//031E 	1008
		MOVLB 	2H 			//031F 	1022
		BSR 	FH, 3H 			//0320 	258F
		BTSS 	FH, 3H 			//0321 	2D8F
		LJUMP 	326H 			//0322 	3B26
		MOVLB 	2H 			//0323 	1022
		BSR 	CH, 1H 			//0324 	248C
		LJUMP 	328H 			//0325 	3B28
		MOVLB 	2H 			//0326 	1022
		BCR 	CH, 1H 			//0327 	208C
		BTSS 	CH, 1H 			//0328 	2C8C
		LJUMP 	32DH 			//0329 	3B2D
		MOVLB 	2H 			//032A 	1022
		BSR 	FH, 2H 			//032B 	250F
		LJUMP 	32FH 			//032C 	3B2F
		MOVLB 	2H 			//032D 	1022
		BCR 	FH, 2H 			//032E 	210F
		BTSS 	FH, 2H 			//032F 	2D0F
		LJUMP 	334H 			//0330 	3B34
		MOVLB 	2H 			//0331 	1022
		BSR 	CH, 4H 			//0332 	260C
		LJUMP 	336H 			//0333 	3B36
		MOVLB 	2H 			//0334 	1022
		BCR 	CH, 4H 			//0335 	220C
		BTSS 	CH, 4H 			//0336 	2E0C
		LJUMP 	33BH 			//0337 	3B3B
		MOVLB 	2H 			//0338 	1022
		BSR 	DH, 3H 			//0339 	258D
		LJUMP 	33DH 			//033A 	3B3D
		MOVLB 	2H 			//033B 	1022
		BCR 	DH, 3H 			//033C 	218D
		BTSS 	DH, 3H 			//033D 	2D8D
		LJUMP 	342H 			//033E 	3B42
		MOVLB 	2H 			//033F 	1022
		BSR 	DH, 0H 			//0340 	240D
		LJUMP 	344H 			//0341 	3B44
		MOVLB 	2H 			//0342 	1022
		BCR 	DH, 0H 			//0343 	200D
		BTSS 	DH, 0H 			//0344 	2C0D
		LJUMP 	349H 			//0345 	3B49
		MOVLB 	2H 			//0346 	1022
		BSR 	CH, 0H 			//0347 	240C
		RET 					//0348 	1008
		MOVLB 	2H 			//0349 	1022
		BCR 	CH, 0H 			//034A 	200C

		//;sub.c: 196: break; case 9: LATA0=LATB0=LATB3=LATA4=LATA1=LATD3=1;
		RET 					//034B 	1008
		MOVLB 	2H 			//034C 	1022
		BSR 	FH, 3H 			//034D 	258F
		BTSS 	FH, 3H 			//034E 	2D8F
		LJUMP 	353H 			//034F 	3B53
		MOVLB 	2H 			//0350 	1022
		BSR 	CH, 1H 			//0351 	248C
		LJUMP 	355H 			//0352 	3B55
		MOVLB 	2H 			//0353 	1022
		BCR 	CH, 1H 			//0354 	208C
		BTSS 	CH, 1H 			//0355 	2C8C
		LJUMP 	35AH 			//0356 	3B5A
		MOVLB 	2H 			//0357 	1022
		BSR 	CH, 4H 			//0358 	260C
		LJUMP 	35CH 			//0359 	3B5C
		MOVLB 	2H 			//035A 	1022
		BCR 	CH, 4H 			//035B 	220C
		BTSS 	CH, 4H 			//035C 	2E0C
		LJUMP 	361H 			//035D 	3B61
		MOVLB 	2H 			//035E 	1022
		BSR 	DH, 3H 			//035F 	258D
		LJUMP 	363H 			//0360 	3B63
		MOVLB 	2H 			//0361 	1022
		BCR 	DH, 3H 			//0362 	218D
		BTSS 	DH, 3H 			//0363 	2D8D
		LJUMP 	368H 			//0364 	3B68
		MOVLB 	2H 			//0365 	1022
		BSR 	DH, 0H 			//0366 	240D
		LJUMP 	36AH 			//0367 	3B6A
		MOVLB 	2H 			//0368 	1022
		BCR 	DH, 0H 			//0369 	200D
		BTSS 	DH, 0H 			//036A 	2C0D
		LJUMP 	36FH 			//036B 	3B6F
		MOVLB 	2H 			//036C 	1022
		BSR 	CH, 0H 			//036D 	240C
		RET 					//036E 	1008
		MOVLB 	2H 			//036F 	1022
		BCR 	CH, 0H 			//0370 	200C

		//;sub.c: 197: break; case 0: LATA0=LATB0=LATB3=LATA4=LATD2=LATA1=1;
		RET 					//0371 	1008
		MOVLB 	2H 			//0372 	1022
		BSR 	CH, 1H 			//0373 	248C
		BTSS 	CH, 1H 			//0374 	2C8C
		LJUMP 	379H 			//0375 	3B79
		MOVLB 	2H 			//0376 	1022
		BSR 	FH, 2H 			//0377 	250F
		LJUMP 	37BH 			//0378 	3B7B
		MOVLB 	2H 			//0379 	1022
		BCR 	FH, 2H 			//037A 	210F
		BTSS 	FH, 2H 			//037B 	2D0F
		LJUMP 	380H 			//037C 	3B80
		MOVLB 	2H 			//037D 	1022
		BSR 	CH, 4H 			//037E 	260C
		LJUMP 	382H 			//037F 	3B82
		MOVLB 	2H 			//0380 	1022
		BCR 	CH, 4H 			//0381 	220C
		BTSS 	CH, 4H 			//0382 	2E0C
		LJUMP 	387H 			//0383 	3B87
		MOVLB 	2H 			//0384 	1022
		BSR 	DH, 3H 			//0385 	258D
		LJUMP 	389H 			//0386 	3B89
		MOVLB 	2H 			//0387 	1022
		BCR 	DH, 3H 			//0388 	218D
		BTSS 	DH, 3H 			//0389 	2D8D
		LJUMP 	38EH 			//038A 	3B8E
		MOVLB 	2H 			//038B 	1022
		BSR 	DH, 0H 			//038C 	240D
		LJUMP 	390H 			//038D 	3B90
		MOVLB 	2H 			//038E 	1022
		BCR 	DH, 0H 			//038F 	200D
		BTSS 	DH, 0H 			//0390 	2C0D
		LJUMP 	395H 			//0391 	3B95
		MOVLB 	2H 			//0392 	1022
		BSR 	CH, 0H 			//0393 	240C
		RET 					//0394 	1008
		MOVLB 	2H 			//0395 	1022
		BCR 	CH, 0H 			//0396 	200C

		//;sub.c: 198: break; case 10: LATD3=0;
		RET 					//0397 	1008
		MOVLB 	2H 			//0398 	1022
		BCR 	FH, 3H 			//0399 	218F

		//;sub.c: 200: break; case 11: LATA0=LATB0=LATD2=LATA1=LATD3=1;
		RET 					//039A 	1008
		MOVLB 	2H 			//039B 	1022
		BSR 	FH, 3H 			//039C 	258F
		BTSS 	FH, 3H 			//039D 	2D8F
		LJUMP 	3A2H 			//039E 	3BA2
		MOVLB 	2H 			//039F 	1022
		BSR 	CH, 1H 			//03A0 	248C
		LJUMP 	3A4H 			//03A1 	3BA4
		MOVLB 	2H 			//03A2 	1022
		BCR 	CH, 1H 			//03A3 	208C
		BTSS 	CH, 1H 			//03A4 	2C8C
		LJUMP 	3A9H 			//03A5 	3BA9
		MOVLB 	2H 			//03A6 	1022
		BSR 	FH, 2H 			//03A7 	250F
		LJUMP 	3ABH 			//03A8 	3BAB
		MOVLB 	2H 			//03A9 	1022
		BCR 	FH, 2H 			//03AA 	210F
		BTSS 	FH, 2H 			//03AB 	2D0F
		LJUMP 	3B0H 			//03AC 	3BB0
		MOVLB 	2H 			//03AD 	1022
		BSR 	DH, 0H 			//03AE 	240D
		LJUMP 	3B2H 			//03AF 	3BB2
		MOVLB 	2H 			//03B0 	1022
		BCR 	DH, 0H 			//03B1 	200D
		BTSS 	DH, 0H 			//03B2 	2C0D
		LJUMP 	3B7H 			//03B3 	3BB7
		MOVLB 	2H 			//03B4 	1022
		BSR 	CH, 0H 			//03B5 	240C
		RET 					//03B6 	1008
		MOVLB 	2H 			//03B7 	1022
		BCR 	CH, 0H 			//03B8 	200C

		//;sub.c: 201: break; case 12: LATA0=LATA4=LATD2=LATA1=LATD3=1;
		RET 					//03B9 	1008
		MOVLB 	2H 			//03BA 	1022
		BSR 	FH, 3H 			//03BB 	258F
		BTSS 	FH, 3H 			//03BC 	2D8F
		LJUMP 	3C1H 			//03BD 	3BC1
		MOVLB 	2H 			//03BE 	1022
		BSR 	CH, 1H 			//03BF 	248C
		LJUMP 	3C3H 			//03C0 	3BC3
		MOVLB 	2H 			//03C1 	1022
		BCR 	CH, 1H 			//03C2 	208C
		BTSS 	CH, 1H 			//03C3 	2C8C
		LJUMP 	3C8H 			//03C4 	3BC8
		MOVLB 	2H 			//03C5 	1022
		BSR 	FH, 2H 			//03C6 	250F
		LJUMP 	3CAH 			//03C7 	3BCA
		MOVLB 	2H 			//03C8 	1022
		BCR 	FH, 2H 			//03C9 	210F
		BTSS 	FH, 2H 			//03CA 	2D0F
		LJUMP 	3CFH 			//03CB 	3BCF
		MOVLB 	2H 			//03CC 	1022
		BSR 	CH, 4H 			//03CD 	260C
		LJUMP 	3D1H 			//03CE 	3BD1
		MOVLB 	2H 			//03CF 	1022
		BCR 	CH, 4H 			//03D0 	220C
		BTSS 	CH, 4H 			//03D1 	2E0C
		LJUMP 	3D6H 			//03D2 	3BD6
		MOVLB 	2H 			//03D3 	1022
		BSR 	CH, 0H 			//03D4 	240C
		RET 					//03D5 	1008
		MOVLB 	2H 			//03D6 	1022
		BCR 	CH, 0H 			//03D7 	200C

		//;sub.c: 202: break; case 13: LATB0=LATB3=LATD2=LATA1=LATD3=1;
		RET 					//03D8 	1008
		MOVLB 	2H 			//03D9 	1022
		BSR 	FH, 3H 			//03DA 	258F
		BTSS 	FH, 3H 			//03DB 	2D8F
		LJUMP 	3E0H 			//03DC 	3BE0
		MOVLB 	2H 			//03DD 	1022
		BSR 	CH, 1H 			//03DE 	248C
		LJUMP 	3E2H 			//03DF 	3BE2
		MOVLB 	2H 			//03E0 	1022
		BCR 	CH, 1H 			//03E1 	208C
		BTSS 	CH, 1H 			//03E2 	2C8C
		LJUMP 	3E7H 			//03E3 	3BE7
		MOVLB 	2H 			//03E4 	1022
		BSR 	FH, 2H 			//03E5 	250F
		LJUMP 	3E9H 			//03E6 	3BE9
		MOVLB 	2H 			//03E7 	1022
		BCR 	FH, 2H 			//03E8 	210F
		BTSS 	FH, 2H 			//03E9 	2D0F
		LJUMP 	3EEH 			//03EA 	3BEE
		MOVLB 	2H 			//03EB 	1022
		BSR 	DH, 3H 			//03EC 	258D
		LJUMP 	3F0H 			//03ED 	3BF0
		MOVLB 	2H 			//03EE 	1022
		BCR 	DH, 3H 			//03EF 	218D
		BTSS 	DH, 3H 			//03F0 	2D8D
		LJUMP 	3F5H 			//03F1 	3BF5
		MOVLB 	2H 			//03F2 	1022
		BSR 	DH, 0H 			//03F3 	240D
		RET 					//03F4 	1008
		MOVLB 	2H 			//03F5 	1022
		BCR 	DH, 0H 			//03F6 	200D

		//;sub.c: 203: break; case 14: LATA4=LATD2=LATA1=1;
		RET 					//03F7 	1008
		MOVLB 	2H 			//03F8 	1022
		BSR 	CH, 1H 			//03F9 	248C
		BTSS 	CH, 1H 			//03FA 	2C8C
		LJUMP 	3FFH 			//03FB 	3BFF
		MOVLB 	2H 			//03FC 	1022
		BSR 	FH, 2H 			//03FD 	250F
		LJUMP 	401H 			//03FE 	3C01
		MOVLB 	2H 			//03FF 	1022
		BCR 	FH, 2H 			//0400 	210F
		BTSS 	FH, 2H 			//0401 	2D0F
		LJUMP 	406H 			//0402 	3C06
		MOVLB 	2H 			//0403 	1022
		BSR 	CH, 4H 			//0404 	260C
		RET 					//0405 	1008
		MOVLB 	2H 			//0406 	1022
		BCR 	CH, 4H 			//0407 	220C

		//;sub.c: 204: break; case 15: LATA0=LATD2=LATA1=LATD3=1;
		RET 					//0408 	1008
		MOVLB 	2H 			//0409 	1022
		BSR 	FH, 3H 			//040A 	258F
		BTSS 	FH, 3H 			//040B 	2D8F
		LJUMP 	410H 			//040C 	3C10
		MOVLB 	2H 			//040D 	1022
		BSR 	CH, 1H 			//040E 	248C
		LJUMP 	412H 			//040F 	3C12
		MOVLB 	2H 			//0410 	1022
		BCR 	CH, 1H 			//0411 	208C
		BTSS 	CH, 1H 			//0412 	2C8C
		LJUMP 	417H 			//0413 	3C17
		MOVLB 	2H 			//0414 	1022
		BSR 	FH, 2H 			//0415 	250F
		LJUMP 	419H 			//0416 	3C19
		MOVLB 	2H 			//0417 	1022
		BCR 	FH, 2H 			//0418 	210F
		BTSS 	FH, 2H 			//0419 	2D0F
		LJUMP 	41EH 			//041A 	3C1E
		MOVLB 	2H 			//041B 	1022
		BSR 	CH, 0H 			//041C 	240C
		RET 					//041D 	1008
		MOVLB 	2H 			//041E 	1022
		BCR 	CH, 0H 			//041F 	200C

		//;sub.c: 205: }
		RET 					//0420 	1008
		LDR 	76H, 0H 			//0421 	1876
		STR 	4H 			//0422 	1084
		LDWI 	10H 			//0423 	0010
		SUBWR 	4H, 0H 		//0424 	1204
		BTSC 	3H, 0H 			//0425 	2803
		RET 					//0426 	1008
		MOVLP 	5H 			//0427 	0185
		LSLF 	4H, 0H 			//0428 	0504
		ADDWI 	0H 			//0429 	0E00
		STR 	2H 			//042A 	1082
		RET 					//042B 	1008

		//;sub.c: 210: unsigned char DspBuf;
		//;sub.c: 211: switch(DspIndex)
		LJUMP 	43EH 			//042C 	3C3E
		CLRF 	7AH 			//042D 	11FA

		//;sub.c: 214: break; case DsMode: DspBuf=11;
		LJUMP 	446H 			//042E 	3C46
		LDWI 	BH 			//042F 	000B
		LJUMP 	43CH 			//0430 	3C3C

		//;sub.c: 215: break; case DsStrong: DspBuf=12;
		LDWI 	CH 			//0431 	000C
		LJUMP 	43CH 			//0432 	3C3C

		//;sub.c: 216: break; case DsHeat: DspBuf=13;
		LDWI 	DH 			//0433 	000D
		LJUMP 	43CH 			//0434 	3C3C

		//;sub.c: 217: break; case DsManual: DspBuf=14;
		LDWI 	EH 			//0435 	000E
		LJUMP 	43CH 			//0436 	3C3C

		//;sub.c: 218: break; case DsTime: DspBuf=(TimeMin/10);
		LDWI 	AH 			//0437 	000A
		STR 	76H 			//0438 	10F6
		LDR 	74H, 0H 			//0439 	1874
		LCALL 	448H 			//043A 	3448
		MOVLP 	1H 			//043B 	0181
		STR 	7AH 			//043C 	10FA

		//;sub.c: 219: break;
		LJUMP 	446H 			//043D 	3C46
		LCALL 	4A5H 			//043E 	34A5
		MOVLP 	1H 			//043F 	0181
		BTSC 	3H, 0H 			//0440 	2803
		LJUMP 	446H 			//0441 	3C46
		MOVLP 	5H 			//0442 	0185
		LSLF 	4H, 0H 			//0443 	0504
		ADDWI 	2CH 			//0444 	0E2C
		STR 	2H 			//0445 	1082

		//;sub.c: 221: return DspBuf;
		LDR 	7AH, 0H 			//0446 	187A
		RET 					//0447 	1008
		STR 	77H 			//0448 	10F7
		CLRF 	79H 			//0449 	11F9
		LDR 	76H, 0H 			//044A 	1876
		BTSC 	3H, 2H 			//044B 	2903
		LJUMP 	45EH 			//044C 	3C5E
		CLRF 	78H 			//044D 	11F8
		INCR 	78H, 1H 		//044E 	1AF8
		BTSC 	76H, 7H 		//044F 	2BF6
		LJUMP 	453H 			//0450 	3C53
		LSLF 	76H, 1H 		//0451 	05F6
		LJUMP 	44EH 			//0452 	3C4E
		LSLF 	79H, 1H 		//0453 	05F9
		LDR 	76H, 0H 			//0454 	1876
		SUBWR 	77H, 0H 		//0455 	1277
		BTSS 	3H, 0H 			//0456 	2C03
		LJUMP 	45BH 			//0457 	3C5B
		LDR 	76H, 0H 			//0458 	1876
		SUBWR 	77H, 1H 		//0459 	12F7
		BSR 	79H, 0H 			//045A 	2479
		LSRF 	76H, 1H 		//045B 	06F6
		DECRSZ 	78H, 1H 		//045C 	1BF8
		LJUMP 	453H 			//045D 	3C53
		LDR 	79H, 0H 			//045E 	1879
		RET 					//045F 	1008

		//;sub.c: 226: unsigned char DspBuf;
		//;sub.c: 227: switch(DspIndex)
		LJUMP 	46EH 			//0460 	3C6E
		LDWI 	FH 			//0461 	000F
		LJUMP 	46CH 			//0462 	3C6C

		//;sub.c: 230: break; case DsMode: DspBuf=ModeType;
		LDR 	75H, 0H 			//0463 	1875
		LJUMP 	46CH 			//0464 	3C6C

		//;sub.c: 231: break; case DsStrong: DspBuf=StrongType;
		LDR 	5AH, 0H 			//0465 	185A
		LJUMP 	46CH 			//0466 	3C6C

		//;sub.c: 232: break; case DsHeat: DspBuf=HeatType;
		LDR 	5BH, 0H 			//0467 	185B
		LJUMP 	46CH 			//0468 	3C6C

		//;sub.c: 233: break; case DsManual: DspBuf=ManualType;
		LDR 	59H, 0H 			//0469 	1859
		LJUMP 	46CH 			//046A 	3C6C

		//;sub.c: 234: break; case DsTime: DspBuf=TimeMin;
		LDR 	74H, 0H 			//046B 	1874
		STR 	7BH 			//046C 	10FB

		//;sub.c: 235: break;
		LJUMP 	476H 			//046D 	3C76
		LCALL 	4A5H 			//046E 	34A5
		MOVLP 	1H 			//046F 	0181
		BTSC 	3H, 0H 			//0470 	2803
		LJUMP 	476H 			//0471 	3C76
		MOVLP 	4H 			//0472 	0184
		LSLF 	4H, 0H 			//0473 	0504
		ADDWI 	F3H 			//0474 	0EF3
		STR 	2H 			//0475 	1082

		//;sub.c: 237: if(DspIndex!=DsSty)
		LDR 	57H, 0H 			//0476 	1857
		BTSC 	3H, 2H 			//0477 	2903
		LJUMP 	47EH 			//0478 	3C7E

		//;sub.c: 238: DspBuf%=10;
		LDWI 	AH 			//0479 	000A
		STR 	76H 			//047A 	10F6
		LDR 	7BH, 0H 			//047B 	187B
		LCALL 	480H 			//047C 	3480
		STR 	7BH 			//047D 	10FB

		//;sub.c: 239: return DspBuf;
		LDR 	7BH, 0H 			//047E 	187B
		RET 					//047F 	1008
		STR 	78H 			//0480 	10F8
		LDWI 	8H 			//0481 	0008
		STR 	79H 			//0482 	10F9
		CLRF 	7AH 			//0483 	11FA
		LDR 	78H, 0H 			//0484 	1878
		STR 	77H 			//0485 	10F7
		LDWI 	7H 			//0486 	0007
		LSRF 	77H, 1H 		//0487 	06F7
		DECRSZ 	9H, 1H 		//0488 	1B89
		LJUMP 	487H 			//0489 	3C87
		LSLF 	7AH, 0H 		//048A 	057A
		IORWR 	77H, 0H 		//048B 	1477
		STR 	7AH 			//048C 	10FA
		LSLF 	78H, 1H 		//048D 	05F8
		LDR 	76H, 0H 			//048E 	1876
		SUBWR 	7AH, 0H 		//048F 	127A
		BTSS 	3H, 0H 			//0490 	2C03
		LJUMP 	494H 			//0491 	3C94
		LDR 	76H, 0H 			//0492 	1876
		SUBWR 	7AH, 1H 		//0493 	12FA
		DECRSZ 	79H, 1H 		//0494 	1BF9
		LJUMP 	484H 			//0495 	3C84
		LDR 	7AH, 0H 			//0496 	187A
		RET 					//0497 	1008
		MOVLB 	2H 			//0498 	1022
		BCR 	DH, 1H 			//0499 	208D
		BCR 	FH, 1H 			//049A 	208F
		BCR 	EH, 1H 			//049B 	208E
		BCR 	EH, 0H 			//049C 	200E
		BCR 	CH, 0H 			//049D 	200C
		BCR 	DH, 0H 			//049E 	200D
		BCR 	DH, 3H 			//049F 	218D
		BCR 	CH, 4H 			//04A0 	220C
		BCR 	FH, 2H 			//04A1 	210F
		BCR 	CH, 1H 			//04A2 	208C
		BCR 	FH, 3H 			//04A3 	218F
		RET 					//04A4 	1008
		MOVLB 	1H 			//04A5 	1021
		LDR 	57H, 0H 			//04A6 	1857
		STR 	4H 			//04A7 	1084
		LDWI 	6H 			//04A8 	0006
		SUBWR 	4H, 0H 		//04A9 	1204
		RET 					//04AA 	1008

		//;CHIPINIT.C: 8: TimeUs++;
		MOVLB 	1H 			//04AB 	1021
		INCR 	56H, 1H 		//04AC 	1AD6

		//;CHIPINIT.C: 11: if(TimeUs<20)return;
		LDWI 	14H 			//04AD 	0014
		SUBWR 	56H, 0H 		//04AE 	1256
		BTSS 	3H, 0H 			//04AF 	2C03
		RET 					//04B0 	1008

		//;CHIPINIT.C: 12: TimeUs=0;Time2Ms++;
		CLRF 	56H 			//04B1 	11D6
		INCR 	55H, 1H 		//04B2 	1AD5

		//;CHIPINIT.C: 13: SysFunFlg0.OneBits.b1=1;
		BSR 	5DH, 1H 			//04B3 	24DD

		//;CHIPINIT.C: 16: if(Time2Ms<5)return;
		LDWI 	5H 			//04B4 	0005
		SUBWR 	55H, 0H 		//04B5 	1255
		BTSS 	3H, 0H 			//04B6 	2C03
		RET 					//04B7 	1008

		//;CHIPINIT.C: 17: Time2Ms=0;Time10Ms++;
		CLRF 	55H 			//04B8 	11D5
		INCR 	54H, 1H 		//04B9 	1AD4

		//;CHIPINIT.C: 19: SysFunFlg0.OneBits.b0=1;
		BSR 	5DH, 0H 			//04BA 	245D

		//;CHIPINIT.C: 22: if(Time10Ms<10)return;
		LDWI 	AH 			//04BB 	000A
		SUBWR 	54H, 0H 		//04BC 	1254
		BTSS 	3H, 0H 			//04BD 	2C03
		RET 					//04BE 	1008

		//;CHIPINIT.C: 23: Time10Ms=0;Time100Ms++;
		CLRF 	54H 			//04BF 	11D4
		INCR 	53H, 1H 		//04C0 	1AD3

		//;CHIPINIT.C: 28: if(Time100Ms<10)return;
		LDWI 	AH 			//04C1 	000A
		SUBWR 	53H, 0H 		//04C2 	1253
		BTSS 	3H, 0H 			//04C3 	2C03
		RET 					//04C4 	1008

		//;CHIPINIT.C: 29: Time100Ms=0;TimeSec++;
		CLRF 	53H 			//04C5 	11D3
		INCR 	52H, 1H 		//04C6 	1AD2

		//;CHIPINIT.C: 34: if(TimeSec<60)return;
		LDWI 	3CH 			//04C7 	003C
		SUBWR 	52H, 0H 		//04C8 	1252
		BTSS 	3H, 0H 			//04C9 	2C03
		RET 					//04CA 	1008

		//;CHIPINIT.C: 35: TimeSec=0;
		CLRF 	52H 			//04CB 	11D2

		//;CHIPINIT.C: 37: if((SysFunFlg0.OneBits.b7)&&(SysFunFlg1.OneBits.b2==0))
		BTSC 	5DH, 7H 		//04CC 	2BDD
		BTSC 	58H, 2H 		//04CD 	2958
		RET 					//04CE 	1008

		//;CHIPINIT.C: 38: {
		//;CHIPINIT.C: 39: if(TimeMin)TimeMin--;
		LDR 	74H, 0H 			//04CF 	1874
		BTSS 	3H, 2H 			//04D0 	2D03
		DECR 	74H, 1H 		//04D1 	13F4
		RET 					//04D2 	1008

		//;uart.c: 29: static unsigned char ByteNum;
		//;uart.c: 31: if(ByteNum<6)
		LDWI 	6H 			//04D3 	0006
		MOVLB 	1H 			//04D4 	1021
		SUBWR 	4CH, 0H 		//04D5 	124C
		BTSC 	3H, 0H 			//04D6 	2803
		LJUMP 	4E2H 			//04D7 	3CE2

		//;uart.c: 32: {
		//;uart.c: 33: URDATAL =send_buf[ByteNum++];
		LDR 	4CH, 0H 			//04D8 	184C
		ADDWI 	B7H 			//04D9 	0EB7
		STR 	6H 			//04DA 	1086
		CLRF 	7H 			//04DB 	1187
		LDR 	1H, 0H 			//04DC 	1801
		MOVLB 	9H 			//04DD 	1029
		STR 	CH 			//04DE 	108C
		MOVLB 	1H 			//04DF 	1021
		INCR 	4CH, 1H 		//04E0 	1ACC

		//;uart.c: 34: }
		RET 					//04E1 	1008

		//;uart.c: 35: else
		//;uart.c: 36: {
		//;uart.c: 37: URTE=0;
		MOVLB 	9H 			//04E2 	1029
		BCR 	EH, 1H 			//04E3 	208E

		//;uart.c: 38: UartSetEmptyInt(0);
		LDWI 	0H 			//04E4 	0000
		LCALL 	4EAH 			//04E5 	34EA

		//;uart.c: 39: ByteNum = 0;
		MOVLB 	1H 			//04E6 	1021
		CLRF 	4CH 			//04E7 	11CC

		//;uart.c: 40: SysFunFlg0.OneBits.b6 = 0;
		BCR 	5DH, 6H 			//04E8 	235D
		RET 					//04E9 	1008
		STR 	76H 			//04EA 	10F6

		//;uart.c: 46: URTE = value;
		BTSS 	76H, 0H 		//04EB 	2C76
		LJUMP 	4F0H 			//04EC 	3CF0
		MOVLB 	9H 			//04ED 	1029
		BSR 	EH, 1H 			//04EE 	248E
		RET 					//04EF 	1008
		MOVLB 	9H 			//04F0 	1029
		BCR 	EH, 1H 			//04F1 	208E
		RET 					//04F2 	1008
		MOVLP 	4H 			//04F3 	0184
		LJUMP 	461H 			//04F4 	3C61
		MOVLP 	4H 			//04F5 	0184
		LJUMP 	463H 			//04F6 	3C63
		MOVLP 	4H 			//04F7 	0184
		LJUMP 	465H 			//04F8 	3C65
		MOVLP 	4H 			//04F9 	0184
		LJUMP 	467H 			//04FA 	3C67
		ORG		04FBH
		MOVLP 	4H 			//04FB 	0184
		LJUMP 	469H 			//04FC 	3C69
		MOVLP 	4H 			//04FD 	0184
		LJUMP 	46BH 			//04FE 	3C6B
		ORG		0500H
		MOVLP 	3H 			//0500 	0183
		LJUMP 	372H 			//0501 	3B72
		MOVLP 	2H 			//0502 	0182
		LJUMP 	269H 			//0503 	3A69
		MOVLP 	2H 			//0504 	0182
		LJUMP 	273H 			//0505 	3A73
		MOVLP 	2H 			//0506 	0182
		LJUMP 	292H 			//0507 	3A92
		MOVLP 	2H 			//0508 	0182
		LJUMP 	2B1H 			//0509 	3AB1
		MOVLP 	2H 			//050A 	0182
		LJUMP 	2C9H 			//050B 	3AC9
		MOVLP 	2H 			//050C 	0182
		LJUMP 	2E8H 			//050D 	3AE8
		MOVLP 	3H 			//050E 	0183
		LJUMP 	30EH 			//050F 	3B0E
		MOVLP 	3H 			//0510 	0183
		LJUMP 	31FH 			//0511 	3B1F
		MOVLP 	3H 			//0512 	0183
		LJUMP 	34CH 			//0513 	3B4C
		MOVLP 	3H 			//0514 	0183
		LJUMP 	398H 			//0515 	3B98
		MOVLP 	3H 			//0516 	0183
		LJUMP 	39BH 			//0517 	3B9B
		MOVLP 	3H 			//0518 	0183
		LJUMP 	3BAH 			//0519 	3BBA
		MOVLP 	3H 			//051A 	0183
		LJUMP 	3D9H 			//051B 	3BD9
		MOVLP 	3H 			//051C 	0183
		LJUMP 	3F8H 			//051D 	3BF8
		MOVLP 	4H 			//051E 	0184
		LJUMP 	409H 			//051F 	3C09
		CLRWDT 			//0520 	1064
		LDWI 	1H 			//0521 	0001
		CLRF 	0H 			//0522 	1180
		ADDFSR 	0H, 1H 		//0523 	0101
		SUBWR 	7EH, 1H 		//0524 	12FE
		LDWI 	0H 			//0525 	0000
		SUBWFB 	7FH, 1H 		//0526 	0BFF
		LDR 	7FH, 0H 			//0527 	187F
		IORWR 	7EH, 0H 		//0528 	147E
		BTSC 	3H, 2H 			//0529 	2903
		RETW 	0H 			//052A 	0400
		LJUMP 	521H 			//052B 	3D21
		MOVLP 	4H 			//052C 	0184
		LJUMP 	42DH 			//052D 	3C2D
		MOVLP 	4H 			//052E 	0184
		LJUMP 	42FH 			//052F 	3C2F
		MOVLP 	4H 			//0530 	0184
		LJUMP 	431H 			//0531 	3C31
		MOVLP 	4H 			//0532 	0184
		LJUMP 	433H 			//0533 	3C33
		MOVLP 	4H 			//0534 	0184
		LJUMP 	435H 			//0535 	3C35
		MOVLP 	4H 			//0536 	0184
		LJUMP 	437H 			//0537 	3C37
		RETW 	0H 			//0538 	0400
		RETW 	0H 			//0539 	0400
		RETW 	0H 			//053A 	0400
		RETW 	0H 			//053B 	0400
		RETW 	0H 			//053C 	0400
		RETW 	0H 			//053D 	0400
		RETW 	0H 			//053E 	0400
		RETW 	0H 			//053F 	0400
		ORG		0540H
		RETW 	80H 			//0540 	0480
		RETW 	78H 			//0541 	0478
		RETW 	CH 			//0542 	040C
		RETW 	0H 			//0543 	0400
		RETW 	4H 			//0544 	0404
			END
