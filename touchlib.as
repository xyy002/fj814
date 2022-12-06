opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F1938
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 89 "TOUCH.C"
  M00 EQU 50H ;#
# 90 "TOUCH.C"
  M01 EQU 51H ;#
# 91 "TOUCH.C"
  M02 EQU 52H ;#
# 93 "TOUCH.C"
     M10 EQU 54H ;#
# 94 "TOUCH.C"
  M11 EQU 55H ;#
# 95 "TOUCH.C"
  M12 EQU 56H ;#
# 97 "TOUCH.C"
    SUML EQU 57H ;#
# 98 "TOUCH.C"
  SUMM EQU 58H ;#
# 99 "TOUCH.C"
  SUMH EQU 59H ;#
# 101 "TOUCH.C"
    COUNT EQU 5AH ;#
DABS 1,1568,48	;_fmd_nodownsum_Key
DABS 1,1448,72	;_fmd_nodownsum_Key
DABS 1,1440,8	;_fmd_nodownavrdata_Key
DABS 1,1312,80	;_fmd_nodownavrdata_Key
DABS 1,1232,32	;_fmd_nodownavrdata_Key
	FNCALL	_main,_Sys_init
	FNCALL	_main,_TouchInital
	FNCALL	_main,_Time2Initial
	FNCALL	_main,_Time4Initial
	FNCALL	_main,_WDT_INITIAL
	FNCALL	_main,_UART_INITIAL
	FNCALL	_main,_User_init
	FNCALL	_main,_Display_init
	FNCALL	_main,_RxData_Drive
	FNCALL	_main,_KeyScanHandler
	FNCALL	_main,_dokey
	FNCALL	_main,_SysPowerHandler
	FNCALL	_main,_ChkTimeEventStatus
	FNCALL	_KeyScanHandler,_TouchKeyScan
	FNCALL	_TouchKeyScan,_ReadTouchData
	FNCALL	_ReadTouchData,_TouchInit
	FNCALL	_ReadTouchData,_MxSet013
	FNCALL	_ReadTouchData,_DIV
	FNCALL	_ReadTouchData,_StartHigeFreq
	FNCALL	_ReadTouchData,_DataProcessing
	FNCALL	_DataProcessing,___bmul
	FNCALL	_DataProcessing,_StartHigeFreq
	FNCALL	_DataProcessing,_HighFreqCo
	FNCALL	_DataProcessing,_DIV
	FNCALL	_SysPowerHandler,_User_init
	FNCALL	_dokey,_PowerKeyExec
	FNCALL	_dokey,_ModeKeyExec
	FNCALL	_dokey,_HeatKeyExec
	FNCALL	_dokey,_StrongKeyExec
	FNCALL	_dokey,_ManualKeyExec
	FNCALL	_dokey,_refresh_data
	FNCALL	_StartHigeFreq,_TouchInit
	FNCALL	_StartHigeFreq,_DIV
	FNCALL	_refresh_data,_UartSetEmptyInt
	FNCALL	_User_init,_TIME_INIT
	FNCALL	_PowerKeyExec,_TIME_INIT
	FNROOT	_main
	FNCALL	_ISR,_Rx_Drive
	FNCALL	_ISR,_exact_event_process
	FNCALL	_ISR,_DisplayHandler
	FNCALL	_ISR,_send_uart_data
	FNCALL	_DisplayHandler,_SpecialDisplay1
	FNCALL	_DisplayHandler,_ShowLedData
	FNCALL	_DisplayHandler,_SpecialDisplay2
	FNCALL	_SpecialDisplay2,___lbmod
	FNCALL	_SpecialDisplay1,___lbdiv
	FNCALL	_send_uart_data,i1_UartSetEmptyInt
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_fmd_DownDataTime
	global	_fmd_DownTouchCount
	global	_fmd_UpDataTime
	global	_fmd_UpTouchCount
psect	idataBANK0l,class=CODE,space=0,delta=2
global __pidataBANK0l
__pidataBANK0l:
	file	"TOUCH.C"
	line	82

;initializer for _fmd_DownDataTime
	retlw	0B0h
	retlw	04h

	line	76

;initializer for _fmd_DownTouchCount
	retlw	0B0h
	retlw	04h

psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	81

;initializer for _fmd_UpDataTime
	retlw	058h
	retlw	02h

	line	75

;initializer for _fmd_UpTouchCount
	retlw	0E8h
	retlw	03h

	global	_ACTIVE_SENSOR_DELTA
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
	global    __stringtab
__stringtab:
	retlw	0
psect	stringtext
	file	"touch.h"
	line	261
_ACTIVE_SENSOR_DELTA:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	025h
	retlw	02Bh
	retlw	023h
	retlw	023h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Eh
	retlw	022h
	retlw	01Eh
	retlw	01Bh
	retlw	0
	retlw	0
	retlw	016h
	retlw	01Ah
	retlw	016h
	retlw	016h
	retlw	0
	retlw	0
	retlw	016h
	retlw	019h
	retlw	018h
	retlw	019h
	retlw	0
	retlw	0
	retlw	018h
	retlw	01Ah
	retlw	019h
	retlw	017h
	retlw	0
	retlw	0
	global	_INACTIVE_SENSOR_DELTA
psect	stringtext
	file	"touch.h"
	line	281
_INACTIVE_SENSOR_DELTA:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Bh
	retlw	01Fh
	retlw	01Ah
	retlw	019h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	016h
	retlw	019h
	retlw	016h
	retlw	014h
	retlw	0
	retlw	0
	retlw	010h
	retlw	013h
	retlw	010h
	retlw	010h
	retlw	0
	retlw	0
	retlw	010h
	retlw	012h
	retlw	012h
	retlw	012h
	retlw	0
	retlw	0
	retlw	012h
	retlw	013h
	retlw	012h
	retlw	010h
	retlw	0
	retlw	0
	global	_FWHEELSILERB
psect	stringtext
	file	"touch.h"
	line	28
_FWHEELSILERB:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_SWHEELSILERB
psect	stringtext
	file	"touch.h"
	line	29
_SWHEELSILERB:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
	global	_IO_TOUCH_ATTR1
psect	stringtext
	file	"touch.h"
	line	301
_IO_TOUCH_ATTR1:
	retlw	080h
	retlw	078h

	global	_LONGKEYPROTECT1
psect	stringtext
	file	"touch.h"
	line	302
_LONGKEYPROTECT1:
	retlw	0Ah
	global	_PRIMARYKEY11
psect	stringtext
	file	"touch.h"
	line	308
_PRIMARYKEY11:
	retlw	0
	global	_SCANNINGTIME1
psect	stringtext
	file	"touch.h"
	line	310
_SCANNINGTIME1:
	retlw	0Ch
	global	_ACTIVE_SENSOR_DELTA
	global	_INACTIVE_SENSOR_DELTA
	global	_FWHEELSILERB
	global	_SWHEELSILERB
	global	_ad3nop
	global	_ad3nop_absaddr
_ad3nop_absaddr	set	0x3
psect	_ad3nop_text,class=CODE,delta=2
global __p_ad3nop_text
__p_ad3nop_text:
_ad3nop:
	retlw	0
	global	_IO_TOUCH_ATTR1
	global	_LONGKEYPROTECT1
	global	_PRIMARYKEY11
	global	_SCANNINGTIME1
	global	_fmd_TouchDataBuff_Key
	global	_fmd_Keystatus1
	global	_fmd_Keystatus2
	global	_readKeyNum
	global	DisplayHandler@DspBuf
	global	DisplayHandler@LedMenuIndex
	global	_DspIndex
	global	_HeatType
	global	_KeyType
	global	_LastManual
	global	_LastMode
	global	_ManualType
	global	_ModeType
	global	_PwrType
	global	_RxBit
	global	_RxData
	global	_StrongType
	global	_SysFunFlg1
	global	_SysFunFlg2
	global	_Time100Ms
	global	_Time10Ms
	global	_Time2Ms
	global	_TimeMin
	global	_TimeSec
	global	_TimeUs
	global	_TmsRxH
	global	_TmsRxL
	global	_dsp_100ms
	global	_fmd_HfreqOn
	global	_fmd_antishaketimecount
	global	_fmd_x
	global	send_uart_data@ByteNum
	global	_fmd_nodownavrdata_Key
	global	_fmd_nodownsum_Key
	global	_fmd_Keystatus
	global	_SysFunFlg0
	global	_fmd_a1
	global	_fmd_f_firstdown
	global	_fmd_f_firstloop
	global	_fmd_f_forbidden
	global	_fmd_f_keydown_flag
	global	_fmd_f_main_key
	global	_fmd_theUsedChannel
	global	_RxBuf
	global	_send_buf
	global	_fmd_KeyDValue_Key
	global	_fmd_KeyDValue_Key_base
	global	_fmd_KeyDValue_Key_baseBuff
	global	_BuzzerCnt
	global	_KeyCnt
	global	_TmpCnt
	global	_fmd_thedeathcount
	global	_fmd_thedeathcount1
	global	DisplayHandler@DspCnt
	global	_TimeType
	global	_fmd_KeyBuffPress
	global	_fmd_KeyBuffUnPress
	global	_fmd_PressOff
	global	_fmd_PressOffCount
	global	_fmd_a3
	global	_fmd_antishaketimecount1
	global	_fmd_channels
	global	_fmd_currentCount
	global	_fmd_AntiWaterBit
	global	_fmd_OriginalData
_fmd_OriginalData	set	81
	DABS	1,81,2	;_fmd_OriginalData

	global	_fmd_Null0
_fmd_Null0	set	80
	DABS	1,80,1	;_fmd_Null0

	global	_fmd_a2
psect	nvBANK0l,class=BANK0,space=1
global __pnvBANK0l
__pnvBANK0l:
_fmd_a2:
       ds      1

	global	_fmd_u
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_fmd_u:
       ds      1

	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	12
	global	_PORTB
_PORTB	set	13
	global	_PORTC
_PORTC	set	14
	global	_PORTD
_PORTD	set	15
	global	_STATUS
_STATUS	set	3
	global	_PB4
_PB4	set	108
	global	_PB5
_PB5	set	109
	global	_CKOCON
_CKOCON	set	149
	global	_OSCCON
_OSCCON	set	153
	global	_PCKEN
_PCKEN	set	154
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_TRISD
_TRISD	set	143
	global	_WDTCON
_WDTCON	set	151
	global	_TRISA4
_TRISA4	set	1124
	global	_TRISA5
_TRISA5	set	1125
	global	_TRISA6
_TRISA6	set	1126
	global	_TRISA7
_TRISA7	set	1127
	global	_TRISB2
_TRISB2	set	1130
	global	_TRISB3
_TRISB3	set	1131
	global	_TRISB4
_TRISB4	set	1132
	global	_TRISB7
_TRISB7	set	1135
	global	_TRISC0
_TRISC0	set	1136
	global	_TRISC1
_TRISC1	set	1137
	global	_TRISC3
_TRISC3	set	1139
	global	_TRISC4
_TRISC4	set	1140
	global	_TRISC5
_TRISC5	set	1141
	global	_TRISC6
_TRISC6	set	1142
	global	_TRISC7
_TRISC7	set	1143
	global	_TRISD5
_TRISD5	set	1149
	global	_MISC0
_MISC0	set	284
	global	_PSRC0
_PSRC0	set	282
	global	_PSRC1
_PSRC1	set	283
	global	_TIM4ARR
_TIM4ARR	set	279
	global	_TIM4CNTR
_TIM4CNTR	set	277
	global	_TIM4CR1
_TIM4CR1	set	273
	global	_TIM4EGR
_TIM4EGR	set	276
	global	_TIM4IER
_TIM4IER	set	274
	global	_TIM4PSCR
_TIM4PSCR	set	278
	global	_TIM4SR
_TIM4SR	set	275
	global	_LATA0
_LATA0	set	2144
	global	_LATA1
_LATA1	set	2145
	global	_LATA4
_LATA4	set	2148
	global	_LATB0
_LATB0	set	2152
	global	_LATB1
_LATB1	set	2153
	global	_LATB3
_LATB3	set	2155
	global	_LATC0
_LATC0	set	2160
	global	_LATC1
_LATC1	set	2161
	global	_LATD1
_LATD1	set	2169
	global	_LATD2
_LATD2	set	2170
	global	_LATD3
_LATD3	set	2171
	global	_T4UIE
_T4UIE	set	2192
	global	_T4UIF
_T4UIF	set	2200
	global	_ANSELA
_ANSELA	set	407
	global	_PSINK0
_PSINK0	set	410
	global	_PSINK1
_PSINK1	set	411
	global	_PSINK2
_PSINK2	set	412
	global	_PSINK3
_PSINK3	set	413
	global	_WPUA
_WPUA	set	396
	global	_WPUB
_WPUB	set	397
	global	_WPUC
_WPUC	set	398
	global	_WPUD
_WPUD	set	399
	global	_WPDA
_WPDA	set	524
	global	_WPDB
_WPDB	set	525
	global	_WPDC
_WPDC	set	526
	global	_WPDD
_WPDD	set	527
	global	_TCKSRC
_TCKSRC	set	799
	global	_TIM2ARRH
_TIM2ARRH	set	793
	global	_TIM2ARRL
_TIM2ARRL	set	794
	global	_TIM2CR1
_TIM2CR1	set	780
	global	_TIM2IER
_TIM2IER	set	781
	global	_T2UIE
_T2UIE	set	6248
	global	_T2UIF
_T2UIF	set	6256
	global	_M0ANALOG
_M0ANALOG	set	914
	global	_M1ANALOG
_M1ANALOG	set	915
	global	_M2ANALOG
_M2ANALOG	set	916
	global	_M3ANALOG
_M3ANALOG	set	917
	global	_TKC0
_TKC0	set	909
	global	_TKC1
_TKC1	set	910
	global	_TKM0C0
_TKM0C0	set	918
	global	_TKM0C1
_TKM0C1	set	919
	global	_TKM1C0
_TKM1C0	set	920
	global	_TKM1C1
_TKM1C1	set	921
	global	_TKM2C0
_TKM2C0	set	922
	global	_TKM2C1
_TKM2C1	set	923
	global	_TKM3C0
_TKM3C0	set	924
	global	_TKM3C1
_TKM3C1	set	925
	global	_TKTMR
_TKTMR	set	908
	global	_WPROOF1
_WPROOF1	set	911
	global	_WPROOF2
_WPROOF2	set	912
	global	_WPROOF3
_WPROOF3	set	913
	global	_TKRCOV
_TKRCOV	set	7278
	global	_TKST
_TKST	set	7277
	global	_URDATAL
_URDATAL	set	1164
	global	_URDLH
_URDLH	set	1173
	global	_URDLL
_URDLL	set	1172
	global	_URIER
_URIER	set	1166
	global	_URLCR
_URLCR	set	1167
	global	_URMCR
_URMCR	set	1169
	global	_TCF
_TCF	set	9440
	global	_TXEF
_TXEF	set	9365
	global	_URTE
_URTE	set	9329
	global	_TKM016DH
_TKM016DH	set	3989
	global	_TKM016DL
_TKM016DL	set	3988
	global	_TKM116DH
_TKM116DH	set	3997
	global	_TKM116DL
_TKM116DL	set	3996
	global	_TKM216DH
_TKM216DH	set	4005
	global	_TKM216DL
_TKM216DL	set	4004
	global	_TKM316DH
_TKM316DH	set	4013
	global	_TKM316DL
_TKM316DL	set	4012
	global	_fmd_thedeathcount2
psect	nvBANK1,class=BANK1,space=1
global __pnvBANK1
__pnvBANK1:
_fmd_thedeathcount2:
       ds      2

	global	_fmd_Startgx
_fmd_Startgx:
       ds      1

	global	_fmd_TestCount
_fmd_TestCount:
       ds      1

	global	_fmd_updataFlag
_fmd_updataFlag:
       ds      1

	global	_fmd_ReferenceData
_fmd_ReferenceData	set	85
	DABS	1,85,2	;_fmd_ReferenceData

	global	_fmd_Null1
_fmd_Null1	set	83
	DABS	1,83,1	;_fmd_Null1

	global	_fmd_Null2
_fmd_Null2	set	84
	DABS	1,84,1	;_fmd_Null2

	global	_fmd_ResultData
_fmd_ResultData	set	87
	DABS	1,87,2	;_fmd_ResultData

	global	_fmd_Null3
_fmd_Null3	set	90
	DABS	1,90,1	;_fmd_Null3

	global	_fmd_ResultDataH
_fmd_ResultDataH	set	89
	DABS	1,89,1	;_fmd_ResultDataH

	global	_fmd_a
psect	nvCOMMON
_fmd_a:
       ds      1

	file	"touchlib.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

_fmd_nodownavrdata_Key  equ     8960	;BIGRAM
_fmd_nodownsum_Key  equ     9080	;BIGRAM
psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_fmd_f_firstdown:
       ds      1

_fmd_f_firstloop:
       ds      1

_fmd_f_forbidden:
       ds      1

_fmd_f_keydown_flag:
       ds      1

_fmd_f_main_key:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_fmd_Keystatus:
       ds      2

_SysFunFlg0:
       ds      1

_fmd_a1:
       ds      1

psect	bssBANK0l,class=BANK0,space=1
global __pbssBANK0l
__pbssBANK0l:
_fmd_TouchDataBuff_Key:
       ds      8

_fmd_Keystatus1:
       ds      2

_fmd_Keystatus2:
       ds      2

_readKeyNum:
       ds      2

DisplayHandler@DspBuf:
       ds      1

DisplayHandler@LedMenuIndex:
       ds      1

_DspIndex:
       ds      1

_HeatType:
       ds      1

_KeyType:
       ds      1

_LastManual:
       ds      1

_LastMode:
       ds      1

_ManualType:
       ds      1

_ModeType:
       ds      1

_PwrType:
       ds      1

_RxBit:
       ds      1

_RxData:
       ds      1

_StrongType:
       ds      1

_SysFunFlg1:
       ds      1

_SysFunFlg2:
       ds      1

_Time100Ms:
       ds      1

_Time10Ms:
       ds      1

_Time2Ms:
       ds      1

_TimeMin:
       ds      1

_TimeSec:
       ds      1

_TimeUs:
       ds      1

_TmsRxH:
       ds      1

_TmsRxL:
       ds      1

_dsp_100ms:
       ds      1

_fmd_HfreqOn:
       ds      1

_fmd_antishaketimecount:
       ds      1

_fmd_x:
       ds      1

send_uart_data@ByteNum:
       ds      1

_fmd_AntiWaterBit:
       ds      1

psect	dataBANK0l,class=BANK0,space=1
global __pdataBANK0l
__pdataBANK0l:
	file	"TOUCH.C"
	line	82
_fmd_DownDataTime:
       ds      2

psect	dataBANK0l
	file	"TOUCH.C"
	line	76
_fmd_DownTouchCount:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_fmd_theUsedChannel:
       ds      15

_RxBuf:
       ds      8

_send_buf:
       ds      6

_fmd_KeyDValue_Key:
       ds      4

_fmd_KeyDValue_Key_base:
       ds      4

_fmd_KeyDValue_Key_baseBuff:
       ds      4

_BuzzerCnt:
       ds      2

_KeyCnt:
       ds      2

_TmpCnt:
       ds      2

_fmd_thedeathcount:
       ds      2

_fmd_thedeathcount1:
       ds      2

DisplayHandler@DspCnt:
       ds      1

_TimeType:
       ds      1

_fmd_KeyBuffPress:
       ds      1

_fmd_KeyBuffUnPress:
       ds      1

_fmd_PressOff:
       ds      1

_fmd_PressOffCount:
       ds      1

_fmd_a3:
       ds      1

_fmd_antishaketimecount1:
       ds      1

_fmd_channels:
       ds      1

_fmd_currentCount:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"TOUCH.C"
	line	81
_fmd_UpDataTime:
       ds      2

psect	dataBANK1
	file	"TOUCH.C"
	line	75
_fmd_UpTouchCount:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	btemp/btemp+1 has the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	movlw	1
	subwf	btemp,f
	movlw	0
	subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BIGRAM
psect cinit,class=CODE,delta=2
	global __pbssBIGRAM
	movlw	low(__pbssBIGRAM)
	movwf	fsr0l
	movlw	high(__pbssBIGRAM)
	movwf	fsr0h
	movlw	low(0F0h)
	movwf	btemp
	movlw	high(0F0h)
	movwf	btemp+1
	fcall	clear_ram
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0l
psect cinit,class=CODE,delta=2
	global __pbssBANK0l
	movlw	low(__pbssBANK0l)
	movwf	fsr0l
	movlw	high(__pbssBANK0l)
	movwf	fsr0h
	movlw	low(02Bh)
	movwf	btemp
	movlw	high(02Bh)
	movwf	btemp+1
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	low(03Dh)
	movwf	btemp
	movlw	high(03Dh)
	movwf	btemp+1
	fcall	clear_ram
; Initialize objects allocated to BANK0l
	global __pidataBANK0l,__pdataBANK0l
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0l+0		;fetch initializer
	movwf	__pdataBANK0l+0&07fh		
	fcall	__pidataBANK0l+1		;fetch initializer
	movwf	__pdataBANK0l+1&07fh		
	fcall	__pidataBANK0l+2		;fetch initializer
	movwf	__pdataBANK0l+2&07fh		
	fcall	__pidataBANK0l+3		;fetch initializer
	movwf	__pdataBANK0l+3&07fh		
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2
	movlb 1	; select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_TIME_INIT
?_TIME_INIT:	; 0 bytes @ 0x0
	global	?_Sys_init
?_Sys_init:	; 0 bytes @ 0x0
	global	?_TouchInital
?_TouchInital:	; 0 bytes @ 0x0
	global	?_Time2Initial
?_Time2Initial:	; 0 bytes @ 0x0
	global	?_Time4Initial
?_Time4Initial:	; 0 bytes @ 0x0
	global	?_WDT_INITIAL
?_WDT_INITIAL:	; 0 bytes @ 0x0
	global	?_UART_INITIAL
?_UART_INITIAL:	; 0 bytes @ 0x0
	global	?_User_init
?_User_init:	; 0 bytes @ 0x0
	global	?_Display_init
?_Display_init:	; 0 bytes @ 0x0
	global	?_RxData_Drive
?_RxData_Drive:	; 0 bytes @ 0x0
	global	?_KeyScanHandler
?_KeyScanHandler:	; 0 bytes @ 0x0
	global	?_dokey
?_dokey:	; 0 bytes @ 0x0
	global	?_SysPowerHandler
?_SysPowerHandler:	; 0 bytes @ 0x0
	global	?_ChkTimeEventStatus
?_ChkTimeEventStatus:	; 0 bytes @ 0x0
	global	?_Rx_Drive
?_Rx_Drive:	; 0 bytes @ 0x0
	global	??_Rx_Drive
??_Rx_Drive:	; 0 bytes @ 0x0
	global	?_DisplayHandler
?_DisplayHandler:	; 0 bytes @ 0x0
	global	?_send_uart_data
?_send_uart_data:	; 0 bytes @ 0x0
	global	?_UartSetEmptyInt
?_UartSetEmptyInt:	; 0 bytes @ 0x0
	global	?_DataProcessing
?_DataProcessing:	; 0 bytes @ 0x0
	global	?_PowerKeyExec
?_PowerKeyExec:	; 0 bytes @ 0x0
	global	?_ModeKeyExec
?_ModeKeyExec:	; 0 bytes @ 0x0
	global	?_ManualKeyExec
?_ManualKeyExec:	; 0 bytes @ 0x0
	global	?_HeatKeyExec
?_HeatKeyExec:	; 0 bytes @ 0x0
	global	?_StrongKeyExec
?_StrongKeyExec:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_exact_event_process
?_exact_event_process:	; 0 bytes @ 0x0
	global	??_exact_event_process
??_exact_event_process:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_refresh_data
?_refresh_data:	; 0 bytes @ 0x0
	global	?_ShowLedData
?_ShowLedData:	; 0 bytes @ 0x0
	global	??_ShowLedData
??_ShowLedData:	; 0 bytes @ 0x0
	global	?_DIV
?_DIV:	; 0 bytes @ 0x0
	global	?_TouchInit
?_TouchInit:	; 0 bytes @ 0x0
	global	?_MxSet013
?_MxSet013:	; 0 bytes @ 0x0
	global	?_StartHigeFreq
?_StartHigeFreq:	; 0 bytes @ 0x0
	global	?_ReadTouchData
?_ReadTouchData:	; 0 bytes @ 0x0
	global	?_HighFreqCo
?_HighFreqCo:	; 0 bytes @ 0x0
	global	?i1_UartSetEmptyInt
?i1_UartSetEmptyInt:	; 0 bytes @ 0x0
	global	??i1_UartSetEmptyInt
??i1_UartSetEmptyInt:	; 0 bytes @ 0x0
	global	?_SpecialDisplay1
?_SpecialDisplay1:	; 1 bytes @ 0x0
	global	?_SpecialDisplay2
?_SpecialDisplay2:	; 1 bytes @ 0x0
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	ShowLedData@DspBuf
ShowLedData@DspBuf:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	i1UartSetEmptyInt@value
i1UartSetEmptyInt@value:	; 1 bytes @ 0x0
	ds	1
	global	??_send_uart_data
??_send_uart_data:	; 0 bytes @ 0x1
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	ds	1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	ds	1
	global	??_SpecialDisplay1
??_SpecialDisplay1:	; 0 bytes @ 0x4
	global	SpecialDisplay1@DspBuf
SpecialDisplay1@DspBuf:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	ds	1
	global	??_SpecialDisplay2
??_SpecialDisplay2:	; 0 bytes @ 0x5
	global	SpecialDisplay2@DspBuf
SpecialDisplay2@DspBuf:	; 1 bytes @ 0x5
	ds	1
	global	??_DisplayHandler
??_DisplayHandler:	; 0 bytes @ 0x6
	global	??_ISR
??_ISR:	; 0 bytes @ 0x6
	ds	1
psect	cstackBANK0hh,class=BANK0,space=1
global __pcstackBANK0hh
__pcstackBANK0hh:
	global	??_TIME_INIT
??_TIME_INIT:	; 0 bytes @ 0x0
	global	??_Sys_init
??_Sys_init:	; 0 bytes @ 0x0
	global	??_TouchInital
??_TouchInital:	; 0 bytes @ 0x0
	global	??_Time2Initial
??_Time2Initial:	; 0 bytes @ 0x0
	global	??_Time4Initial
??_Time4Initial:	; 0 bytes @ 0x0
	global	??_WDT_INITIAL
??_WDT_INITIAL:	; 0 bytes @ 0x0
	global	??_UART_INITIAL
??_UART_INITIAL:	; 0 bytes @ 0x0
	global	??_User_init
??_User_init:	; 0 bytes @ 0x0
	global	??_Display_init
??_Display_init:	; 0 bytes @ 0x0
	global	??_RxData_Drive
??_RxData_Drive:	; 0 bytes @ 0x0
	global	??_SysPowerHandler
??_SysPowerHandler:	; 0 bytes @ 0x0
	global	??_ChkTimeEventStatus
??_ChkTimeEventStatus:	; 0 bytes @ 0x0
	global	??_UartSetEmptyInt
??_UartSetEmptyInt:	; 0 bytes @ 0x0
	global	??_PowerKeyExec
??_PowerKeyExec:	; 0 bytes @ 0x0
	global	??_ModeKeyExec
??_ModeKeyExec:	; 0 bytes @ 0x0
	global	??_ManualKeyExec
??_ManualKeyExec:	; 0 bytes @ 0x0
	global	??_HeatKeyExec
??_HeatKeyExec:	; 0 bytes @ 0x0
	global	??_StrongKeyExec
??_StrongKeyExec:	; 0 bytes @ 0x0
	global	??_DIV
??_DIV:	; 0 bytes @ 0x0
	global	??_TouchInit
??_TouchInit:	; 0 bytes @ 0x0
	global	??_MxSet013
??_MxSet013:	; 0 bytes @ 0x0
	global	??_HighFreqCo
??_HighFreqCo:	; 0 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	UartSetEmptyInt@value
UartSetEmptyInt@value:	; 1 bytes @ 0x0
	global	TouchInit@Time
TouchInit@Time:	; 1 bytes @ 0x0
	global	MxSet013@a
MxSet013@a:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	ds	1
	global	??_dokey
??_dokey:	; 0 bytes @ 0x1
	global	??_refresh_data
??_refresh_data:	; 0 bytes @ 0x1
	global	??_StartHigeFreq
??_StartHigeFreq:	; 0 bytes @ 0x1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	ds	1
	global	StartHigeFreq@a
StartHigeFreq@a:	; 1 bytes @ 0x2
	global	HighFreqCo@a
HighFreqCo@a:	; 1 bytes @ 0x2
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	ds	1
	global	??_DataProcessing
??_DataProcessing:	; 0 bytes @ 0x3
	ds	8
	global	??_ReadTouchData
??_ReadTouchData:	; 0 bytes @ 0xB
	ds	2
	global	?_TouchKeyScan
?_TouchKeyScan:	; 2 bytes @ 0xD
	ds	2
	global	??_KeyScanHandler
??_KeyScanHandler:	; 0 bytes @ 0xF
	global	??_TouchKeyScan
??_TouchKeyScan:	; 0 bytes @ 0xF
	global	??_main
??_main:	; 0 bytes @ 0xF
;;Data sizes: Strings 0, constant 193, data 8, bss 108, persistent 8 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7      14
;; BANK0hh         21     15      15
;; BANK0l          48      0      48
;; BANK1           80      0      70
;; BANK2           80      0       0
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           80      0       0
;; BANK7           80      0       0
;; BANK8           80      0       0
;; BANK9           48      0       0
;; BANK10           0      0       0
;; BANK11           0      0       0
;; BANK12           0      0       0

;;
;; Pointer list with targets:

;; ?_TouchKeyScan	unsigned int  size(1) Largest target is 1
;;		 -> fmd_a(COMMON[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _DisplayHandler->_SpecialDisplay2
;;   _SpecialDisplay2->___lbmod
;;   _SpecialDisplay1->___lbdiv
;;   _send_uart_data->i1_UartSetEmptyInt
;;
;; Critical Paths under _main in BANK0hh
;;
;;   _KeyScanHandler->_TouchKeyScan
;;   _TouchKeyScan->_ReadTouchData
;;   _ReadTouchData->_DataProcessing
;;   _DataProcessing->___bmul
;;   _DataProcessing->_StartHigeFreq
;;   _DataProcessing->_HighFreqCo
;;   _StartHigeFreq->_TouchInit
;;   _refresh_data->_UartSetEmptyInt
;;
;; Critical Paths under _ISR in BANK0hh
;;
;;   None.
;;
;; Critical Paths under _main in BANK0l
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK0l
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK6
;;
;;   None.
;;
;; Critical Paths under _main in BANK7
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK7
;;
;;   None.
;;
;; Critical Paths under _main in BANK8
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK8
;;
;;   None.
;;
;; Critical Paths under _main in BANK9
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK9
;;
;;   None.
;;
;; Critical Paths under _main in BANK10
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK10
;;
;;   None.
;;
;; Critical Paths under _main in BANK11
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK11
;;
;;   None.
;;
;; Critical Paths under _main in BANK12
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK12
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    1689
;;                           _Sys_init
;;                        _TouchInital
;;                       _Time2Initial
;;                       _Time4Initial
;;                        _WDT_INITIAL
;;                       _UART_INITIAL
;;                          _User_init
;;                       _Display_init
;;                       _RxData_Drive
;;                     _KeyScanHandler
;;                              _dokey
;;                    _SysPowerHandler
;;                 _ChkTimeEventStatus
;; ---------------------------------------------------------------------------------
;; (1) _KeyScanHandler                                       0     0      0    1658
;;                       _TouchKeyScan
;; ---------------------------------------------------------------------------------
;; (2) _TouchKeyScan                                         2     0      2    1658
;;                                             13 BANK0hh    2     0      2
;;                      _ReadTouchData
;; ---------------------------------------------------------------------------------
;; (3) _ReadTouchData                                        2     2      0    1658
;;                                             11 BANK0hh    2     2      0
;;                          _TouchInit
;;                           _MxSet013
;;                                _DIV
;;                      _StartHigeFreq
;;                     _DataProcessing
;; ---------------------------------------------------------------------------------
;; (4) _DataProcessing                                       8     8      0     914
;;                                              3 BANK0hh    8     8      0
;;                             ___bmul
;;                      _StartHigeFreq
;;                         _HighFreqCo
;;                                _DIV
;; ---------------------------------------------------------------------------------
;; (1) _SysPowerHandler                                      0     0      0       0
;;                          _User_init
;; ---------------------------------------------------------------------------------
;; (1) _dokey                                                0     0      0      31
;;                       _PowerKeyExec
;;                        _ModeKeyExec
;;                        _HeatKeyExec
;;                      _StrongKeyExec
;;                      _ManualKeyExec
;;                       _refresh_data
;; ---------------------------------------------------------------------------------
;; (5) _StartHigeFreq                                        2     2      0     620
;;                                              1 BANK0hh    2     2      0
;;                          _TouchInit
;;                                _DIV
;; ---------------------------------------------------------------------------------
;; (2) _refresh_data                                         0     0      0      31
;;                    _UartSetEmptyInt
;; ---------------------------------------------------------------------------------
;; (2) _User_init                                            0     0      0       0
;;                          _TIME_INIT
;; ---------------------------------------------------------------------------------
;; (2) _PowerKeyExec                                         0     0      0       0
;;                          _TIME_INIT
;; ---------------------------------------------------------------------------------
;; (5) ___bmul                                               3     2      1     108
;;                                              0 BANK0hh    3     2      1
;; ---------------------------------------------------------------------------------
;; (5) _HighFreqCo                                           3     3      0     186
;;                                              0 BANK0hh    3     3      0
;; ---------------------------------------------------------------------------------
;; (4) _MxSet013                                             1     1      0      93
;;                                              0 BANK0hh    1     1      0
;; ---------------------------------------------------------------------------------
;; (6) _TouchInit                                            1     1      0      31
;;                                              0 BANK0hh    1     1      0
;; ---------------------------------------------------------------------------------
;; (5) _DIV                                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _UartSetEmptyInt                                      1     1      0      31
;;                                              0 BANK0hh    1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _ChkTimeEventStatus                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _RxData_Drive                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Display_init                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _UART_INITIAL                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _WDT_INITIAL                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Time4Initial                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Time2Initial                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _TouchInital                                          2     2      0       0
;;                                              0 BANK0hh    2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Sys_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _StrongKeyExec                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _HeatKeyExec                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ManualKeyExec                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ModeKeyExec                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _TIME_INIT                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _ISR                                                  1     1      0     715
;;                                              6 COMMON     1     1      0
;;                           _Rx_Drive
;;                _exact_event_process
;;                     _DisplayHandler
;;                     _send_uart_data
;; ---------------------------------------------------------------------------------
;; (8) _DisplayHandler                                       0     0      0     627
;;                    _SpecialDisplay1
;;                        _ShowLedData
;;                    _SpecialDisplay2
;; ---------------------------------------------------------------------------------
;; (9) _SpecialDisplay2                                      1     1      0     315
;;                                              5 COMMON     1     1      0
;;                            ___lbmod
;; ---------------------------------------------------------------------------------
;; (9) _SpecialDisplay1                                      1     1      0     290
;;                                              4 COMMON     1     1      0
;;                            ___lbdiv
;; ---------------------------------------------------------------------------------
;; (8) _send_uart_data                                       0     0      0      88
;;                  i1_UartSetEmptyInt
;; ---------------------------------------------------------------------------------
;; (9) i1_UartSetEmptyInt                                    1     1      0      88
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (10) ___lbmod                                             5     4      1     232
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (10) ___lbdiv                                             4     3      1     241
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (9) _ShowLedData                                          1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (8) _Rx_Drive                                             4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (8) _exact_event_process                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 10
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Sys_init
;;   _TouchInital
;;   _Time2Initial
;;   _Time4Initial
;;   _WDT_INITIAL
;;   _UART_INITIAL
;;   _User_init
;;     _TIME_INIT
;;   _Display_init
;;   _RxData_Drive
;;   _KeyScanHandler
;;     _TouchKeyScan
;;       _ReadTouchData
;;         _TouchInit
;;         _MxSet013
;;         _DIV
;;         _StartHigeFreq
;;           _TouchInit
;;           _DIV
;;         _DataProcessing
;;           ___bmul
;;           _StartHigeFreq
;;             _TouchInit
;;             _DIV
;;           _HighFreqCo
;;           _DIV
;;   _dokey
;;     _PowerKeyExec
;;       _TIME_INIT
;;     _ModeKeyExec
;;     _HeatKeyExec
;;     _StrongKeyExec
;;     _ManualKeyExec
;;     _refresh_data
;;       _UartSetEmptyInt
;;   _SysPowerHandler
;;     _User_init
;;       _TIME_INIT
;;   _ChkTimeEventStatus
;;
;; _ISR (ROOT)
;;   _Rx_Drive
;;   _exact_event_process
;;   _DisplayHandler
;;     _SpecialDisplay1
;;       ___lbdiv
;;     _ShowLedData
;;     _SpecialDisplay2
;;       ___lbmod
;;   _send_uart_data
;;     i1_UartSetEmptyInt
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             3F0      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      7       E       2      100.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       E       3        0.0%
;;BITBANK0hh          15      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITBANK0l           30      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0hh             15      F       F       6       71.4%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BANK0l              30      0      30       7      100.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BITBANK1            50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BANK1               50      0      46       9       87.5%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITBANK2            50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK2               50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BITBANK3            50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BANK3               50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITBANK4            50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BANK4               50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITBANK5            50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BANK5               50      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITBANK6            50      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BANK6               50      0       0      19        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITBANK7            50      0       0      20        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;BANK7               50      0       0      21        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;ABS                  0      0      93      22        0.0%
;;BITBANK8            50      0       0      23        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BANK8               50      0       0      24        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITBANK9            50      0       0      25        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BANK9               30      0       0      26        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITBANK10           50      0       0      27        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BANK10               0      0       0      28        0.0%
;;BITBANK11           50      0       0      29        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BANK11               0      0       0      30        0.0%
;;BITBANK12           30      0       0      31        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%
;;BANK12               0      0       0      32        0.0%
;;DATA                 0      0      A1      33        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 150 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Sys_init
;;		_TouchInital
;;		_Time2Initial
;;		_Time4Initial
;;		_WDT_INITIAL
;;		_UART_INITIAL
;;		_User_init
;;		_Display_init
;;		_RxData_Drive
;;		_KeyScanHandler
;;		_dokey
;;		_SysPowerHandler
;;		_ChkTimeEventStatus
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	150
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-status,0+pclath+cstack]
	line	151
	
l25720:	
;main.c: 151: Sys_init();
	fcall	_Sys_init
	line	152
	
l25722:	
;main.c: 152: TouchInital();
	fcall	_TouchInital
	line	154
	
l25724:	
;main.c: 154: Time2Initial();
	fcall	_Time2Initial
	line	155
	
l25726:	
;main.c: 155: Time4Initial();
	fcall	_Time4Initial
	line	156
	
l25728:	
;main.c: 156: WDT_INITIAL ();
	fcall	_WDT_INITIAL
	line	157
	
l25730:	
;main.c: 157: UART_INITIAL();
	fcall	_UART_INITIAL
	line	159
	
l25732:	
;main.c: 159: User_init();
	fcall	_User_init
	line	160
	
l25734:	
;main.c: 160: Display_init();
	fcall	_Display_init
	line	161
	
l25736:	
;main.c: 161: {BuzzerCnt=400;};
	movlw	low(0190h)
	movlb 1	; select bank1
	movwf	(_BuzzerCnt)^080h
	movlw	high(0190h)
	movwf	((_BuzzerCnt)^080h)+1
	line	165
	
l25738:	
# 165 "main.c"
clrwdt ;#
psect	maintext
	line	168
	
l25740:	
;main.c: 168: if(SysFunFlg0.OneBits.b1)
	btfss	(_SysFunFlg0),1	;volatile
	goto	u8781
	goto	u8780
u8781:
	goto	l25746
u8780:
	line	170
	
l25742:	
;main.c: 169: {
;main.c: 170: SysFunFlg0.OneBits.b1=0;
	bcf	(_SysFunFlg0),1	;volatile
	line	171
	
l25744:	
;main.c: 171: RxData_Drive();
	fcall	_RxData_Drive
	line	173
	
l25746:	
;main.c: 172: }
;main.c: 173: if(SysFunFlg0.OneBits.b0)
	btfss	(_SysFunFlg0),0	;volatile
	goto	u8791
	goto	u8790
u8791:
	goto	l25738
u8790:
	line	175
	
l25748:	
;main.c: 174: {
;main.c: 175: SysFunFlg0.OneBits.b0=0;
	bcf	(_SysFunFlg0),0	;volatile
	line	177
	
l25750:	
;main.c: 177: KeyScanHandler();
	fcall	_KeyScanHandler
	line	178
	
l25752:	
;main.c: 178: dokey();
	fcall	_dokey
	line	179
	
l25754:	
;main.c: 179: SysPowerHandler();
	fcall	_SysPowerHandler
	line	181
	
l25756:	
;main.c: 181: ChkTimeEventStatus();
	fcall	_ChkTimeEventStatus
	goto	l25738
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	184
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_KeyScanHandler
psect	text1287,local,class=CODE,delta=2
global __ptext1287
__ptext1287:

;; *************** function _KeyScanHandler *****************
;; Defined at:
;;		line 51 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/1
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_TouchKeyScan
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1287
	file	"sub.c"
	line	51
	global	__size_of_KeyScanHandler
	__size_of_KeyScanHandler	equ	__end_of_KeyScanHandler-_KeyScanHandler
	
_KeyScanHandler:	
	opt	stack 6
; Regs used in _KeyScanHandler: [wreg-status,0+pclath+cstack]
	line	53
	
l25682:	
;sub.c: 53: readKeyNum = TouchKeyScan();
	fcall	_TouchKeyScan
	movf	(1+(?_TouchKeyScan)),w
	movwf	(_readKeyNum+1)	;volatile
	movf	(0+(?_TouchKeyScan)),w
	movwf	(_readKeyNum)	;volatile
	line	55
	
l25684:	
;sub.c: 55: if((SysFunFlg2.OneBits.b7 == 0) && readKeyNum)
	btfsc	(_SysFunFlg2),7	;volatile
	goto	u8661
	goto	u8660
u8661:
	goto	l25700
u8660:
	
l25686:	
	movf	(_readKeyNum+1),w	;volatile
	iorwf	(_readKeyNum),w	;volatile
	skipnz
	goto	u8671
	goto	u8670
u8671:
	goto	l25700
u8670:
	line	61
	
l25688:	
;sub.c: 56: {
;sub.c: 61: if(readKeyNum&0x4000)
	btfss	(_readKeyNum+1),(14)&7	;volatile
	goto	u8681
	goto	u8680
u8681:
	goto	l12466
u8680:
	line	63
	
l25690:	
;sub.c: 62: {
;sub.c: 63: KeyType=ModeKey;
	movlw	(02h)
	movwf	(_KeyType)
	line	64
;sub.c: 64: }
	goto	l25700
	line	65
	
l12466:	
;sub.c: 65: else if(readKeyNum&0x0080)
	btfss	(_readKeyNum),(7)&7	;volatile
	goto	u8691
	goto	u8690
u8691:
	goto	l12468
u8690:
	line	67
	
l25692:	
;sub.c: 66: {
;sub.c: 67: KeyType=PowerKey;
	clrf	(_KeyType)
	incf	(_KeyType),f
	line	68
;sub.c: 68: }
	goto	l25700
	line	69
	
l12468:	
;sub.c: 69: else if(readKeyNum&0x0800)
	btfss	(_readKeyNum+1),(11)&7	;volatile
	goto	u8701
	goto	u8700
u8701:
	goto	l12470
u8700:
	line	71
	
l25694:	
;sub.c: 70: {
;sub.c: 71: KeyType=ManualKey;
	movlw	(06h)
	movwf	(_KeyType)
	line	72
;sub.c: 72: }
	goto	l25700
	line	73
	
l12470:	
;sub.c: 73: else if(readKeyNum&0x2000)
	btfss	(_readKeyNum+1),(13)&7	;volatile
	goto	u8711
	goto	u8710
u8711:
	goto	l12472
u8710:
	line	75
	
l25696:	
;sub.c: 74: {
;sub.c: 75: KeyType=StrongKey;
	movlw	(05h)
	movwf	(_KeyType)
	line	76
;sub.c: 76: }
	goto	l25700
	line	77
	
l12472:	
;sub.c: 77: else if(readKeyNum&0x1000)
	btfss	(_readKeyNum+1),(12)&7	;volatile
	goto	u8721
	goto	u8720
u8721:
	goto	l12469
u8720:
	line	79
	
l25698:	
;sub.c: 78: {
;sub.c: 79: KeyType=HeatKey;
	movlw	(04h)
	movwf	(_KeyType)
	goto	l25700
	line	81
	
l12469:	
	line	82
	
l25700:	
;sub.c: 80: }
;sub.c: 81: }
;sub.c: 82: if((readKeyNum&0x1000)&&(!SysFunFlg0.OneBits.b7))
	btfss	(_readKeyNum+1),(12)&7	;volatile
	goto	u8731
	goto	u8730
u8731:
	goto	l25708
u8730:
	
l25702:	
	btfsc	(_SysFunFlg0),7	;volatile
	goto	u8741
	goto	u8740
u8741:
	goto	l25708
u8740:
	line	84
	
l25704:	
;sub.c: 83: {
;sub.c: 84: if(++TmpCnt==500)
	movlb 1	; select bank1
	incf	(_TmpCnt)^080h,f
	skipnz
	incf	(_TmpCnt+1)^080h,f
	decf	((_TmpCnt+1)^080h),w
	movlw	244
	skipnz
	xorwf	((_TmpCnt)^080h),w

	skipz
	goto	u8751
	goto	u8750
u8751:
	goto	l25708
u8750:
	line	86
	
l25706:	
;sub.c: 85: {
;sub.c: 86: SysFunFlg1.OneBits.b2=1;
	movlb 0	; select bank0
	bsf	(_SysFunFlg1),2	;volatile
	line	87
;sub.c: 87: KeyType=PowerKey;
	clrf	(_KeyType)
	incf	(_KeyType),f
	line	91
	
l25708:	
;sub.c: 88: }
;sub.c: 89: }
;sub.c: 91: if(readKeyNum)
	movlb 0	; select bank0
	movf	(_readKeyNum+1),w	;volatile
	iorwf	(_readKeyNum),w	;volatile
	skipnz
	goto	u8761
	goto	u8760
u8761:
	goto	l25714
u8760:
	line	92
	
l25710:	
;sub.c: 92: {SysFunFlg2.OneBits.b7=1;KeyCnt=10;}
	bsf	(_SysFunFlg2),7	;volatile
	
l25712:	
	movlw	0Ah
	movlb 1	; select bank1
	movwf	(_KeyCnt)^080h
	clrf	(_KeyCnt+1)^080h
	goto	l12481
	line	95
	
l25714:	
;sub.c: 93: else
;sub.c: 94: {
;sub.c: 95: if(KeyCnt)KeyCnt--;
	movlb 1	; select bank1
	movf	(_KeyCnt+1)^080h,w
	iorwf	(_KeyCnt)^080h,w
	skipnz
	goto	u8771
	goto	u8770
u8771:
	goto	l12479
u8770:
	
l25716:	
	movlw	low(01h)
	subwf	(_KeyCnt)^080h,f
	movlw	high(01h)
	subwfb	(_KeyCnt+1)^080h,f
	goto	l12481
	line	96
	
l12479:	
	line	97
;sub.c: 96: else
;sub.c: 97: {SysFunFlg2.OneBits.b7=0;TmpCnt=0;}
	movlb 0	; select bank0
	bcf	(_SysFunFlg2),7	;volatile
	
l25718:	
	movlb 1	; select bank1
	clrf	(_TmpCnt)^080h
	clrf	(_TmpCnt+1)^080h
	line	99
	
l12481:	
	return
	opt stack 0
GLOBAL	__end_of_KeyScanHandler
	__end_of_KeyScanHandler:
;; =============== function _KeyScanHandler ends ============

	signat	_KeyScanHandler,88
	global	_TouchKeyScan
psect	text1288,local,class=CODE,delta=2
global __ptext1288
__ptext1288:

;; *************** function _TouchKeyScan *****************
;; Defined at:
;;		line 1328 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   13[BANK0h] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_ReadTouchData
;; This function is called by:
;;		_KeyScanHandler
;; This function uses a non-reentrant model
;;
psect	text1288
	file	"TOUCH.C"
	line	1328
	global	__size_of_TouchKeyScan
	__size_of_TouchKeyScan	equ	__end_of_TouchKeyScan-_TouchKeyScan
	
_TouchKeyScan:	
	opt	stack 6
; Regs used in _TouchKeyScan: [wreg-status,0+pclath+cstack]
	line	1330
	
l25646:	
;TOUCH.C: 1330: ReadTouchData();
	fcall	_ReadTouchData
	line	1332
	
l25648:	
;TOUCH.C: 1332: if((fmd_updataFlag != 2) && (fmd_a2==0))
	movlb 1	; select bank1
	movf	(_fmd_updataFlag)^080h,w
	xorlw	02h&0ffh
	skipnz
	goto	u8611
	goto	u8610
u8611:
	goto	l25678
u8610:
	
l25650:	
	movlb 0	; select bank0
	movf	(_fmd_a2),f
	skipz	;volatile
	goto	u8621
	goto	u8620
u8621:
	goto	l25678
u8620:
	line	1334
	
l25652:	
;TOUCH.C: 1333: {
;TOUCH.C: 1334: if(fmd_Keystatus1 != 0)
	movf	(_fmd_Keystatus1+1),w	;volatile
	iorwf	(_fmd_Keystatus1),w	;volatile
	skipnz
	goto	u8631
	goto	u8630
u8631:
	goto	l25670
u8630:
	line	1336
	
l25654:	
;TOUCH.C: 1335: {
;TOUCH.C: 1336: fmd_updataFlag = 0;
	movlb 1	; select bank1
	clrf	(_fmd_updataFlag)^080h
	line	1338
	
l25656:	
	incf	(_fmd_thedeathcount)^080h,f
	skipnz
	incf	(_fmd_thedeathcount+1)^080h,f
	movlw	high(0Ch)
	subwf	((_fmd_thedeathcount+1)^080h),w
	movlw	low(0Ch)
	skipnz
	subwf	((_fmd_thedeathcount)^080h),w
	skipc
	goto	u8641
	goto	u8640
u8641:
	goto	l25666
u8640:
	line	1340
	
l25658:	
;TOUCH.C: 1339: {
;TOUCH.C: 1340: fmd_thedeathcount=0;
	clrf	(_fmd_thedeathcount)^080h
	clrf	(_fmd_thedeathcount+1)^080h
	line	1342
	
l25660:	
;TOUCH.C: 1342: if(++fmd_thedeathcount1>=fmd_thedeathcount2)
	incf	(_fmd_thedeathcount1)^080h,f
	skipnz
	incf	(_fmd_thedeathcount1+1)^080h,f
	movf	(_fmd_thedeathcount2+1)^080h,w
	subwf	((_fmd_thedeathcount1+1)^080h),w
	skipz
	goto	u8655
	movf	(_fmd_thedeathcount2)^080h,w
	subwf	((_fmd_thedeathcount1)^080h),w
u8655:
	skipc
	goto	u8651
	goto	u8650
u8651:
	goto	l25666
u8650:
	line	1344
	
l25662:	
;TOUCH.C: 1343: {
;TOUCH.C: 1344: fmd_thedeathcount1=0;
	clrf	(_fmd_thedeathcount1)^080h
	clrf	(_fmd_thedeathcount1+1)^080h
	line	1348
	
l25664:	
;TOUCH.C: 1347: {
;TOUCH.C: 1348: fmd_updataFlag = 2;
	movlw	(02h)
	movwf	(_fmd_updataFlag)^080h
	line	1353
	
l25666:	
;TOUCH.C: 1349: }
;TOUCH.C: 1350: }
;TOUCH.C: 1351: }
;TOUCH.C: 1353: fmd_UpTouchCount = 0;
	clrf	(_fmd_UpTouchCount)^080h
	clrf	(_fmd_UpTouchCount+1)^080h
	line	1354
	
l25668:	
;TOUCH.C: 1354: fmd_DownTouchCount = 0;
	movlb 0	; select bank0
	clrf	(_fmd_DownTouchCount)
	clrf	(_fmd_DownTouchCount+1)
	line	1355
;TOUCH.C: 1355: }
	goto	l25678
	line	1358
	
l25670:	
;TOUCH.C: 1356: else
;TOUCH.C: 1357: {
;TOUCH.C: 1358: fmd_UpTouchCount++;
	movlb 1	; select bank1
	incf	(_fmd_UpTouchCount)^080h,f
	skipnz
	incf	(_fmd_UpTouchCount+1)^080h,f
	line	1359
;TOUCH.C: 1359: fmd_DownTouchCount++;
	movlb 0	; select bank0
	incf	(_fmd_DownTouchCount),f
	skipnz
	incf	(_fmd_DownTouchCount+1),f
	line	1360
	
l25672:	
;TOUCH.C: 1360: fmd_updataFlag = 1;
	movlb 1	; select bank1
	clrf	(_fmd_updataFlag)^080h
	incf	(_fmd_updataFlag)^080h,f
	line	1362
	
l25674:	
;TOUCH.C: 1362: fmd_thedeathcount = 0;
	clrf	(_fmd_thedeathcount)^080h
	clrf	(_fmd_thedeathcount+1)^080h
	line	1363
	
l25676:	
;TOUCH.C: 1363: fmd_thedeathcount1 = 0;
	clrf	(_fmd_thedeathcount1)^080h
	clrf	(_fmd_thedeathcount1+1)^080h
	line	1367
	
l25678:	
;TOUCH.C: 1364: }
;TOUCH.C: 1365: }
;TOUCH.C: 1367: return fmd_Keystatus1;
	movlb 0	; select bank0
	movf	(_fmd_Keystatus1+1),w	;volatile
	movwf	(?_TouchKeyScan+1)
	movf	(_fmd_Keystatus1),w	;volatile
	movwf	(?_TouchKeyScan)
	line	1368
	
l17785:	
	return
	opt stack 0
GLOBAL	__end_of_TouchKeyScan
	__end_of_TouchKeyScan:
;; =============== function _TouchKeyScan ends ============

	signat	_TouchKeyScan,90
	global	_ReadTouchData
psect	text1289,local,class=CODE,delta=2
global __ptext1289
__ptext1289:

;; *************** function _ReadTouchData *****************
;; Defined at:
;;		line 492 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_TouchInit
;;		_MxSet013
;;		_DIV
;;		_StartHigeFreq
;;		_DataProcessing
;; This function is called by:
;;		_TouchKeyScan
;; This function uses a non-reentrant model
;;
psect	text1289
	file	"TOUCH.C"
	line	492
	global	__size_of_ReadTouchData
	__size_of_ReadTouchData	equ	__end_of_ReadTouchData-_ReadTouchData
	
_ReadTouchData:	
	opt	stack 6
; Regs used in _ReadTouchData: [wreg-status,0+pclath+cstack]
	line	493
	
l25144:	
;TOUCH.C: 493: if(fmd_a<4)
	movlw	(04h)
	subwf	(_fmd_a),w	;volatile
	skipnc
	goto	u8151
	goto	u8150
u8151:
	goto	l25248
u8150:
	goto	l25168
	line	501
	
l25156:	
	movlw	low(07880h)
	movwf	(??_ReadTouchData+0)+0
	movlw	high(07880h)
	movwf	(??_ReadTouchData+0)+0+1
	incf	(_fmd_x),w
	goto	u8164
u8165:
	lsrf	(??_ReadTouchData+0)+1,f
	rrf	(??_ReadTouchData+0)+0,f
u8164:
	decfsz	wreg,f
	goto	u8165
	btfss	0+(??_ReadTouchData+0)+0,(0)&7
	goto	u8171
	goto	u8170
u8171:
	goto	l25160
u8170:
	line	503
	
l25158:	
;TOUCH.C: 502: {
;TOUCH.C: 503: fmd_AntiWaterBit = fmd_x-4;
	movf	(_fmd_x),w
	addlw	0FCh
	movwf	(_fmd_AntiWaterBit)
	line	499
	
l25160:	
	incf	(_fmd_x),f
	movlw	(08h)
	subwf	(_fmd_x),w
	skipc
	goto	u8181
	goto	u8180
u8181:
	goto	l25156
u8180:
	line	506
	
l25162:	
	movlw	(01h)
	movwf	(??_ReadTouchData+0)+0
	incf	(_fmd_a),w	;volatile
	goto	u8194
u8195:
	lslf	(??_ReadTouchData+0)+0,f
u8194:
	decfsz	wreg,f
	goto	u8195
	movf	0+(??_ReadTouchData+0)+0,w
	xorlw	0ffh
	andlw	080h
	movlb 7	; select bank7
	movwf	(911)^0380h	;volatile
	line	507
	
l25164:	
;TOUCH.C: 507: WPROOF2 = 0;
	clrf	(912)^0380h	;volatile
	line	508
	
l25166:	
;TOUCH.C: 508: WPROOF3 = fmd_a|0x80;
	movf	(_fmd_a),w	;volatile
	iorlw	080h
	movwf	(913)^0380h	;volatile
	line	509
;TOUCH.C: 509: }
	goto	l25180
	line	512
	
l25168:	
;TOUCH.C: 510: else
;TOUCH.C: 511: {
;TOUCH.C: 512: WPROOF1 = 0;
	movlb 7	; select bank7
	clrf	(911)^0380h	;volatile
	line	513
;TOUCH.C: 513: WPROOF2 = 0;
	clrf	(912)^0380h	;volatile
	line	514
;TOUCH.C: 514: WPROOF3 = 0;
	clrf	(913)^0380h	;volatile
	line	528
	
l25180:	
;TOUCH.C: 526: else
;TOUCH.C: 527: {
;TOUCH.C: 528: TouchInit(62);
	movlw	(03Eh)
	fcall	_TouchInit
	line	529
	
l25182:	
;TOUCH.C: 529: M0ANALOG = 0B00111111;
	movlw	(03Fh)
	movlb 7	; select bank7
	movwf	(914)^0380h	;volatile
	line	530
	
l25184:	
;TOUCH.C: 530: TKM0C0 = 0x00 | (fmd_a<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(918)^0380h	;volatile
	line	531
	
l25186:	
;TOUCH.C: 531: TKM0C1 = 0x10 | (0x01 << fmd_a);
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	incf	(_fmd_a),w	;volatile
	goto	u8204
u8205:
	lslf	(??_ReadTouchData+0)+0,f
u8204:
	decfsz	wreg,f
	goto	u8205
	movf	0+(??_ReadTouchData+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(919)^0380h	;volatile
	line	532
	
l25188:	
;TOUCH.C: 532: M3ANALOG = 0B00111111;
	movlw	(03Fh)
	movwf	(917)^0380h	;volatile
	line	533
	
l25190:	
;TOUCH.C: 533: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	534
	
l25192:	
;TOUCH.C: 534: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	536
	
l25194:	
;TOUCH.C: 535: }
;TOUCH.C: 536: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	537
;TOUCH.C: 537: while(TKRCOV==0);
	
l17600:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8211
	goto	u8210
u8211:
	goto	l17600
u8210:
	line	539
	
l25196:	
;TOUCH.C: 539: fmd_OriginalData = (TKM016DH << 8) +TKM016DL;
	movlb 31	; select bank31
	movf	(3989)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3988)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	540
;TOUCH.C: 540: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	541
	
l25198:	
;TOUCH.C: 541: DIV();
	fcall	_DIV
	line	542
	
l25200:	
;TOUCH.C: 542: fmd_TouchDataBuff_Key[0] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	(_fmd_TouchDataBuff_Key+1)
	movf	(87),w
	movwf	(_fmd_TouchDataBuff_Key)
	line	544
	
l25202:	
;TOUCH.C: 544: fmd_nodownsum_Key[fmd_a][0] = fmd_TouchDataBuff_Key[0];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	(_fmd_TouchDataBuff_Key),w
	movwi	[0]fsr1
	movf	(_fmd_TouchDataBuff_Key+1),w
	movwi	[1]fsr1
	line	558
	
l25214:	
;TOUCH.C: 556: else
;TOUCH.C: 557: {
;TOUCH.C: 558: TouchInit(31);
	movlw	(01Fh)
	fcall	_TouchInit
	line	559
	
l25216:	
;TOUCH.C: 559: M0ANALOG = 0B01010010;
	movlw	(052h)
	movlb 7	; select bank7
	movwf	(914)^0380h	;volatile
	line	560
	
l25218:	
;TOUCH.C: 560: TKM0C0 = 0x00 | (fmd_a<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(918)^0380h	;volatile
	line	561
	
l25220:	
;TOUCH.C: 561: TKM0C1 = 0x10 | (0x01 << fmd_a);
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	incf	(_fmd_a),w	;volatile
	goto	u8224
u8225:
	lslf	(??_ReadTouchData+0)+0,f
u8224:
	decfsz	wreg,f
	goto	u8225
	movf	0+(??_ReadTouchData+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(919)^0380h	;volatile
	line	562
	
l25222:	
;TOUCH.C: 562: M3ANALOG = 0B01010010;
	movlw	(052h)
	movwf	(917)^0380h	;volatile
	line	563
	
l25224:	
;TOUCH.C: 563: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	564
	
l25226:	
;TOUCH.C: 564: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	566
	
l25228:	
;TOUCH.C: 565: }
;TOUCH.C: 566: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	567
;TOUCH.C: 567: while(TKRCOV==0);
	
l17605:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8231
	goto	u8230
u8231:
	goto	l17605
u8230:
	line	569
	
l25230:	
;TOUCH.C: 569: fmd_OriginalData = (TKM016DH << 8) +TKM016DL;
	movlb 31	; select bank31
	movf	(3989)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3988)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	570
;TOUCH.C: 570: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	572
	
l25232:	
;TOUCH.C: 572: DIV();
	fcall	_DIV
	line	573
	
l25234:	
;TOUCH.C: 573: fmd_TouchDataBuff_Key[1] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+02h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+02h
	line	575
	
l25236:	
;TOUCH.C: 575: fmd_nodownsum_Key[fmd_a][1] = fmd_TouchDataBuff_Key[1];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	02h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[1]fsr1
	line	577
	
l25238:	
;TOUCH.C: 577: if((fmd_DownTouchCount == fmd_DownDataTime) || fmd_updataFlag == 2)
	movf	(_fmd_DownDataTime+1),w
	xorwf	(_fmd_DownTouchCount+1),w
	skipz
	goto	u8245
	movf	(_fmd_DownDataTime),w
	xorwf	(_fmd_DownTouchCount),w
u8245:

	skipnz
	goto	u8241
	goto	u8240
u8241:
	goto	l17610
u8240:
	
l25240:	
	movlb 1	; select bank1
	movf	(_fmd_updataFlag)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u8251
	goto	u8250
u8251:
	goto	l25242
u8250:
	
l17610:	
	line	579
;TOUCH.C: 578: {
;TOUCH.C: 579: fmd_HfreqOn = 1;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	incf	(_fmd_HfreqOn),f
	line	582
	
l25242:	
;TOUCH.C: 580: }
;TOUCH.C: 582: StartHigeFreq(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_StartHigeFreq
	line	583
	
l25244:	
;TOUCH.C: 583: fmd_HfreqOn = 0;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	line	586
	
l25246:	
;TOUCH.C: 586: DataProcessing();
	fcall	_DataProcessing
	line	587
;TOUCH.C: 587: }
	goto	l25544
	line	588
	
l25248:	
;TOUCH.C: 588: else if(fmd_a<8)
	movlw	(08h)
	subwf	(_fmd_a),w	;volatile
	skipnc
	goto	u8261
	goto	u8260
u8261:
	goto	l25352
u8260:
	goto	l25272
	line	596
	
l25258:	
	movlw	low(07880h)
	movwf	(??_ReadTouchData+0)+0
	movlw	high(07880h)
	movwf	(??_ReadTouchData+0)+0+1
	incf	(_fmd_x),w
	goto	u8274
u8275:
	lsrf	(??_ReadTouchData+0)+1,f
	rrf	(??_ReadTouchData+0)+0,f
u8274:
	decfsz	wreg,f
	goto	u8275
	btfss	0+(??_ReadTouchData+0)+0,(0)&7
	goto	u8281
	goto	u8280
u8281:
	goto	l25262
u8280:
	line	598
	
l25260:	
;TOUCH.C: 597: {
;TOUCH.C: 598: fmd_AntiWaterBit = fmd_x;
	movf	(_fmd_x),w
	movwf	(_fmd_AntiWaterBit)
	line	594
	
l25262:	
	incf	(_fmd_x),f
	
l25264:	
	movlw	(03h)
	subwf	(_fmd_x),w
	skipc
	goto	u8291
	goto	u8290
u8291:
	goto	l25258
u8290:
	line	601
	
l25266:	
	movlw	(01h)
	movwf	(??_ReadTouchData+0)+0
	incf	(_fmd_a),w	;volatile
	goto	u8304
u8305:
	lslf	(??_ReadTouchData+0)+0,f
u8304:
	decfsz	wreg,f
	goto	u8305
	movf	0+(??_ReadTouchData+0)+0,w
	xorlw	0ffh
	andlw	080h
	movlb 7	; select bank7
	movwf	(911)^0380h	;volatile
	line	602
	
l25268:	
;TOUCH.C: 602: WPROOF2 = 0;
	clrf	(912)^0380h	;volatile
	line	603
	
l25270:	
;TOUCH.C: 603: WPROOF3 = fmd_a|0x80;
	movf	(_fmd_a),w	;volatile
	iorlw	080h
	movwf	(913)^0380h	;volatile
	line	604
;TOUCH.C: 604: }
	goto	l25284
	line	607
	
l25272:	
;TOUCH.C: 605: else
;TOUCH.C: 606: {
;TOUCH.C: 607: WPROOF1 = 0;
	movlb 7	; select bank7
	clrf	(911)^0380h	;volatile
	line	608
;TOUCH.C: 608: WPROOF2 = 0;
	clrf	(912)^0380h	;volatile
	line	609
;TOUCH.C: 609: WPROOF3 = 0;
	clrf	(913)^0380h	;volatile
	line	623
	
l25284:	
;TOUCH.C: 621: else
;TOUCH.C: 622: {
;TOUCH.C: 623: TouchInit(62);
	movlw	(03Eh)
	fcall	_TouchInit
	line	624
	
l25286:	
;TOUCH.C: 624: M1ANALOG = 0B00111111;
	movlw	(03Fh)
	movlb 7	; select bank7
	movwf	(915)^0380h	;volatile
	line	625
	
l25288:	
;TOUCH.C: 625: TKM1C0 = 0x00 | (fmd_a-4<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(920)^0380h	;volatile
	line	626
	
l25290:	
;TOUCH.C: 626: TKM1C1 = 0x10 | (0x01 <<fmd_a-4);
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	movf	(_fmd_a),w	;volatile
	addlw	-4
	incf	wreg,f
	goto	u8314
u8315:
	lslf	(??_ReadTouchData+0)+0,f
u8314:
	decfsz	wreg,f
	goto	u8315
	movf	0+(??_ReadTouchData+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(921)^0380h	;volatile
	line	627
	
l25292:	
;TOUCH.C: 627: M3ANALOG = 0B00111111;
	movlw	(03Fh)
	movwf	(917)^0380h	;volatile
	line	628
	
l25294:	
;TOUCH.C: 628: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	629
	
l25296:	
;TOUCH.C: 629: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	631
	
l25298:	
;TOUCH.C: 630: }
;TOUCH.C: 631: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	632
;TOUCH.C: 632: while(TKRCOV==0);
	
l17620:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8321
	goto	u8320
u8321:
	goto	l17620
u8320:
	line	634
	
l25300:	
;TOUCH.C: 634: fmd_OriginalData = (TKM116DH << 8) +TKM116DL;
	movlb 31	; select bank31
	movf	(3997)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3996)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	635
;TOUCH.C: 635: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	636
	
l25302:	
;TOUCH.C: 636: DIV();
	fcall	_DIV
	line	637
	
l25304:	
;TOUCH.C: 637: fmd_TouchDataBuff_Key[0] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	(_fmd_TouchDataBuff_Key+1)
	movf	(87),w
	movwf	(_fmd_TouchDataBuff_Key)
	line	638
	
l25306:	
;TOUCH.C: 638: fmd_nodownsum_Key[fmd_a][0] = fmd_TouchDataBuff_Key[0];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	(_fmd_TouchDataBuff_Key),w
	movwi	[0]fsr1
	movf	(_fmd_TouchDataBuff_Key+1),w
	movwi	[1]fsr1
	line	651
	
l25318:	
;TOUCH.C: 649: else
;TOUCH.C: 650: {
;TOUCH.C: 651: TouchInit(31);
	movlw	(01Fh)
	fcall	_TouchInit
	line	652
	
l25320:	
;TOUCH.C: 652: M1ANALOG = 0B01010010;
	movlw	(052h)
	movlb 7	; select bank7
	movwf	(915)^0380h	;volatile
	line	653
	
l25322:	
;TOUCH.C: 653: TKM1C0 = 0x00 | (fmd_a-4<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(920)^0380h	;volatile
	line	654
	
l25324:	
;TOUCH.C: 654: TKM1C1 = 0x10 | (0x01 << fmd_a-4);
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	movf	(_fmd_a),w	;volatile
	addlw	-4
	incf	wreg,f
	goto	u8334
u8335:
	lslf	(??_ReadTouchData+0)+0,f
u8334:
	decfsz	wreg,f
	goto	u8335
	movf	0+(??_ReadTouchData+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(921)^0380h	;volatile
	line	655
	
l25326:	
;TOUCH.C: 655: M3ANALOG = 0B01010010;
	movlw	(052h)
	movwf	(917)^0380h	;volatile
	line	656
	
l25328:	
;TOUCH.C: 656: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	657
	
l25330:	
;TOUCH.C: 657: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	659
	
l25332:	
;TOUCH.C: 658: }
;TOUCH.C: 659: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	660
;TOUCH.C: 660: while(TKRCOV==0);
	
l17625:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8341
	goto	u8340
u8341:
	goto	l17625
u8340:
	line	662
	
l25334:	
;TOUCH.C: 662: fmd_OriginalData = (TKM116DH << 8) +TKM116DL;
	movlb 31	; select bank31
	movf	(3997)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3996)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	663
;TOUCH.C: 663: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	664
	
l25336:	
;TOUCH.C: 664: DIV();
	fcall	_DIV
	line	665
	
l25338:	
;TOUCH.C: 665: fmd_TouchDataBuff_Key[1] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+02h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+02h
	line	666
	
l25340:	
;TOUCH.C: 666: fmd_nodownsum_Key[fmd_a][1] = fmd_TouchDataBuff_Key[1];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	02h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[1]fsr1
	line	669
	
l25342:	
;TOUCH.C: 669: if((fmd_DownTouchCount == fmd_DownDataTime) || fmd_updataFlag == 2)
	movf	(_fmd_DownDataTime+1),w
	xorwf	(_fmd_DownTouchCount+1),w
	skipz
	goto	u8355
	movf	(_fmd_DownDataTime),w
	xorwf	(_fmd_DownTouchCount),w
u8355:

	skipnz
	goto	u8351
	goto	u8350
u8351:
	goto	l17630
u8350:
	
l25344:	
	movlb 1	; select bank1
	movf	(_fmd_updataFlag)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u8361
	goto	u8360
u8361:
	goto	l25346
u8360:
	
l17630:	
	line	671
;TOUCH.C: 670: {
;TOUCH.C: 671: fmd_HfreqOn = 1;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	incf	(_fmd_HfreqOn),f
	line	673
	
l25346:	
;TOUCH.C: 672: }
;TOUCH.C: 673: StartHigeFreq(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_StartHigeFreq
	goto	l25244
	line	678
	
l25352:	
;TOUCH.C: 678: else if(fmd_a<12)
	movlw	(0Ch)
	subwf	(_fmd_a),w	;volatile
	skipnc
	goto	u8371
	goto	u8370
u8371:
	goto	l25456
u8370:
	line	689
	
l25362:	
;TOUCH.C: 687: else
;TOUCH.C: 688: {
;TOUCH.C: 689: WPROOF1 = 0;
	movlb 7	; select bank7
	clrf	(911)^0380h	;volatile
	line	690
;TOUCH.C: 690: WPROOF2 = 0;
	clrf	(912)^0380h	;volatile
	line	691
;TOUCH.C: 691: WPROOF3 = 0;
	clrf	(913)^0380h	;volatile
	line	707
	
l25378:	
;TOUCH.C: 705: else
;TOUCH.C: 706: {
;TOUCH.C: 707: TouchInit(62);
	movlw	(03Eh)
	fcall	_TouchInit
	line	708
	
l25380:	
;TOUCH.C: 708: M2ANALOG = 0B00111111;
	movlw	(03Fh)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	709
	
l25382:	
;TOUCH.C: 709: TKM2C0 = 0x00 | (fmd_a-8<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(922)^0380h	;volatile
	line	710
	
l25384:	
;TOUCH.C: 710: TKM2C1 = 0x10 | (0x01 << fmd_a-8);
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	movf	(_fmd_a),w	;volatile
	addlw	-8
	incf	wreg,f
	goto	u8384
u8385:
	lslf	(??_ReadTouchData+0)+0,f
u8384:
	decfsz	wreg,f
	goto	u8385
	movf	0+(??_ReadTouchData+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(923)^0380h	;volatile
	line	711
	
l25386:	
;TOUCH.C: 711: M3ANALOG = 0B00111111;
	movlw	(03Fh)
	movwf	(917)^0380h	;volatile
	line	712
	
l25388:	
;TOUCH.C: 712: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	713
	
l25390:	
;TOUCH.C: 713: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	715
	
l25392:	
;TOUCH.C: 714: }
;TOUCH.C: 715: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	716
;TOUCH.C: 716: while(TKRCOV==0);
	
l17637:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8391
	goto	u8390
u8391:
	goto	l17637
u8390:
	line	718
	
l25394:	
;TOUCH.C: 718: fmd_OriginalData = (TKM216DH << 8) +TKM216DL;
	movlb 31	; select bank31
	movf	(4005)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(4004)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	719
;TOUCH.C: 719: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	720
	
l25396:	
;TOUCH.C: 720: DIV();
	fcall	_DIV
	line	721
	
l25398:	
;TOUCH.C: 721: fmd_TouchDataBuff_Key[0] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	(_fmd_TouchDataBuff_Key+1)
	movf	(87),w
	movwf	(_fmd_TouchDataBuff_Key)
	line	722
	
l25400:	
;TOUCH.C: 722: fmd_nodownsum_Key[fmd_a][0] = fmd_TouchDataBuff_Key[0];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	(_fmd_TouchDataBuff_Key),w
	movwi	[0]fsr1
	movf	(_fmd_TouchDataBuff_Key+1),w
	movwi	[1]fsr1
	line	727
	
l25402:	
;TOUCH.C: 726: {
;TOUCH.C: 727: TouchInit(31);
	movlw	(01Fh)
	fcall	_TouchInit
	line	728
	
l25404:	
;TOUCH.C: 728: M2ANALOG =0B01010010;
	movlw	(052h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	729
	
l25406:	
;TOUCH.C: 729: M3ANALOG = 0B01010010;
	movlw	(052h)
	movwf	(917)^0380h	;volatile
	line	730
	
l25408:	
;TOUCH.C: 730: TKM2C0 = 0x00 | ((fmd_a-8)<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(922)^0380h	;volatile
	line	731
	
l25410:	
	movlw	(018h)
	movwf	(923)^0380h	;volatile
	line	732
	
l25412:	
	movlw	(01Fh)
	movwf	(925)^0380h	;volatile
	line	733
	
l25414:	
;TOUCH.C: 733: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	745
;TOUCH.C: 734: }
	
l25430:	
;TOUCH.C: 744: }
;TOUCH.C: 745: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	746
;TOUCH.C: 746: while(TKRCOV==0);
	
l17642:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8401
	goto	u8400
u8401:
	goto	l17642
u8400:
	line	748
	
l25432:	
;TOUCH.C: 748: fmd_OriginalData = (TKM216DH << 8) +TKM216DL;
	movlb 31	; select bank31
	movf	(4005)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(4004)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	749
;TOUCH.C: 749: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	750
	
l25434:	
;TOUCH.C: 750: DIV();
	fcall	_DIV
	line	751
	
l25436:	
;TOUCH.C: 751: fmd_TouchDataBuff_Key[1] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+02h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+02h
	line	752
	
l25438:	
;TOUCH.C: 752: fmd_nodownsum_Key[fmd_a][1] = fmd_TouchDataBuff_Key[1];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	02h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[1]fsr1
	line	755
	
l25440:	
;TOUCH.C: 755: if((fmd_DownTouchCount == fmd_DownDataTime) || fmd_updataFlag == 2)
	movf	(_fmd_DownDataTime+1),w
	xorwf	(_fmd_DownTouchCount+1),w
	skipz
	goto	u8415
	movf	(_fmd_DownDataTime),w
	xorwf	(_fmd_DownTouchCount),w
u8415:

	skipnz
	goto	u8411
	goto	u8410
u8411:
	goto	l17647
u8410:
	
l25442:	
	movlb 1	; select bank1
	movf	(_fmd_updataFlag)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u8421
	goto	u8420
u8421:
	goto	l25444
u8420:
	
l17647:	
	line	757
;TOUCH.C: 756: {
;TOUCH.C: 757: fmd_HfreqOn = 1;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	incf	(_fmd_HfreqOn),f
	line	759
	
l25444:	
;TOUCH.C: 758: }
;TOUCH.C: 759: StartHigeFreq(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_StartHigeFreq
	goto	l25244
	line	775
	
l25456:	
;TOUCH.C: 773: else
;TOUCH.C: 774: {
;TOUCH.C: 775: WPROOF1 = 0;
	movlb 7	; select bank7
	clrf	(911)^0380h	;volatile
	line	776
;TOUCH.C: 776: WPROOF2 = 0;
	clrf	(912)^0380h	;volatile
	line	777
;TOUCH.C: 777: WPROOF3 = 0;
	clrf	(913)^0380h	;volatile
	line	793
	
l25472:	
;TOUCH.C: 791: else
;TOUCH.C: 792: {
;TOUCH.C: 793: TouchInit(62);
	movlw	(03Eh)
	fcall	_TouchInit
	line	794
	
l25474:	
;TOUCH.C: 794: M2ANALOG = 0B00111111;
	movlw	(03Fh)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	795
	
l25476:	
;TOUCH.C: 795: M3ANALOG = 0B00111111;
	movlw	(03Fh)
	movwf	(917)^0380h	;volatile
	line	796
	
l25478:	
;TOUCH.C: 796: TKM2C0 = 0x00;
	clrf	(922)^0380h	;volatile
	line	797
	
l25480:	
;TOUCH.C: 797: TKM2C1 = 0x90;
	movlw	(090h)
	movwf	(923)^0380h	;volatile
	line	798
	
l25482:	
;TOUCH.C: 798: TKM3C0 = 0x00 | ((fmd_a-12)<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(924)^0380h	;volatile
	line	799
	
l25484:	
;TOUCH.C: 799: TKM3C1 = 0x98 | (0x01 << (fmd_a-12));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	movf	(_fmd_a),w	;volatile
	addlw	-12
	incf	wreg,f
	goto	u8434
u8435:
	lslf	(??_ReadTouchData+0)+0,f
u8434:
	decfsz	wreg,f
	goto	u8435
	movf	0+(??_ReadTouchData+0)+0,w
	iorlw	098h
	movlb 7	; select bank7
	movwf	(925)^0380h	;volatile
	line	802
	
l25486:	
;TOUCH.C: 800: }
;TOUCH.C: 802: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	803
;TOUCH.C: 803: while(TKRCOV==0);
	
l17653:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8441
	goto	u8440
u8441:
	goto	l17653
u8440:
	line	805
	
l25488:	
;TOUCH.C: 805: fmd_OriginalData = (TKM216DH << 8) +TKM216DL;
	movlb 31	; select bank31
	movf	(4005)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(4004)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	806
;TOUCH.C: 806: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	807
	
l25490:	
;TOUCH.C: 807: DIV();
	fcall	_DIV
	line	808
	
l25492:	
;TOUCH.C: 808: fmd_TouchDataBuff_Key[0] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	(_fmd_TouchDataBuff_Key+1)
	movf	(87),w
	movwf	(_fmd_TouchDataBuff_Key)
	line	809
	
l25494:	
;TOUCH.C: 809: fmd_nodownsum_Key[fmd_a][0] = fmd_TouchDataBuff_Key[0];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	(_fmd_TouchDataBuff_Key),w
	movwi	[0]fsr1
	movf	(_fmd_TouchDataBuff_Key+1),w
	movwi	[1]fsr1
	line	824
	
l25510:	
;TOUCH.C: 822: else
;TOUCH.C: 823: {
;TOUCH.C: 824: TouchInit(31);
	movlw	(01Fh)
	fcall	_TouchInit
	line	825
	
l25512:	
;TOUCH.C: 825: M2ANALOG = 0B01010010;
	movlw	(052h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	826
	
l25514:	
;TOUCH.C: 826: M3ANALOG = 0B01010010;
	movlw	(052h)
	movwf	(917)^0380h	;volatile
	line	827
	
l25516:	
;TOUCH.C: 827: TKM2C0 = 0x00;
	clrf	(922)^0380h	;volatile
	line	828
	
l25518:	
;TOUCH.C: 828: TKM2C1 = 0x90;
	movlw	(090h)
	movwf	(923)^0380h	;volatile
	line	829
	
l25520:	
;TOUCH.C: 829: TKM3C0 = 0x00 | ((fmd_a-12)<<6);
	movf	(_fmd_a),w	;volatile
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,f
	rrf	(??_ReadTouchData+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(924)^0380h	;volatile
	line	830
	
l25522:	
;TOUCH.C: 830: TKM3C1 = 0x98 | (0x01 << (fmd_a-12));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_ReadTouchData+0)+0
	movf	(_fmd_a),w	;volatile
	addlw	-12
	incf	wreg,f
	goto	u8454
u8455:
	lslf	(??_ReadTouchData+0)+0,f
u8454:
	decfsz	wreg,f
	goto	u8455
	movf	0+(??_ReadTouchData+0)+0,w
	iorlw	098h
	movlb 7	; select bank7
	movwf	(925)^0380h	;volatile
	line	832
	
l25524:	
;TOUCH.C: 831: }
;TOUCH.C: 832: TKST = 1;
	bsf	(7277/8)^0380h,(7277)&7
	line	833
;TOUCH.C: 833: while(TKRCOV==0);
	
l17658:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u8461
	goto	u8460
u8461:
	goto	l17658
u8460:
	line	835
	
l25526:	
;TOUCH.C: 835: fmd_OriginalData = (TKM216DH << 8) +TKM216DL;
	movlb 31	; select bank31
	movf	(4005)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(4004)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	836
;TOUCH.C: 836: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	837
	
l25528:	
;TOUCH.C: 837: DIV();
	fcall	_DIV
	line	839
	
l25530:	
;TOUCH.C: 839: fmd_TouchDataBuff_Key[1] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+02h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+02h
	line	840
	
l25532:	
;TOUCH.C: 840: fmd_nodownsum_Key[fmd_a][1] = fmd_TouchDataBuff_Key[1];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	02h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+02h,w
	movwi	[1]fsr1
	line	843
	
l25534:	
;TOUCH.C: 843: if((fmd_DownTouchCount == fmd_DownDataTime) || fmd_updataFlag == 2)
	movf	(_fmd_DownDataTime+1),w
	xorwf	(_fmd_DownTouchCount+1),w
	skipz
	goto	u8475
	movf	(_fmd_DownDataTime),w
	xorwf	(_fmd_DownTouchCount),w
u8475:

	skipnz
	goto	u8471
	goto	u8470
u8471:
	goto	l17663
u8470:
	
l25536:	
	movlb 1	; select bank1
	movf	(_fmd_updataFlag)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u8481
	goto	u8480
u8481:
	goto	l25538
u8480:
	
l17663:	
	line	845
;TOUCH.C: 844: {
;TOUCH.C: 845: fmd_HfreqOn = 1;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	incf	(_fmd_HfreqOn),f
	line	847
	
l25538:	
;TOUCH.C: 846: }
;TOUCH.C: 847: StartHigeFreq(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_StartHigeFreq
	goto	l25244
	line	854
	
l25544:	
;TOUCH.C: 850: }
;TOUCH.C: 854: if(fmd_a3==fmd_a)
	movlb 1	; select bank1
	movf	(_fmd_a3)^080h,w	;volatile
	xorwf	(_fmd_a),w	;volatile
	skipz
	goto	u8491
	goto	u8490
u8491:
	goto	l17664
u8490:
	line	856
	
l25546:	
;TOUCH.C: 855: {
;TOUCH.C: 856: if(fmd_f_firstloop == 1)
	btfss	(_fmd_f_firstloop/8),(_fmd_f_firstloop)&7
	goto	u8501
	goto	u8500
u8501:
	goto	l25550
u8500:
	line	858
	
l25548:	
;TOUCH.C: 857: {
;TOUCH.C: 858: fmd_f_firstloop = 0;
	bcf	(_fmd_f_firstloop/8),(_fmd_f_firstloop)&7
	line	859
;TOUCH.C: 859: }
	goto	l17664
	line	862
	
l25550:	
;TOUCH.C: 860: else
;TOUCH.C: 861: {
;TOUCH.C: 862: fmd_a1=0;
	clrf	(_fmd_a1)	;volatile
	line	863
;TOUCH.C: 863: for(fmd_u=0;fmd_u<15;fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l25552:	
	movlw	(0Fh)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u8511
	goto	u8510
u8511:
	goto	l25556
u8510:
	goto	l17668
	line	865
	
l25556:	
;TOUCH.C: 864: {
;TOUCH.C: 865: if((fmd_Keystatus2 >> fmd_u) & 0x01)
	movlb 0	; select bank0
	movf	(_fmd_Keystatus2+1),w	;volatile
	movwf	(??_ReadTouchData+0)+0+1
	movf	(_fmd_Keystatus2),w	;volatile
	movwf	(??_ReadTouchData+0)+0
	incf	(_fmd_u),w	;volatile
	goto	u8524
u8525:
	lsrf	(??_ReadTouchData+0)+1,f
	rrf	(??_ReadTouchData+0)+0,f
u8524:
	decfsz	wreg,f
	goto	u8525
	btfss	0+(??_ReadTouchData+0)+0,(0)&7
	goto	u8531
	goto	u8530
u8531:
	goto	l17669
u8530:
	line	867
	
l25558:	
;TOUCH.C: 866: {
;TOUCH.C: 867: fmd_a1++;
	incf	(_fmd_a1),f	;volatile
	line	868
	
l17669:	
	line	863
	incf	(_fmd_u),f	;volatile
	goto	l25552
	
l17668:	
	line	871
;TOUCH.C: 868: }
;TOUCH.C: 869: }
;TOUCH.C: 871: fmd_f_forbidden=0;
	bcf	(_fmd_f_forbidden/8),(_fmd_f_forbidden)&7
	line	875
;TOUCH.C: 872: if(FORBIDDENKEY11&fmd_Keystatus2)
	
l17670:	
	line	877
;TOUCH.C: 875: }
;TOUCH.C: 877: fmd_f_main_key=0;
	bcf	(_fmd_f_main_key/8),(_fmd_f_main_key)&7
	file	"touch.h"
	line	308
	
l25564:	
	movlw	(0FFh)
	movwf	(_fmd_u)	;volatile
	file	"TOUCH.C"
	line	881
	
l25566:	
;TOUCH.C: 881: if((fmd_Keystatus2 >> fmd_u)&0x01)
	movlb 0	; select bank0
	movf	(_fmd_Keystatus2+1),w	;volatile
	movwf	(??_ReadTouchData+0)+0+1
	movf	(_fmd_Keystatus2),w	;volatile
	movwf	(??_ReadTouchData+0)+0
	incf	(_fmd_u),w	;volatile
	goto	u8544
u8545:
	lsrf	(??_ReadTouchData+0)+1,f
	rrf	(??_ReadTouchData+0)+0,f
u8544:
	decfsz	wreg,f
	goto	u8545
	btfss	0+(??_ReadTouchData+0)+0,(0)&7
	goto	u8551
	goto	u8550
u8551:
	goto	l25570
u8550:
	line	883
	
l25568:	
;TOUCH.C: 882: {
;TOUCH.C: 883: fmd_f_main_key=1;
	bsf	(_fmd_f_main_key/8),(_fmd_f_main_key)&7
	line	888
	
l25570:	
;TOUCH.C: 887: {
;TOUCH.C: 888: if(fmd_PressOff == 1 && (fmd_PressOffCount != 1) && (fmd_TestCount<5))
	movlb 1	; select bank1
	decf	(_fmd_PressOff)^080h,w
	skipz
	goto	u8561
	goto	u8560
u8561:
	goto	l25634
u8560:
	
l25572:	
	decf	(_fmd_PressOffCount)^080h,w
	skipnz
	goto	u8571
	goto	u8570
u8571:
	goto	l25634
u8570:
	
l25574:	
	movlw	(05h)
	subwf	(_fmd_TestCount)^080h,w
	skipnc
	goto	u8581
	goto	u8580
u8581:
	goto	l25634
u8580:
	line	890
	
l25576:	
;TOUCH.C: 889: {
;TOUCH.C: 890: if(fmd_Keystatus !=0)
	movf	(_fmd_Keystatus+1),w	;volatile
	iorwf	(_fmd_Keystatus),w	;volatile
	skipnz
	goto	u8591
	goto	u8590
u8591:
	goto	l25582
u8590:
	line	892
	
l25578:	
;TOUCH.C: 891: {
;TOUCH.C: 892: fmd_antishaketimecount1=0;
	clrf	(_fmd_antishaketimecount1)^080h
	line	896
;TOUCH.C: 895: {
;TOUCH.C: 896: fmd_antishaketimecount=0;
	movlb 0	; select bank0
	clrf	(_fmd_antishaketimecount)
	line	898
	
l25580:	
;TOUCH.C: 898: fmd_Keystatus1=fmd_Keystatus;
	movf	(_fmd_Keystatus+1),w	;volatile
	movlb 0	; select bank0
	movwf	(_fmd_Keystatus1+1)	;volatile
	movf	(_fmd_Keystatus),w	;volatile
	movwf	(_fmd_Keystatus1)	;volatile
	line	900
;TOUCH.C: 899: }
;TOUCH.C: 900: }
	goto	l25634
	line	903
	
l25582:	
;TOUCH.C: 901: else
;TOUCH.C: 902: {
;TOUCH.C: 903: fmd_antishaketimecount=0;
	movlb 0	; select bank0
	clrf	(_fmd_antishaketimecount)
	line	907
;TOUCH.C: 906: {
;TOUCH.C: 907: fmd_antishaketimecount1=0;
	movlb 1	; select bank1
	clrf	(_fmd_antishaketimecount1)^080h
	goto	l25580
	line	983
	
l25634:	
;TOUCH.C: 978: }
;TOUCH.C: 979: }
;TOUCH.C: 980: }
;TOUCH.C: 981: }
;TOUCH.C: 983: fmd_PressOffCount = 2;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_fmd_PressOffCount)^080h
	line	984
	
l25636:	
;TOUCH.C: 984: fmd_f_firstdown = 0;
	bcf	(_fmd_f_firstdown/8),(_fmd_f_firstdown)&7
	line	985
	
l25638:	
;TOUCH.C: 985: fmd_TestCount = 0;
	clrf	(_fmd_TestCount)^080h
	line	994
	
l17664:	
	line	997
;TOUCH.C: 992: }
;TOUCH.C: 994: }
;TOUCH.C: 997: if(fmd_a2<fmd_channels)
	movf	(_fmd_channels)^080h,w
	movlb 0	; select bank0
	subwf	(_fmd_a2),w	;volatile
	skipnc
	goto	u8601
	goto	u8600
u8601:
	goto	l25642
u8600:
	line	999
	
l25640:	
;TOUCH.C: 998: {
;TOUCH.C: 999: fmd_a2++;
	incf	(_fmd_a2),f	;volatile
	line	1000
;TOUCH.C: 1000: }
	goto	l25644
	line	1010
	
l25642:	
;TOUCH.C: 1001: else
;TOUCH.C: 1002: {
;TOUCH.C: 1010: fmd_a2=0;
	clrf	(_fmd_a2)	;volatile
	line	1013
	
l25644:	
;TOUCH.C: 1011: }
;TOUCH.C: 1013: fmd_a=fmd_theUsedChannel[fmd_a2];
	movf	(_fmd_a2),w
	addlw	_fmd_theUsedChannel&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(_fmd_a)	;volatile
	line	1014
	
l17695:	
	return
	opt stack 0
GLOBAL	__end_of_ReadTouchData
	__end_of_ReadTouchData:
;; =============== function _ReadTouchData ends ============

	signat	_ReadTouchData,88
	global	_DataProcessing
psect	text1290,local,class=CODE,delta=2
global __ptext1290
__ptext1290:

;; *************** function _DataProcessing *****************
;; Defined at:
;;		line 1053 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___bmul
;;		_StartHigeFreq
;;		_HighFreqCo
;;		_DIV
;; This function is called by:
;;		_ReadTouchData
;; This function uses a non-reentrant model
;;
psect	text1290
	file	"TOUCH.C"
	line	1053
	global	__size_of_DataProcessing
	__size_of_DataProcessing	equ	__end_of_DataProcessing-_DataProcessing
	
_DataProcessing:	
	opt	stack 6
; Regs used in _DataProcessing: [wreg-status,0+pclath+cstack]
	line	1054
	
l24866:	
;TOUCH.C: 1054: if(fmd_updataFlag == 0)
	movlb 1	; select bank1
	movf	(_fmd_updataFlag)^080h,f
	skipz
	goto	u7621
	goto	u7620
u7621:
	goto	l24870
u7620:
	goto	l24956
	line	1059
	
l24870:	
;TOUCH.C: 1057: else
;TOUCH.C: 1058: {
;TOUCH.C: 1059: if(fmd_a==fmd_theUsedChannel[fmd_channels])
	movf	(_fmd_channels)^080h,w
	addlw	_fmd_theUsedChannel&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorwf	(_fmd_a),w	;volatile
	skipz
	goto	u7631
	goto	u7630
u7631:
	goto	l24956
u7630:
	line	1061
	
l24872:	
;TOUCH.C: 1060: {
;TOUCH.C: 1061: if(fmd_UpTouchCount >=fmd_UpDataTime)
	movf	(_fmd_UpDataTime+1)^080h,w
	subwf	(_fmd_UpTouchCount+1)^080h,w
	skipz
	goto	u7645
	movf	(_fmd_UpDataTime)^080h,w
	subwf	(_fmd_UpTouchCount)^080h,w
u7645:
	skipc
	goto	u7641
	goto	u7640
u7641:
	goto	l24898
u7640:
	line	1063
	
l24874:	
;TOUCH.C: 1062: {
;TOUCH.C: 1063: fmd_UpTouchCount = 0;
	clrf	(_fmd_UpTouchCount)^080h
	clrf	(_fmd_UpTouchCount+1)^080h
	line	1065
;TOUCH.C: 1065: for(fmd_a1=0; fmd_a1<15; fmd_a1++)
	clrf	(_fmd_a1)	;volatile
	
l24876:	
	movlw	(0Fh)
	subwf	(_fmd_a1),w	;volatile
	skipc
	goto	u7651
	goto	u7650
u7651:
	goto	l24880
u7650:
	goto	l24898
	line	1067
	
l24880:	
;TOUCH.C: 1066: {
;TOUCH.C: 1067: for(fmd_u=0; fmd_u<2; fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l24882:	
	movlw	(02h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u7661
	goto	u7660
u7661:
	goto	l24886
u7660:
	goto	l24894
	line	1069
	
l24886:	
;TOUCH.C: 1068: {
;TOUCH.C: 1069: if(fmd_nodownavrdata_Key[fmd_a1][fmd_u] < fmd_nodownsum_Key[fmd_a1][fmd_u])
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 9080
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_DataProcessing+2)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+2)+0+1
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+4)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+4)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+4)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+4)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_DataProcessing+6)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+6)+0+1
	movf	1+(??_DataProcessing+2)+0,w
	subwf	1+(??_DataProcessing+6)+0,w
	skipz
	goto	u7675
	movf	0+(??_DataProcessing+2)+0,w
	subwf	0+(??_DataProcessing+6)+0,w
u7675:
	skipnc
	goto	u7671
	goto	u7670
u7671:
	goto	l24890
u7670:
	line	1071
	
l24888:	
;TOUCH.C: 1070: {
;TOUCH.C: 1071: fmd_nodownavrdata_Key[fmd_a1][fmd_u]++;
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+0)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	1067
	
l24890:	
	incf	(_fmd_u),f	;volatile
	goto	l24882
	line	1065
	
l24894:	
	incf	(_fmd_a1),f	;volatile
	goto	l24876
	line	1077
	
l24898:	
;TOUCH.C: 1073: }
;TOUCH.C: 1074: }
;TOUCH.C: 1075: }
;TOUCH.C: 1076: }
;TOUCH.C: 1077: if(fmd_DownTouchCount >= fmd_DownDataTime)
	movlb 0	; select bank0
	movf	(_fmd_DownDataTime+1),w
	subwf	(_fmd_DownTouchCount+1),w
	skipz
	goto	u7685
	movf	(_fmd_DownDataTime),w
	subwf	(_fmd_DownTouchCount),w
u7685:
	skipc
	goto	u7681
	goto	u7680
u7681:
	goto	l24928
u7680:
	line	1079
	
l24900:	
;TOUCH.C: 1078: {
;TOUCH.C: 1079: fmd_DownTouchCount = 0;
	clrf	(_fmd_DownTouchCount)
	clrf	(_fmd_DownTouchCount+1)
	line	1081
;TOUCH.C: 1081: for(fmd_a1=0; fmd_a1<15; fmd_a1++)
	clrf	(_fmd_a1)	;volatile
	
l24902:	
	movlw	(0Fh)
	subwf	(_fmd_a1),w	;volatile
	skipc
	goto	u7691
	goto	u7690
u7691:
	goto	l24906
u7690:
	goto	l24928
	line	1083
	
l24906:	
;TOUCH.C: 1082: {
;TOUCH.C: 1083: for(fmd_u=0; fmd_u<4; fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l24908:	
	movlw	(04h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u7701
	goto	u7700
u7701:
	goto	l24912
u7700:
	goto	l24924
	line	1085
	
l24912:	
;TOUCH.C: 1084: {
;TOUCH.C: 1085: if(fmd_u<4)
	movlw	(04h)
	subwf	(_fmd_u),w	;volatile
	skipnc
	goto	u7711
	goto	u7710
u7711:
	goto	l24920
u7710:
	line	1087
	
l24914:	
;TOUCH.C: 1086: {
;TOUCH.C: 1087: if(fmd_nodownavrdata_Key[fmd_a1][fmd_u] > fmd_nodownsum_Key[fmd_a1][fmd_u])
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+0)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_DataProcessing+2)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+2)+0+1
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 9080
	movwf	(??_DataProcessing+4)+0
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	((??_DataProcessing+4)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+4)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+4)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_DataProcessing+6)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+6)+0+1
	movf	1+(??_DataProcessing+2)+0,w
	subwf	1+(??_DataProcessing+6)+0,w
	skipz
	goto	u7725
	movf	0+(??_DataProcessing+2)+0,w
	subwf	0+(??_DataProcessing+6)+0,w
u7725:
	skipnc
	goto	u7721
	goto	u7720
u7721:
	goto	l24918
u7720:
	line	1089
	
l24916:	
;TOUCH.C: 1088: {
;TOUCH.C: 1089: fmd_nodownavrdata_Key[fmd_a1][fmd_u]--;
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+0)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	movlw	low(01h)
	subwf	indf1,f
	addfsr	fsr1,1
	movlw	high(01h)
	subwfb	indf1,f
	addfsr	fsr1,-1
	line	1091
;TOUCH.C: 1091: }
	goto	l24920
	line	1094
	
l24918:	
;TOUCH.C: 1092: else
;TOUCH.C: 1093: {
;TOUCH.C: 1094: fmd_nodownavrdata_Key[fmd_a1][fmd_u]++;
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+0)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	1083
	
l24920:	
	incf	(_fmd_u),f	;volatile
	goto	l24908
	line	1081
	
l24924:	
	incf	(_fmd_a1),f	;volatile
	goto	l24902
	line	1104
	
l24928:	
;TOUCH.C: 1095: }
;TOUCH.C: 1096: }
;TOUCH.C: 1101: }
;TOUCH.C: 1102: }
;TOUCH.C: 1103: }
;TOUCH.C: 1104: if(fmd_updataFlag == 2)
	movlb 1	; select bank1
	movf	(_fmd_updataFlag)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u7731
	goto	u7730
u7731:
	goto	l24956
u7730:
	line	1106
	
l24930:	
;TOUCH.C: 1105: {
;TOUCH.C: 1106: if(fmd_Startgx == 0)
	movf	(_fmd_Startgx)^080h,f
	skipz
	goto	u7741
	goto	u7740
u7741:
	goto	l17727
u7740:
	line	1108
	
l24932:	
;TOUCH.C: 1107: {
;TOUCH.C: 1108: fmd_Startgx = 1;
	clrf	(_fmd_Startgx)^080h
	incf	(_fmd_Startgx)^080h,f
	line	1109
;TOUCH.C: 1109: }
	goto	l24956
	line	1110
	
l17727:	
	line	1112
;TOUCH.C: 1110: else
;TOUCH.C: 1111: {
;TOUCH.C: 1112: fmd_updataFlag = 1;
	clrf	(_fmd_updataFlag)^080h
	incf	(_fmd_updataFlag)^080h,f
	line	1113
	
l24934:	
;TOUCH.C: 1113: for(fmd_a1=0; fmd_a1<15; fmd_a1++)
	clrf	(_fmd_a1)	;volatile
	
l24936:	
	movlw	(0Fh)
	subwf	(_fmd_a1),w	;volatile
	skipc
	goto	u7751
	goto	u7750
u7751:
	goto	l24940
u7750:
	goto	l24956
	line	1115
	
l24940:	
;TOUCH.C: 1114: {
;TOUCH.C: 1115: for(fmd_u=0; fmd_u<4; fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l24942:	
	movlw	(04h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u7761
	goto	u7760
u7761:
	goto	l24946
u7760:
	goto	l24952
	line	1117
	
l24946:	
;TOUCH.C: 1116: {
;TOUCH.C: 1117: fmd_nodownavrdata_Key[fmd_a1][fmd_u] = fmd_nodownsum_Key[fmd_a1][fmd_u];
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 9080
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_DataProcessing+2)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+2)+0+1
	movf	(_fmd_a1),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+4)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+4)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+4)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+4)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	movf	0+(??_DataProcessing+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_DataProcessing+2)+0,w
	movwi	[1]fsr1
	line	1115
	
l24948:	
	incf	(_fmd_u),f	;volatile
	goto	l24942
	line	1113
	
l24952:	
	incf	(_fmd_a1),f	;volatile
	goto	l24936
	line	1125
	
l24956:	
;TOUCH.C: 1118: }
;TOUCH.C: 1119: }
;TOUCH.C: 1120: }
;TOUCH.C: 1121: }
;TOUCH.C: 1122: }
;TOUCH.C: 1123: }
;TOUCH.C: 1125: fmd_KeyBuffPress = 0;
	movlb 1	; select bank1
	clrf	(_fmd_KeyBuffPress)^080h
	line	1126
;TOUCH.C: 1126: fmd_KeyBuffUnPress = 0;
	clrf	(_fmd_KeyBuffUnPress)^080h
	line	1127
;TOUCH.C: 1127: for(fmd_u=0; fmd_u<2; fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l24958:	
	movlw	(02h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u7771
	goto	u7770
u7771:
	goto	l24962
u7770:
	goto	l24982
	line	1129
	
l24962:	
;TOUCH.C: 1128: {
;TOUCH.C: 1129: if((fmd_nodownavrdata_Key[fmd_a][fmd_u]>=fmd_TouchDataBuff_Key[fmd_u]))
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_TouchDataBuff_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+0)+0+1
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+2)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+2)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+2)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+2)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_DataProcessing+4)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+4)+0+1
	movf	1+(??_DataProcessing+0)+0,w
	subwf	1+(??_DataProcessing+4)+0,w
	skipz
	goto	u7785
	movf	0+(??_DataProcessing+0)+0,w
	subwf	0+(??_DataProcessing+4)+0,w
u7785:
	skipc
	goto	u7781
	goto	u7780
u7781:
	goto	l24970
u7780:
	line	1131
	
l24964:	
;TOUCH.C: 1130: {
;TOUCH.C: 1131: if((fmd_nodownavrdata_Key[fmd_a][fmd_u] - fmd_TouchDataBuff_Key[fmd_u])<255)
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_TouchDataBuff_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+0)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr0l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr0l
	moviw	[0]fsr1
	subwf	indf0,w
	movwf	(??_DataProcessing+2)+0
	addfsr	fsr0,1
	moviw	[1]fsr1
	subwfb	indf0,w
	movwf	(??_DataProcessing+2)+0+1
	movlw	high(0FFh)
	subwf	1+(??_DataProcessing+2)+0,w
	movlw	low(0FFh)
	skipnz
	subwf	0+(??_DataProcessing+2)+0,w
	skipnc
	goto	u7791
	goto	u7790
u7791:
	goto	l24968
u7790:
	line	1133
	
l24966:	
;TOUCH.C: 1132: {
;TOUCH.C: 1133: fmd_KeyDValue_Key[fmd_u]= fmd_nodownavrdata_Key[fmd_a][fmd_u] - fmd_TouchDataBuff_Key[fmd_u];
	movf	(_fmd_u),w
	addlw	_fmd_KeyDValue_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_TouchDataBuff_Key&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	(??_DataProcessing+0)+0
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+1)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+1)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+1)+0,w
	movwf	fsr0l
	movf	1+(??_DataProcessing+1)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr0l
	movf	indf0,w
	movwf	(??_DataProcessing+3)+0
	movf	(??_DataProcessing+0)+0,w
	subwf	(??_DataProcessing+3)+0,w
	movwf	indf1
	line	1134
;TOUCH.C: 1134: }
	goto	l24972
	line	1137
	
l24968:	
;TOUCH.C: 1135: else
;TOUCH.C: 1136: {
;TOUCH.C: 1137: fmd_KeyDValue_Key[fmd_u]=255;
	movf	(_fmd_u),w
	addlw	_fmd_KeyDValue_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(0FFh)
	movwf	indf1
	goto	l24972
	line	1142
	
l24970:	
;TOUCH.C: 1140: else
;TOUCH.C: 1141: {
;TOUCH.C: 1142: fmd_KeyDValue_Key[fmd_u]=0;
	movf	(_fmd_u),w
	addlw	_fmd_KeyDValue_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	1145
	
l24972:	
;TOUCH.C: 1143: }
;TOUCH.C: 1145: if(fmd_KeyDValue_Key[fmd_u]<=INACTIVE_SENSOR_DELTA[fmd_a][fmd_u])
	movf	(_fmd_u),w
	addlw	_fmd_KeyDValue_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(06h)
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	addlw	low(_INACTIVE_SENSOR_DELTA|8000h)
	movwf	(??_DataProcessing+0)+0
	movlw	high(_INACTIVE_SENSOR_DELTA|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_DataProcessing+0)+0
	movf	(_fmd_u),w
	addwf	(??_DataProcessing+0)+0,w
	movwf	fsr0l
	movf	(??_DataProcessing+0)+1,w
	skipnc
	incf	(??_DataProcessing+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	movwf	(??_DataProcessing+2)+0
	movf	indf1,w
	subwf	(??_DataProcessing+2)+0,w
	skipc
	goto	u7801
	goto	u7800
u7801:
	goto	l24976
u7800:
	line	1147
	
l24974:	
;TOUCH.C: 1146: {
;TOUCH.C: 1147: fmd_KeyBuffUnPress |= (1 << fmd_u);
	movlw	(01h)
	movwf	(??_DataProcessing+0)+0
	incf	(_fmd_u),w	;volatile
	goto	u7814
u7815:
	lslf	(??_DataProcessing+0)+0,f
u7814:
	decfsz	wreg,f
	goto	u7815
	movf	0+(??_DataProcessing+0)+0,w
	movlb 1	; select bank1
	iorwf	(_fmd_KeyBuffUnPress)^080h,f
	line	1149
	
l24976:	
;TOUCH.C: 1148: }
;TOUCH.C: 1149: if(fmd_KeyDValue_Key[fmd_u]>=ACTIVE_SENSOR_DELTA[fmd_a][fmd_u])
	movf	(_fmd_u),w
	addlw	_fmd_KeyDValue_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(06h)
	movlb 0	; select bank0
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	addlw	low(_ACTIVE_SENSOR_DELTA|8000h)
	movwf	(??_DataProcessing+0)+0
	movlw	high(_ACTIVE_SENSOR_DELTA|8000h)
	skipnc
	incf	wreg,f
	movwf	1+(??_DataProcessing+0)+0
	movf	(_fmd_u),w
	addwf	(??_DataProcessing+0)+0,w
	movwf	fsr0l
	movf	(??_DataProcessing+0)+1,w
	skipnc
	incf	(??_DataProcessing+0)+1,w
	movwf	fsr0h

	movf	indf0,w ;code access
	subwf	indf1,w
	skipc
	goto	u7821
	goto	u7820
u7821:
	goto	l24980
u7820:
	line	1151
	
l24978:	
;TOUCH.C: 1150: {
;TOUCH.C: 1151: fmd_KeyBuffPress |= (1 << fmd_u);
	movlw	(01h)
	movwf	(??_DataProcessing+0)+0
	incf	(_fmd_u),w	;volatile
	goto	u7834
u7835:
	lslf	(??_DataProcessing+0)+0,f
u7834:
	decfsz	wreg,f
	goto	u7835
	movf	0+(??_DataProcessing+0)+0,w
	movlb 1	; select bank1
	iorwf	(_fmd_KeyBuffPress)^080h,f
	line	1127
	
l24980:	
	incf	(_fmd_u),f	;volatile
	movlw	(02h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u7841
	goto	u7840
u7841:
	goto	l24962
u7840:
	line	1155
	
l24982:	
;TOUCH.C: 1152: }
;TOUCH.C: 1153: }
;TOUCH.C: 1155: if((fmd_Keystatus >> fmd_a) & 0x01)
	movf	(_fmd_Keystatus+1),w	;volatile
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0+1
	movf	(_fmd_Keystatus),w	;volatile
	movwf	(??_DataProcessing+0)+0
	incf	(_fmd_a),w	;volatile
	goto	u7854
u7855:
	lsrf	(??_DataProcessing+0)+1,f
	rrf	(??_DataProcessing+0)+0,f
u7854:
	decfsz	wreg,f
	goto	u7855
	btfss	0+(??_DataProcessing+0)+0,(0)&7
	goto	u7861
	goto	u7860
u7861:
	goto	l25028
u7860:
	line	1157
	
l24984:	
;TOUCH.C: 1156: {
;TOUCH.C: 1157: fmd_TestCount++;
	movlb 1	; select bank1
	incf	(_fmd_TestCount)^080h,f
	line	1158
	
l24986:	
;TOUCH.C: 1158: if((fmd_KeyBuffUnPress & 0x03) == 0x03)
	movlw	(03h)
	andwf	(_fmd_KeyBuffUnPress)^080h,w
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	movf	0+(??_DataProcessing+0)+0,w
	xorlw	03h&0ffh
	skipz
	goto	u7871
	goto	u7870
u7871:
	goto	l24992
u7870:
	line	1160
	
l24988:	
;TOUCH.C: 1159: {
;TOUCH.C: 1160: fmd_Keystatus &= ~(1 << fmd_a);
	movlw	low(01h)
	movwf	(??_DataProcessing+0)+0
	movlw	high(01h)
	movwf	(??_DataProcessing+0)+0+1
	incf	(_fmd_a),w	;volatile
	goto	u7884
u7885:
	lslf	(??_DataProcessing+0)+0,f
	rlf	(??_DataProcessing+0)+1,f
u7884:
	decfsz	wreg,f
	goto	u7885
	comf	(??_DataProcessing+0)+0,f
	comf	(??_DataProcessing+0)+1,f
	movf	0+(??_DataProcessing+0)+0,w
	andwf	(_fmd_Keystatus),f	;volatile
	movf	1+(??_DataProcessing+0)+0,w
	andwf	(_fmd_Keystatus+1),f	;volatile
	line	1161
	
l24990:	
;TOUCH.C: 1161: fmd_Keystatus2=fmd_Keystatus;
	movf	(_fmd_Keystatus+1),w	;volatile
	movwf	(_fmd_Keystatus2+1)	;volatile
	movf	(_fmd_Keystatus),w	;volatile
	movwf	(_fmd_Keystatus2)	;volatile
	line	1162
;TOUCH.C: 1162: fmd_TestCount--;
	movlb 1	; select bank1
	decf	(_fmd_TestCount)^080h,f
	line	1163
;TOUCH.C: 1163: }
	goto	l25010
	line	1164
	
l24992:	
;TOUCH.C: 1164: else if((fmd_KeyBuffUnPress & 0x03) == 0x00)
	movlb 1	; select bank1
	movf	(_fmd_KeyBuffUnPress)^080h,w
	andlw	03h
	btfss	status,2
	goto	u7891
	goto	u7890
u7891:
	goto	l17744
u7890:
	goto	l25010
	line	1167
	
l17744:	
	line	1171
;TOUCH.C: 1167: else
;TOUCH.C: 1168: {
;TOUCH.C: 1171: fmd_HfreqOn = 1;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	incf	(_fmd_HfreqOn),f
	line	1172
	
l24996:	
;TOUCH.C: 1172: StartHigeFreq(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_StartHigeFreq
	line	1173
	
l24998:	
;TOUCH.C: 1173: HighFreqCo(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_HighFreqCo
	line	1174
	
l25000:	
;TOUCH.C: 1174: fmd_HfreqOn = 0;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	line	1175
	
l25002:	
;TOUCH.C: 1175: if((fmd_KeyDValue_Key[3]<=INACTIVE_SENSOR_DELTA[fmd_a][3]) && (fmd_KeyDValue_Key[2]<=INACTIVE_SENSOR_DELTA[fmd_a][2]))
	movlw	(06h)
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	addlw	03h
	addlw	low(_INACTIVE_SENSOR_DELTA|8000h)
	movwf	fsr0l
	movlw	high(_INACTIVE_SENSOR_DELTA|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_DataProcessing+0)+0
	movlb 1	; select bank1
	movf	0+(_fmd_KeyDValue_Key)^080h+03h,w
	movlb 0	; select bank0
	subwf	(??_DataProcessing+0)+0,w
	skipc
	goto	u7901
	goto	u7900
u7901:
	goto	l25010
u7900:
	
l25004:	
	movlw	(06h)
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	addlw	02h
	addlw	low(_INACTIVE_SENSOR_DELTA|8000h)
	movwf	fsr0l
	movlw	high(_INACTIVE_SENSOR_DELTA|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_DataProcessing+0)+0
	movlb 1	; select bank1
	movf	0+(_fmd_KeyDValue_Key)^080h+02h,w
	movlb 0	; select bank0
	subwf	(??_DataProcessing+0)+0,w
	skipc
	goto	u7911
	goto	u7910
u7911:
	goto	l25010
u7910:
	goto	l24988
	line	1183
	
l25010:	
;TOUCH.C: 1180: }
;TOUCH.C: 1182: }
;TOUCH.C: 1183: if((fmd_Keystatus1 >> fmd_a) & 0x01)
	movlb 0	; select bank0
	movf	(_fmd_Keystatus1+1),w	;volatile
	movwf	(??_DataProcessing+0)+0+1
	movf	(_fmd_Keystatus1),w	;volatile
	movwf	(??_DataProcessing+0)+0
	incf	(_fmd_a),w	;volatile
	goto	u7924
u7925:
	lsrf	(??_DataProcessing+0)+1,f
	rrf	(??_DataProcessing+0)+0,f
u7924:
	decfsz	wreg,f
	goto	u7925
	btfss	0+(??_DataProcessing+0)+0,(0)&7
	goto	u7931
	goto	u7930
u7931:
	goto	l25066
u7930:
	line	1185
	
l25012:	
;TOUCH.C: 1184: {
;TOUCH.C: 1185: if((fmd_Keystatus >> fmd_a) & 0x01)
	movf	(_fmd_Keystatus+1),w	;volatile
	movwf	(??_DataProcessing+0)+0+1
	movf	(_fmd_Keystatus),w	;volatile
	movwf	(??_DataProcessing+0)+0
	incf	(_fmd_a),w	;volatile
	goto	u7944
u7945:
	lsrf	(??_DataProcessing+0)+1,f
	rrf	(??_DataProcessing+0)+0,f
u7944:
	decfsz	wreg,f
	goto	u7945
	btfss	0+(??_DataProcessing+0)+0,(0)&7
	goto	u7951
	goto	u7950
u7951:
	goto	l25016
u7950:
	line	1187
	
l25014:	
;TOUCH.C: 1186: {
;TOUCH.C: 1187: fmd_PressOff = 0;
	movlb 1	; select bank1
	clrf	(_fmd_PressOff)^080h
	line	1188
;TOUCH.C: 1188: }
	goto	l25066
	line	1191
	
l25016:	
;TOUCH.C: 1189: else
;TOUCH.C: 1190: {
;TOUCH.C: 1191: if(fmd_PressOff == 0)
	movlb 1	; select bank1
	movf	(_fmd_PressOff)^080h,f
	skipz
	goto	u7961
	goto	u7960
u7961:
	goto	l25020
u7960:
	line	1193
	
l25018:	
;TOUCH.C: 1192: {
;TOUCH.C: 1193: fmd_PressOffCount = 1;
	clrf	(_fmd_PressOffCount)^080h
	incf	(_fmd_PressOffCount)^080h,f
	line	1194
;TOUCH.C: 1194: }
	goto	l25022
	line	1197
	
l25020:	
;TOUCH.C: 1195: else
;TOUCH.C: 1196: {
;TOUCH.C: 1197: fmd_PressOffCount = 2;
	movlw	(02h)
	movwf	(_fmd_PressOffCount)^080h
	line	1200
	
l25022:	
;TOUCH.C: 1198: }
;TOUCH.C: 1200: fmd_PressOff = 1;
	clrf	(_fmd_PressOff)^080h
	incf	(_fmd_PressOff)^080h,f
	line	1201
	
l25024:	
;TOUCH.C: 1201: fmd_thedeathcount = 0;
	clrf	(_fmd_thedeathcount)^080h
	clrf	(_fmd_thedeathcount+1)^080h
	line	1204
	
l25026:	
;TOUCH.C: 1204: fmd_f_firstdown = 0;
	bcf	(_fmd_f_firstdown/8),(_fmd_f_firstdown)&7
	goto	l25066
	line	1210
	
l25028:	
;TOUCH.C: 1208: else
;TOUCH.C: 1209: {
;TOUCH.C: 1210: if((fmd_KeyBuffPress & 0x03) == 0x03)
	movlw	(03h)
	movlb 1	; select bank1
	andwf	(_fmd_KeyBuffPress)^080h,w
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	movf	0+(??_DataProcessing+0)+0,w
	xorlw	03h&0ffh
	skipz
	goto	u7971
	goto	u7970
u7971:
	goto	l25036
u7970:
	line	1213
	
l25030:	
;TOUCH.C: 1211: {
;TOUCH.C: 1213: fmd_Keystatus |= (1 << fmd_a);
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	movlw	high(01h)
	movwf	(??_DataProcessing+0)+0+1
	incf	(_fmd_a),w	;volatile
	goto	u7984
u7985:
	lslf	(??_DataProcessing+0)+0,f
	rlf	(??_DataProcessing+0)+1,f
u7984:
	decfsz	wreg,f
	goto	u7985
	movf	0+(??_DataProcessing+0)+0,w
	iorwf	(_fmd_Keystatus),f	;volatile
	movf	1+(??_DataProcessing+0)+0,w
	iorwf	(_fmd_Keystatus+1),f	;volatile
	line	1214
	
l25032:	
;TOUCH.C: 1214: fmd_Keystatus2=fmd_Keystatus;
	movf	(_fmd_Keystatus+1),w	;volatile
	movwf	(_fmd_Keystatus2+1)	;volatile
	movf	(_fmd_Keystatus),w	;volatile
	movwf	(_fmd_Keystatus2)	;volatile
	line	1215
;TOUCH.C: 1215: fmd_TestCount++;
	movlb 1	; select bank1
	incf	(_fmd_TestCount)^080h,f
	line	1216
	
l25034:	
;TOUCH.C: 1216: fmd_f_keydown_flag=1;
	bsf	(_fmd_f_keydown_flag/8),(_fmd_f_keydown_flag)&7
	line	1217
;TOUCH.C: 1217: }
	goto	l25066
	line	1218
	
l25036:	
;TOUCH.C: 1218: else if((fmd_KeyBuffPress & 0x03) == 0x00)
	movlb 1	; select bank1
	movf	(_fmd_KeyBuffPress)^080h,w
	andlw	03h
	btfss	status,2
	goto	u7991
	goto	u7990
u7991:
	goto	l17755
u7990:
	goto	l25066
	line	1221
	
l17755:	
	line	1224
;TOUCH.C: 1221: else
;TOUCH.C: 1222: {
;TOUCH.C: 1224: fmd_HfreqOn = 1;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	incf	(_fmd_HfreqOn),f
	line	1225
	
l25040:	
;TOUCH.C: 1225: StartHigeFreq(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_StartHigeFreq
	line	1226
	
l25042:	
;TOUCH.C: 1226: HighFreqCo(fmd_a);
	movf	(_fmd_a),w	;volatile
	fcall	_HighFreqCo
	line	1227
	
l25044:	
;TOUCH.C: 1227: fmd_HfreqOn = 0;
	movlb 0	; select bank0
	clrf	(_fmd_HfreqOn)
	line	1228
	
l25046:	
;TOUCH.C: 1228: if((fmd_KeyDValue_Key[3]>=ACTIVE_SENSOR_DELTA[fmd_a][3]) && (fmd_KeyDValue_Key[2]>=ACTIVE_SENSOR_DELTA[fmd_a][2]))
	movlw	(06h)
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	addlw	03h
	addlw	low(_ACTIVE_SENSOR_DELTA|8000h)
	movwf	fsr0l
	movlw	high(_ACTIVE_SENSOR_DELTA|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 1	; select bank1
	subwf	0+(_fmd_KeyDValue_Key)^080h+03h,w
	skipc
	goto	u8001
	goto	u8000
u8001:
	goto	l25066
u8000:
	
l25048:	
	movlw	(06h)
	movlb 0	; select bank0
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	addlw	02h
	addlw	low(_ACTIVE_SENSOR_DELTA|8000h)
	movwf	fsr0l
	movlw	high(_ACTIVE_SENSOR_DELTA|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movlb 1	; select bank1
	subwf	0+(_fmd_KeyDValue_Key)^080h+02h,w
	skipc
	goto	u8011
	goto	u8010
u8011:
	goto	l25066
u8010:
	line	1230
	
l25050:	
;TOUCH.C: 1229: {
;TOUCH.C: 1230: if(fmd_KeyDValue_Key[0]>=ACTIVE_SENSOR_DELTA[fmd_a][0]+(ACTIVE_SENSOR_DELTA[fmd_a][0]))
	movlw	(06h)
	movlb 0	; select bank0
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	addlw	low(_ACTIVE_SENSOR_DELTA|8000h)
	movwf	fsr0l
	movlw	high(_ACTIVE_SENSOR_DELTA|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_DataProcessing+0)+0
	movlw	(0x0/2)
	movwf	(??_DataProcessing+0)+0+1
	lslf	(??_DataProcessing+0)+0,f
	rlf	(??_DataProcessing+0)+1,f
	movf	1+(??_DataProcessing+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u8025
	movf	0+(??_DataProcessing+0)+0,w
	movlb 1	; select bank1
	subwf	(_fmd_KeyDValue_Key)^080h,w
u8025:

	skipc
	goto	u8021
	goto	u8020
u8021:
	goto	l25058
u8020:
	goto	l25030
	line	1239
	
l25058:	
;TOUCH.C: 1237: else
;TOUCH.C: 1238: {
;TOUCH.C: 1239: if(fmd_KeyDValue_Key[1]>=ACTIVE_SENSOR_DELTA[fmd_a][1]+(ACTIVE_SENSOR_DELTA[fmd_a][1]))
	movlw	(06h)
	movlb 0	; select bank0
	movwf	(?___bmul)
	movf	(_fmd_a),w
	fcall	___bmul
	movwf	(??_DataProcessing+0)+0
	incf	0+(??_DataProcessing+0)+0,w
	addlw	low(_ACTIVE_SENSOR_DELTA|8000h)
	movwf	fsr0l
	movlw	high(_ACTIVE_SENSOR_DELTA|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_DataProcessing+1)+0
	movlw	(0x0/2)
	movwf	(??_DataProcessing+1)+0+1
	lslf	(??_DataProcessing+1)+0,f
	rlf	(??_DataProcessing+1)+1,f
	movf	1+(??_DataProcessing+1)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u8035
	movf	0+(??_DataProcessing+1)+0,w
	movlb 1	; select bank1
	subwf	0+(_fmd_KeyDValue_Key)^080h+01h,w
u8035:

	skipc
	goto	u8031
	goto	u8030
u8031:
	goto	l25066
u8030:
	goto	l25030
	line	1251
	
l25066:	
;TOUCH.C: 1245: }
;TOUCH.C: 1246: }
;TOUCH.C: 1247: }
;TOUCH.C: 1248: }
;TOUCH.C: 1249: }
;TOUCH.C: 1251: if(fmd_f_keydown_flag)
	btfss	(_fmd_f_keydown_flag/8),(_fmd_f_keydown_flag)&7
	goto	u8041
	goto	u8040
u8041:
	goto	l25128
u8040:
	line	1253
	
l25068:	
;TOUCH.C: 1252: {
;TOUCH.C: 1253: fmd_f_keydown_flag=0;
	bcf	(_fmd_f_keydown_flag/8),(_fmd_f_keydown_flag)&7
	line	1255
;TOUCH.C: 1255: if(!fmd_f_firstdown)
	btfsc	(_fmd_f_firstdown/8),(_fmd_f_firstdown)&7
	goto	u8051
	goto	u8050
u8051:
	goto	l25090
u8050:
	line	1257
	
l25070:	
;TOUCH.C: 1256: {
;TOUCH.C: 1257: fmd_f_firstdown=1;
	bsf	(_fmd_f_firstdown/8),(_fmd_f_firstdown)&7
	line	1258
;TOUCH.C: 1258: fmd_f_firstloop = 1;
	bsf	(_fmd_f_firstloop/8),(_fmd_f_firstloop)&7
	line	1260
	
l25072:	
;TOUCH.C: 1260: fmd_a3= fmd_theUsedChannel[fmd_a2];
	movlb 0	; select bank0
	movf	(_fmd_a2),w
	addlw	_fmd_theUsedChannel&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 1	; select bank1
	movwf	(_fmd_a3)^080h	;volatile
	line	1270
	
l25074:	
;TOUCH.C: 1270: for(fmd_u=0;fmd_u<2;fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l25076:	
	movlw	(02h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u8061
	goto	u8060
u8061:
	goto	l25080
u8060:
	goto	l25128
	line	1272
	
l25080:	
;TOUCH.C: 1271: {
;TOUCH.C: 1272: fmd_OriginalData=fmd_KeyDValue_Key[fmd_u];
	movf	(_fmd_u),w
	addlw	_fmd_KeyDValue_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(81)
	clrf	(81+1)
	line	1273
;TOUCH.C: 1273: fmd_ReferenceData = fmd_nodownavrdata_Key[fmd_a][fmd_u];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+0)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(85)
	moviw	[1]fsr1
	movwf	(85+1)
	line	1274
	
l25082:	
;TOUCH.C: 1274: DIV();
	fcall	_DIV
	line	1275
	
l25084:	
;TOUCH.C: 1275: fmd_KeyDValue_Key_base[fmd_u]=fmd_ResultData;
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_KeyDValue_Key_base&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(87),w
	movwi	[0]fsr1
	movf	(87+1),w
	movwi	[1]fsr1
	line	1270
	
l25086:	
	incf	(_fmd_u),f	;volatile
	goto	l25076
	line	1280
	
l25090:	
;TOUCH.C: 1278: else
;TOUCH.C: 1279: {
;TOUCH.C: 1280: fmd_currentCount=0;
	movlb 1	; select bank1
	clrf	(_fmd_currentCount)^080h
	line	1281
;TOUCH.C: 1281: for(fmd_u=0;fmd_u<2;fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l25092:	
	movlw	(02h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u8071
	goto	u8070
u8071:
	goto	l25096
u8070:
	goto	l25108
	line	1283
	
l25096:	
;TOUCH.C: 1282: {
;TOUCH.C: 1283: fmd_OriginalData = fmd_KeyDValue_Key[fmd_u];
	movf	(_fmd_u),w
	addlw	_fmd_KeyDValue_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(81)
	clrf	(81+1)
	line	1284
;TOUCH.C: 1284: fmd_ReferenceData = fmd_nodownavrdata_Key[fmd_a][fmd_u];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	low 8960
	movwf	(??_DataProcessing+0)+0
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	((??_DataProcessing+0)+0)+1
	lslf	(_fmd_u),w	;volatile
	addwf	0+(??_DataProcessing+0)+0,w
	movwf	fsr1l
	movf	1+(??_DataProcessing+0)+0,w
	skipnc
	incf	wreg,f
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(85)
	moviw	[1]fsr1
	movwf	(85+1)
	line	1285
	
l25098:	
;TOUCH.C: 1285: DIV();
	fcall	_DIV
	line	1286
	
l25100:	
;TOUCH.C: 1286: fmd_KeyDValue_Key_baseBuff[fmd_u]=fmd_ResultData;
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_KeyDValue_Key_baseBuff&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(87),w
	movwi	[0]fsr1
	movf	(87+1),w
	movwi	[1]fsr1
	line	1288
	
l25102:	
;TOUCH.C: 1288: if(fmd_KeyDValue_Key_baseBuff[fmd_u]>fmd_KeyDValue_Key_base[fmd_u])
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_KeyDValue_Key_baseBuff&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_DataProcessing+0)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+0)+0+1
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_KeyDValue_Key_base&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_DataProcessing+2)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+2)+0+1
	movf	1+(??_DataProcessing+0)+0,w
	subwf	1+(??_DataProcessing+2)+0,w
	skipz
	goto	u8085
	movf	0+(??_DataProcessing+0)+0,w
	subwf	0+(??_DataProcessing+2)+0,w
u8085:
	skipnc
	goto	u8081
	goto	u8080
u8081:
	goto	l17768
u8080:
	line	1290
	
l25104:	
;TOUCH.C: 1289: {
;TOUCH.C: 1290: fmd_currentCount++;
	movlb 1	; select bank1
	incf	(_fmd_currentCount)^080h,f
	line	1291
	
l17768:	
	line	1281
	incf	(_fmd_u),f	;volatile
	goto	l25092
	line	1294
	
l25108:	
;TOUCH.C: 1291: }
;TOUCH.C: 1292: }
;TOUCH.C: 1294: if(fmd_currentCount==2)
	movlb 1	; select bank1
	movf	(_fmd_currentCount)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u8091
	goto	u8090
u8091:
	goto	l25126
u8090:
	line	1296
	
l25110:	
;TOUCH.C: 1295: {
;TOUCH.C: 1296: fmd_Keystatus = (1 << fmd_a);
	clrf	(_fmd_Keystatus)
	incf	(_fmd_Keystatus),f
	clrf	(_fmd_Keystatus+1)
	
l25112:	
	incf	(_fmd_a),w	;volatile
	goto	u8100
u8105:
	lslf	(_fmd_Keystatus),f
	rlf	(_fmd_Keystatus+1),f
u8100:
	decfsz	wreg,f
	goto	u8105
	line	1298
	
l25114:	
;TOUCH.C: 1298: for(fmd_u=0;fmd_u<2;fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l25116:	
	movlw	(02h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u8111
	goto	u8110
u8111:
	goto	l25120
u8110:
	goto	l25128
	line	1300
	
l25120:	
;TOUCH.C: 1299: {
;TOUCH.C: 1300: fmd_KeyDValue_Key_base[fmd_u]=fmd_KeyDValue_Key_baseBuff[fmd_u];
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_KeyDValue_Key_baseBuff&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	moviw	[1]fsr1
	movwf	(??_DataProcessing+0)+0+1
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_KeyDValue_Key_base&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_DataProcessing+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_DataProcessing+0)+0,w
	movwi	[1]fsr1
	line	1298
	
l25122:	
	incf	(_fmd_u),f	;volatile
	goto	l25116
	line	1305
	
l25126:	
;TOUCH.C: 1303: else
;TOUCH.C: 1304: {
;TOUCH.C: 1305: fmd_Keystatus &= ~(1 << fmd_a);
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(??_DataProcessing+0)+0
	movlw	high(01h)
	movwf	(??_DataProcessing+0)+0+1
	incf	(_fmd_a),w	;volatile
	goto	u8124
u8125:
	lslf	(??_DataProcessing+0)+0,f
	rlf	(??_DataProcessing+0)+1,f
u8124:
	decfsz	wreg,f
	goto	u8125
	comf	(??_DataProcessing+0)+0,f
	comf	(??_DataProcessing+0)+1,f
	movf	0+(??_DataProcessing+0)+0,w
	andwf	(_fmd_Keystatus),f	;volatile
	movf	1+(??_DataProcessing+0)+0,w
	andwf	(_fmd_Keystatus+1),f	;volatile
	line	1317
	
l25128:	
;TOUCH.C: 1306: }
;TOUCH.C: 1307: }
;TOUCH.C: 1308: }
;TOUCH.C: 1317: if(fmd_Keystatus==0)
	movf	((_fmd_Keystatus+1)),w	;volatile
	iorwf	((_fmd_Keystatus)),w	;volatile
	skipz
	goto	u8131
	goto	u8130
u8131:
	goto	l17776
u8130:
	line	1319
	
l25130:	
;TOUCH.C: 1318: {
;TOUCH.C: 1319: fmd_PressOff = 1;
	movlb 1	; select bank1
	clrf	(_fmd_PressOff)^080h
	incf	(_fmd_PressOff)^080h,f
	line	1320
	
l25132:	
;TOUCH.C: 1320: for(fmd_u=0;fmd_u<2;fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l25134:	
	movlw	(02h)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u8141
	goto	u8140
u8141:
	goto	l25138
u8140:
	goto	l17776
	line	1322
	
l25138:	
;TOUCH.C: 1321: {
;TOUCH.C: 1322: fmd_KeyDValue_Key_base[fmd_u]=0;
	lslf	(_fmd_u),w	;volatile
	addlw	_fmd_KeyDValue_Key_base&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	addfsr	fsr1,1
	clrf	indf1
	line	1320
	
l25140:	
	incf	(_fmd_u),f	;volatile
	goto	l25134
	line	1325
	
l17776:	
	return
	opt stack 0
GLOBAL	__end_of_DataProcessing
	__end_of_DataProcessing:
;; =============== function _DataProcessing ends ============

	signat	_DataProcessing,88
	global	_SysPowerHandler
psect	text1291,local,class=CODE,delta=2
global __ptext1291
__ptext1291:

;; *************** function _SysPowerHandler *****************
;; Defined at:
;;		line 148 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_User_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1291
	file	"sub.c"
	line	148
	global	__size_of_SysPowerHandler
	__size_of_SysPowerHandler	equ	__end_of_SysPowerHandler-_SysPowerHandler
	
_SysPowerHandler:	
	opt	stack 9
; Regs used in _SysPowerHandler: [wreg+status,2+status,0+pclath+cstack]
	line	149
	
l24846:	
;sub.c: 149: if(SysFunFlg1.OneBits.b2)
	btfss	(_SysFunFlg1),2	;volatile
	goto	u7551
	goto	u7550
u7551:
	goto	l12500
u7550:
	goto	l12501
	line	150
	
l12500:	
	line	151
;sub.c: 151: if(SysFunFlg2.OneBits.b7)
	btfss	(_SysFunFlg2),7	;volatile
	goto	u7561
	goto	u7560
u7561:
	goto	l12502
u7560:
	goto	l12501
	line	152
	
l12502:	
	line	153
;sub.c: 153: if(SysFunFlg0.OneBits.b6)
	btfss	(_SysFunFlg0),6	;volatile
	goto	u7571
	goto	u7570
u7571:
	goto	l24854
u7570:
	goto	l12501
	line	156
	
l24854:	
;sub.c: 156: if((TimeMin==0)&&(PwrType))
	movf	(_TimeMin),f
	skipz	;volatile
	goto	u7581
	goto	u7580
u7581:
	goto	l24860
u7580:
	
l24856:	
	movf	(_PwrType),w
	skipz
	goto	u7590
	goto	l24860
u7590:
	line	158
	
l24858:	
;sub.c: 157: {
;sub.c: 158: KeyType=PowerKey;
	clrf	(_KeyType)
	incf	(_KeyType),f
	line	160
	
l24860:	
;sub.c: 159: }
;sub.c: 160: if(PwrType)
	movf	(_PwrType),w
	skipz
	goto	u7600
	goto	l12505
u7600:
	goto	l12501
	line	161
	
l12505:	
	line	162
;sub.c: 162: if(SysFunFlg0.OneBits.b7)
	btfss	(_SysFunFlg0),7	;volatile
	goto	u7611
	goto	u7610
u7611:
	goto	l12501
u7610:
	line	164
	
l24864:	
;sub.c: 163: {
;sub.c: 164: User_init();
	fcall	_User_init
	line	166
	
l12501:	
	return
	opt stack 0
GLOBAL	__end_of_SysPowerHandler
	__end_of_SysPowerHandler:
;; =============== function _SysPowerHandler ends ============

	signat	_SysPowerHandler,88
	global	_dokey
psect	text1292,local,class=CODE,delta=2
global __ptext1292
__ptext1292:

;; *************** function _dokey *****************
;; Defined at:
;;		line 101 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_PowerKeyExec
;;		_ModeKeyExec
;;		_HeatKeyExec
;;		_StrongKeyExec
;;		_ManualKeyExec
;;		_refresh_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1292
	file	"sub.c"
	line	101
	global	__size_of_dokey
	__size_of_dokey	equ	__end_of_dokey-_dokey
	
_dokey:	
	opt	stack 9
; Regs used in _dokey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	102
	
l24812:	
;sub.c: 102: if(KeyType==NullKey)return;
	movlb 0	; select bank0
	movf	(_KeyType),f
	skipz
	goto	u7521
	goto	u7520
u7521:
	goto	l24828
u7520:
	goto	l12485
	line	107
	
l24816:	
;sub.c: 107: PowerKeyExec();
	fcall	_PowerKeyExec
	line	108
;sub.c: 108: break;
	goto	l24830
	line	110
	
l24818:	
;sub.c: 110: ModeKeyExec();
	fcall	_ModeKeyExec
	line	111
;sub.c: 111: break;
	goto	l24830
	line	116
	
l24820:	
;sub.c: 116: HeatKeyExec();
	fcall	_HeatKeyExec
	line	117
;sub.c: 117: break;
	goto	l24830
	line	119
	
l24822:	
;sub.c: 119: StrongKeyExec();
	fcall	_StrongKeyExec
	line	120
;sub.c: 120: break;
	goto	l24830
	line	122
	
l24824:	
;sub.c: 122: ManualKeyExec();
	fcall	_ManualKeyExec
	line	123
;sub.c: 123: break;
	goto	l24830
	line	104
	
l24828:	
	movf	(_KeyType),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           23     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l24816
	xorlw	2^1	; case 2
	skipnz
	goto	l24818
	xorlw	3^2	; case 3
	skipnz
	goto	l24830
	xorlw	4^3	; case 4
	skipnz
	goto	l24820
	xorlw	5^4	; case 5
	skipnz
	goto	l24822
	xorlw	6^5	; case 6
	skipnz
	goto	l24824
	xorlw	7^6	; case 7
	skipnz
	goto	l24830
	goto	l24830
	opt asmopt_on

	line	131
	
l24830:	
;sub.c: 131: if((KeyType!=PowerKey)&&(!SysFunFlg0.OneBits.b7))
	decf	(_KeyType),w
	skipnz
	goto	u7531
	goto	u7530
u7531:
	goto	l24838
u7530:
	
l24832:	
	btfsc	(_SysFunFlg0),7	;volatile
	goto	u7541
	goto	u7540
u7541:
	goto	l24838
u7540:
	goto	l12485
	line	137
	
l24838:	
;sub.c: 135: else
;sub.c: 136: {
;sub.c: 137: {BuzzerCnt=400;};
	movlw	low(0190h)
	movlb 1	; select bank1
	movwf	(_BuzzerCnt)^080h
	movlw	high(0190h)
	movwf	((_BuzzerCnt)^080h)+1
	line	138
	
l24840:	
;sub.c: 138: refresh_data();
	fcall	_refresh_data
	line	141
	
l24842:	
;sub.c: 139: }
;sub.c: 141: KeyType=NullKey;
	movlb 0	; select bank0
	clrf	(_KeyType)
	line	143
	
l24844:	
;sub.c: 143: dsp_100ms=250;
	movlw	(0FAh)
	movwf	(_dsp_100ms)
	line	144
	
l12485:	
	return
	opt stack 0
GLOBAL	__end_of_dokey
	__end_of_dokey:
;; =============== function _dokey ends ============

	signat	_dokey,88
	global	_StartHigeFreq
psect	text1293,local,class=CODE,delta=2
global __ptext1293
__ptext1293:

;; *************** function _StartHigeFreq *****************
;; Defined at:
;;		line 305 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[BANK0h] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1E/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TouchInit
;;		_DIV
;; This function is called by:
;;		_ReadTouchData
;;		_DataProcessing
;; This function uses a non-reentrant model
;;
psect	text1293
	file	"TOUCH.C"
	line	305
	global	__size_of_StartHigeFreq
	__size_of_StartHigeFreq	equ	__end_of_StartHigeFreq-_StartHigeFreq
	
_StartHigeFreq:	
	opt	stack 6
; Regs used in _StartHigeFreq: [wreg+fsr1l-status,0+pclath+cstack]
;StartHigeFreq@a stored from wreg
	movlb 0	; select bank0
	movwf	(StartHigeFreq@a)
	line	306
	
l24588:	
;TOUCH.C: 306: WPROOF1 = 0;
	movlb 7	; select bank7
	clrf	(911)^0380h	;volatile
	line	307
;TOUCH.C: 307: WPROOF2 = 0;
	clrf	(912)^0380h	;volatile
	line	308
;TOUCH.C: 308: WPROOF3 = 0;
	clrf	(913)^0380h	;volatile
	line	309
	
l24590:	
;TOUCH.C: 309: if(a<4)
	movlw	(04h)
	movlb 0	; select bank0
	subwf	(StartHigeFreq@a),w
	skipnc
	goto	u7251
	goto	u7250
u7251:
	goto	l24646
u7250:
	line	311
	
l24592:	
;TOUCH.C: 310: {
;TOUCH.C: 311: TouchInit(1);
	movlw	(01h)
	fcall	_TouchInit
	line	312
	
l24594:	
;TOUCH.C: 312: M0ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(914)^0380h	;volatile
	line	313
	
l24596:	
;TOUCH.C: 313: TKM0C0 = 0x03 | (a<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	iorlw	03h
	movlb 7	; select bank7
	movwf	(918)^0380h	;volatile
	line	314
	
l24598:	
;TOUCH.C: 314: TKM0C1 = 0x10 | (0x01 << a);
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	incf	(StartHigeFreq@a),w
	goto	u7264
u7265:
	lslf	(??_StartHigeFreq+0)+0,f
u7264:
	decfsz	wreg,f
	goto	u7265
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(919)^0380h	;volatile
	line	315
	
l24600:	
;TOUCH.C: 315: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	316
	
l24602:	
;TOUCH.C: 316: TKM3C0 = 0xC3;
	movlw	(0C3h)
	movwf	(924)^0380h	;volatile
	line	317
	
l24604:	
;TOUCH.C: 317: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	318
	
l24606:	
;TOUCH.C: 318: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7271
	goto	u7270
u7271:
	goto	l24618
u7270:
	line	320
	
l24608:	
;TOUCH.C: 319: {
;TOUCH.C: 320: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	321
;TOUCH.C: 321: while(TKRCOV==0);
	
l17549:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7281
	goto	u7280
u7281:
	goto	l17549
u7280:
	line	322
	
l24610:	
;TOUCH.C: 322: fmd_OriginalData = (TKM016DH << 8) +TKM016DL;
	movlb 31	; select bank31
	movf	(3989)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3988)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	323
;TOUCH.C: 323: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	324
	
l24612:	
;TOUCH.C: 324: DIV();
	fcall	_DIV
	line	325
	
l24614:	
;TOUCH.C: 325: fmd_TouchDataBuff_Key[3] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+06h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+06h
	line	326
	
l24616:	
;TOUCH.C: 326: fmd_nodownsum_Key[fmd_a][3] = fmd_TouchDataBuff_Key[3];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	06h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[1]fsr1
	line	330
	
l24618:	
;TOUCH.C: 327: }
;TOUCH.C: 330: TouchInit(2);
	movlw	(02h)
	fcall	_TouchInit
	line	331
	
l24620:	
;TOUCH.C: 331: M0ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(914)^0380h	;volatile
	line	332
	
l24622:	
;TOUCH.C: 332: TKM0C0 = 0x00 | (a<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(918)^0380h	;volatile
	line	333
	
l24624:	
;TOUCH.C: 333: TKM0C1 = 0x10 | (0x01 << a);
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	incf	(StartHigeFreq@a),w
	goto	u7294
u7295:
	lslf	(??_StartHigeFreq+0)+0,f
u7294:
	decfsz	wreg,f
	goto	u7295
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(919)^0380h	;volatile
	line	334
	
l24626:	
;TOUCH.C: 334: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	335
	
l24628:	
;TOUCH.C: 335: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	336
	
l24630:	
;TOUCH.C: 336: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	337
	
l24632:	
;TOUCH.C: 337: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7301
	goto	u7300
u7301:
	goto	l24644
u7300:
	line	339
	
l24634:	
;TOUCH.C: 338: {
;TOUCH.C: 339: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	340
;TOUCH.C: 340: while(TKRCOV==0);
	
l17553:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7311
	goto	u7310
u7311:
	goto	l17553
u7310:
	line	341
	
l24636:	
;TOUCH.C: 341: fmd_OriginalData = (TKM016DH << 8) +TKM016DL;
	movlb 31	; select bank31
	movf	(3989)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3988)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	342
;TOUCH.C: 342: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	343
	
l24638:	
;TOUCH.C: 343: DIV();
	fcall	_DIV
	line	344
	
l24640:	
;TOUCH.C: 344: fmd_TouchDataBuff_Key[2] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+04h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+04h
	line	345
	
l24642:	
;TOUCH.C: 345: fmd_nodownsum_Key[fmd_a][2] = fmd_TouchDataBuff_Key[2];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	04h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+04h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+04h,w
	movwi	[1]fsr1
	line	346
;TOUCH.C: 346: }
	goto	l17589
	line	349
	
l24644:	
;TOUCH.C: 347: else
;TOUCH.C: 348: {
;TOUCH.C: 349: TouchInit(0);
	movlw	(0)
	fcall	_TouchInit
	goto	l17589
	line	352
	
l24646:	
;TOUCH.C: 352: else if(a<8)
	movlw	(08h)
	subwf	(StartHigeFreq@a),w
	skipnc
	goto	u7321
	goto	u7320
u7321:
	goto	l24702
u7320:
	line	355
	
l24648:	
;TOUCH.C: 353: {
;TOUCH.C: 355: TouchInit(1);
	movlw	(01h)
	fcall	_TouchInit
	line	356
	
l24650:	
;TOUCH.C: 356: M1ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(915)^0380h	;volatile
	line	357
	
l24652:	
;TOUCH.C: 357: TKM1C0 = 0x03 | ((a-4)<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	iorlw	03h
	movlb 7	; select bank7
	movwf	(920)^0380h	;volatile
	line	358
	
l24654:	
;TOUCH.C: 358: TKM1C1 = 0x10 | (0x01 << (a-4));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	movf	(StartHigeFreq@a),w
	addlw	-4
	incf	wreg,f
	goto	u7334
u7335:
	lslf	(??_StartHigeFreq+0)+0,f
u7334:
	decfsz	wreg,f
	goto	u7335
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(921)^0380h	;volatile
	line	359
	
l24656:	
;TOUCH.C: 359: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	360
	
l24658:	
;TOUCH.C: 360: TKM3C0 = 0xC3;
	movlw	(0C3h)
	movwf	(924)^0380h	;volatile
	line	361
	
l24660:	
;TOUCH.C: 361: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	362
	
l24662:	
;TOUCH.C: 362: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7341
	goto	u7340
u7341:
	goto	l24674
u7340:
	line	365
	
l24664:	
;TOUCH.C: 363: {
;TOUCH.C: 365: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	366
;TOUCH.C: 366: while(TKRCOV==0);
	
l17560:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7351
	goto	u7350
u7351:
	goto	l17560
u7350:
	line	367
	
l24666:	
;TOUCH.C: 367: fmd_OriginalData = (TKM116DH << 8) +TKM116DL;
	movlb 31	; select bank31
	movf	(3997)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3996)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	368
;TOUCH.C: 368: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	369
	
l24668:	
;TOUCH.C: 369: DIV();
	fcall	_DIV
	line	371
	
l24670:	
;TOUCH.C: 371: fmd_TouchDataBuff_Key[3] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+06h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+06h
	line	372
	
l24672:	
;TOUCH.C: 372: fmd_nodownsum_Key[fmd_a][3] = fmd_TouchDataBuff_Key[3];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	06h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[1]fsr1
	line	375
	
l24674:	
;TOUCH.C: 373: }
;TOUCH.C: 375: TouchInit(2);
	movlw	(02h)
	fcall	_TouchInit
	line	376
	
l24676:	
;TOUCH.C: 376: M1ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(915)^0380h	;volatile
	line	377
	
l24678:	
;TOUCH.C: 377: TKM1C0 = 0x00 | ((a-4)<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(920)^0380h	;volatile
	line	378
	
l24680:	
;TOUCH.C: 378: TKM1C1 = 0x10 | (0x01 << (a-4));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	movf	(StartHigeFreq@a),w
	addlw	-4
	incf	wreg,f
	goto	u7364
u7365:
	lslf	(??_StartHigeFreq+0)+0,f
u7364:
	decfsz	wreg,f
	goto	u7365
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(921)^0380h	;volatile
	line	379
	
l24682:	
;TOUCH.C: 379: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	380
	
l24684:	
;TOUCH.C: 380: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	381
	
l24686:	
;TOUCH.C: 381: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	382
	
l24688:	
;TOUCH.C: 382: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7371
	goto	u7370
u7371:
	goto	l24700
u7370:
	line	385
	
l24690:	
;TOUCH.C: 383: {
;TOUCH.C: 385: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	386
;TOUCH.C: 386: while(TKRCOV==0);
	
l17564:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7381
	goto	u7380
u7381:
	goto	l17564
u7380:
	line	387
	
l24692:	
;TOUCH.C: 387: fmd_OriginalData = (TKM116DH << 8) +TKM116DL;
	movlb 31	; select bank31
	movf	(3997)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(3996)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	388
;TOUCH.C: 388: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	goto	l24638
	line	396
	
l24700:	
;TOUCH.C: 394: else
;TOUCH.C: 395: {
;TOUCH.C: 396: TouchInit(0);
	movlw	(0)
	fcall	_TouchInit
	goto	l17589
	line	399
	
l24702:	
;TOUCH.C: 399: else if(a<12)
	movlw	(0Ch)
	subwf	(StartHigeFreq@a),w
	skipnc
	goto	u7391
	goto	u7390
u7391:
	goto	l24758
u7390:
	line	401
	
l24704:	
;TOUCH.C: 400: {
;TOUCH.C: 401: TouchInit(1);
	movlw	(01h)
	fcall	_TouchInit
	line	402
	
l24706:	
;TOUCH.C: 402: M2ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	403
	
l24708:	
;TOUCH.C: 403: TKM2C0 = 0x03| ((a-8)<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	iorlw	03h
	movlb 7	; select bank7
	movwf	(922)^0380h	;volatile
	line	404
	
l24710:	
;TOUCH.C: 404: TKM2C1 = 0x10 | (0x01 << (a-8));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	movf	(StartHigeFreq@a),w
	addlw	-8
	incf	wreg,f
	goto	u7404
u7405:
	lslf	(??_StartHigeFreq+0)+0,f
u7404:
	decfsz	wreg,f
	goto	u7405
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(923)^0380h	;volatile
	line	406
	
l24712:	
;TOUCH.C: 406: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	407
	
l24714:	
;TOUCH.C: 407: TKM3C0 = 0xC3;
	movlw	(0C3h)
	movwf	(924)^0380h	;volatile
	line	408
	
l24716:	
;TOUCH.C: 408: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	409
	
l24718:	
;TOUCH.C: 409: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7411
	goto	u7410
u7411:
	goto	l24730
u7410:
	line	411
	
l24720:	
;TOUCH.C: 410: {
;TOUCH.C: 411: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	412
;TOUCH.C: 412: while(TKRCOV==0);
	
l17571:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7421
	goto	u7420
u7421:
	goto	l17571
u7420:
	line	413
	
l24722:	
;TOUCH.C: 413: fmd_OriginalData = (TKM216DH << 8) +TKM216DL;
	movlb 31	; select bank31
	movf	(4005)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(4004)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	414
;TOUCH.C: 414: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	415
	
l24724:	
;TOUCH.C: 415: DIV();
	fcall	_DIV
	line	417
	
l24726:	
;TOUCH.C: 417: fmd_TouchDataBuff_Key[3] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+06h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+06h
	line	418
	
l24728:	
;TOUCH.C: 418: fmd_nodownsum_Key[fmd_a][3] = fmd_TouchDataBuff_Key[3];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	06h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[1]fsr1
	line	421
	
l24730:	
;TOUCH.C: 419: }
;TOUCH.C: 421: TouchInit(2);
	movlw	(02h)
	fcall	_TouchInit
	line	422
	
l24732:	
;TOUCH.C: 422: M2ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	423
	
l24734:	
;TOUCH.C: 423: TKM2C0 = 0x00 | ((a-8)<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(922)^0380h	;volatile
	line	424
	
l24736:	
;TOUCH.C: 424: TKM2C1 = 0x10 | (0x01 << (a-8));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	movf	(StartHigeFreq@a),w
	addlw	-8
	incf	wreg,f
	goto	u7434
u7435:
	lslf	(??_StartHigeFreq+0)+0,f
u7434:
	decfsz	wreg,f
	goto	u7435
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	010h
	movlb 7	; select bank7
	movwf	(923)^0380h	;volatile
	line	425
	
l24738:	
;TOUCH.C: 425: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	426
	
l24740:	
;TOUCH.C: 426: TKM3C0 = 0xC0;
	movlw	(0C0h)
	movwf	(924)^0380h	;volatile
	line	427
	
l24742:	
;TOUCH.C: 427: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	428
	
l24744:	
;TOUCH.C: 428: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7441
	goto	u7440
u7441:
	goto	l24756
u7440:
	line	430
	
l24746:	
;TOUCH.C: 429: {
;TOUCH.C: 430: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	431
;TOUCH.C: 431: while(TKRCOV==0);
	
l17575:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7451
	goto	u7450
u7451:
	goto	l17575
u7450:
	line	432
	
l24748:	
;TOUCH.C: 432: fmd_OriginalData = (TKM216DH << 8) +TKM216DL;
	movlb 31	; select bank31
	movf	(4005)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(4004)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	433
;TOUCH.C: 433: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	goto	l24638
	line	441
	
l24756:	
;TOUCH.C: 439: else
;TOUCH.C: 440: {
;TOUCH.C: 441: TouchInit(0);
	movlw	(0)
	fcall	_TouchInit
	goto	l17589
	line	446
	
l24758:	
;TOUCH.C: 444: else
;TOUCH.C: 445: {
;TOUCH.C: 446: TouchInit(1);
	movlw	(01h)
	fcall	_TouchInit
	line	447
	
l24760:	
;TOUCH.C: 447: M2ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	448
	
l24762:	
;TOUCH.C: 448: TKM2C0 = 0x03 ;
	movlw	(03h)
	movwf	(922)^0380h	;volatile
	line	449
	
l24764:	
;TOUCH.C: 449: TKM2C1 = 0x90;
	movlw	(090h)
	movwf	(923)^0380h	;volatile
	line	450
	
l24766:	
;TOUCH.C: 450: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	451
	
l24768:	
;TOUCH.C: 451: TKM3C0 = 0x03 | ((a-12)<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	iorlw	03h
	movlb 7	; select bank7
	movwf	(924)^0380h	;volatile
	line	452
	
l24770:	
;TOUCH.C: 452: TKM3C1 = 0x98 | (0x01 << (a-12));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	movf	(StartHigeFreq@a),w
	addlw	-12
	incf	wreg,f
	goto	u7464
u7465:
	lslf	(??_StartHigeFreq+0)+0,f
u7464:
	decfsz	wreg,f
	goto	u7465
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	098h
	movlb 7	; select bank7
	movwf	(925)^0380h	;volatile
	line	453
	
l24772:	
;TOUCH.C: 453: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7471
	goto	u7470
u7471:
	goto	l24784
u7470:
	line	455
	
l24774:	
;TOUCH.C: 454: {
;TOUCH.C: 455: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	456
;TOUCH.C: 456: while(TKRCOV==0);
	
l17581:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7481
	goto	u7480
u7481:
	goto	l17581
u7480:
	line	457
	
l24776:	
;TOUCH.C: 457: fmd_OriginalData = (TKM216DH << 8) +TKM216DL;
	movlb 31	; select bank31
	movf	(4005)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(81+1)
	clrf	(81)
	movlb 31	; select bank31
	movf	(4004)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(81),f
	skipnc
	incf	(81+1),f
	line	458
;TOUCH.C: 458: fmd_ReferenceData = (TKM316DH << 8) +TKM316DL;
	movlb 31	; select bank31
	movf	(4013)^0F80h,w	;volatile
	movlb 0	; select bank0
	movwf	(85+1)
	clrf	(85)
	movlb 31	; select bank31
	movf	(4012)^0F80h,w	;volatile
	movlb 0	; select bank0
	addwf	(85),f
	skipnc
	incf	(85+1),f
	line	459
	
l24778:	
;TOUCH.C: 459: DIV();
	fcall	_DIV
	line	461
	
l24780:	
;TOUCH.C: 461: fmd_TouchDataBuff_Key[3] =fmd_ResultData;
	movlb 0	; select bank0
	movf	(87+1),w
	movwf	1+(_fmd_TouchDataBuff_Key)+06h
	movf	(87),w
	movwf	0+(_fmd_TouchDataBuff_Key)+06h
	line	462
	
l24782:	
;TOUCH.C: 462: fmd_nodownsum_Key[fmd_a][3] = fmd_TouchDataBuff_Key[3];
	movf	(_fmd_a),w	;volatile
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	06h
	addlw	low 9080
	movwf	fsr1l
	movlw	high 9080
	skipnc
	movlw	high (9080)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[0]fsr1
	movf	1+(_fmd_TouchDataBuff_Key)+06h,w
	movwi	[1]fsr1
	line	465
	
l24784:	
;TOUCH.C: 463: }
;TOUCH.C: 465: TouchInit(2);
	movlw	(02h)
	fcall	_TouchInit
	line	466
	
l24786:	
;TOUCH.C: 466: M2ANALOG = 0B00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	467
	
l24788:	
;TOUCH.C: 467: TKM2C0 = 0x00 ;
	clrf	(922)^0380h	;volatile
	line	468
	
l24790:	
;TOUCH.C: 468: TKM2C1 = 0x90;
	movlw	(090h)
	movwf	(923)^0380h	;volatile
	line	469
	
l24792:	
;TOUCH.C: 469: M3ANALOG = 0B00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	470
	
l24794:	
;TOUCH.C: 470: TKM3C0 = 0x00 | ((a-12)<<6);
	movlb 0	; select bank0
	movf	(StartHigeFreq@a),w
	movwf	(??_StartHigeFreq+0)+0
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,f
	rrf	(??_StartHigeFreq+0)+0,w
	andlw	0c0h
	movlb 7	; select bank7
	movwf	(924)^0380h	;volatile
	line	471
	
l24796:	
;TOUCH.C: 471: TKM3C1 = 0x98 | (0x01 << (a-12));
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_StartHigeFreq+0)+0
	movf	(StartHigeFreq@a),w
	addlw	-12
	incf	wreg,f
	goto	u7494
u7495:
	lslf	(??_StartHigeFreq+0)+0,f
u7494:
	decfsz	wreg,f
	goto	u7495
	movf	0+(??_StartHigeFreq+0)+0,w
	iorlw	098h
	movlb 7	; select bank7
	movwf	(925)^0380h	;volatile
	line	472
	
l24798:	
;TOUCH.C: 472: if(fmd_HfreqOn == 1)
	movlb 0	; select bank0
	decf	(_fmd_HfreqOn),w
	skipz
	goto	u7501
	goto	u7500
u7501:
	goto	l24810
u7500:
	line	474
	
l24800:	
;TOUCH.C: 473: {
;TOUCH.C: 474: TKST = 1;
	movlb 7	; select bank7
	bsf	(7277/8)^0380h,(7277)&7
	line	475
;TOUCH.C: 475: while(TKRCOV==0);
	
l17585:	
	btfss	(7278/8)^0380h,(7278)&7
	goto	u7511
	goto	u7510
u7511:
	goto	l17585
u7510:
	goto	l24748
	line	484
	
l24810:	
;TOUCH.C: 482: else
;TOUCH.C: 483: {
;TOUCH.C: 484: TouchInit(0);
	movlw	(0)
	fcall	_TouchInit
	line	487
	
l17589:	
	return
	opt stack 0
GLOBAL	__end_of_StartHigeFreq
	__end_of_StartHigeFreq:
;; =============== function _StartHigeFreq ends ============

	signat	_StartHigeFreq,4216
	global	_refresh_data
psect	text1294,local,class=CODE,delta=2
global __ptext1294
__ptext1294:

;; *************** function _refresh_data *****************
;; Defined at:
;;		line 38 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/9
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_UartSetEmptyInt
;; This function is called by:
;;		_dokey
;; This function uses a non-reentrant model
;;
psect	text1294
	file	"sub.c"
	line	38
	global	__size_of_refresh_data
	__size_of_refresh_data	equ	__end_of_refresh_data-_refresh_data
	
_refresh_data:	
	opt	stack 9
; Regs used in _refresh_data: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l24582:	
;sub.c: 40: send_buf[cmd_pwr] =PwrType;
	movlb 0	; select bank0
	movf	(_PwrType),w
	movlb 1	; select bank1
	movwf	(_send_buf)^080h	;volatile
	line	41
;sub.c: 41: send_buf[cmd_mode] =ModeType;
	movlb 0	; select bank0
	movf	(_ModeType),w
	movlb 1	; select bank1
	movwf	0+(_send_buf)^080h+01h	;volatile
	line	42
;sub.c: 42: send_buf[cmd_str] =StrongType;
	movlb 0	; select bank0
	movf	(_StrongType),w
	movlb 1	; select bank1
	movwf	0+(_send_buf)^080h+02h	;volatile
	line	43
;sub.c: 43: send_buf[cmd_heat] =HeatType;
	movlb 0	; select bank0
	movf	(_HeatType),w
	movlb 1	; select bank1
	movwf	0+(_send_buf)^080h+03h	;volatile
	line	44
;sub.c: 44: send_buf[cmd_Manual] =ManualType;
	movlb 0	; select bank0
	movf	(_ManualType),w
	movlb 1	; select bank1
	movwf	0+(_send_buf)^080h+04h	;volatile
	line	45
;sub.c: 45: send_buf[cmd_Time] =TimeMin;
	movlb 0	; select bank0
	movf	(_TimeMin),w	;volatile
	movlb 1	; select bank1
	movwf	0+(_send_buf)^080h+05h	;volatile
	line	46
	
l24584:	
;sub.c: 46: SysFunFlg0.OneBits.b6 = 1;
	bsf	(_SysFunFlg0),6	;volatile
	line	47
	
l24586:	
;sub.c: 47: UartSetEmptyInt(1);
	movlw	(01h)
	fcall	_UartSetEmptyInt
	line	48
	
l12462:	
	return
	opt stack 0
GLOBAL	__end_of_refresh_data
	__end_of_refresh_data:
;; =============== function _refresh_data ends ============

	signat	_refresh_data,88
	global	_User_init
psect	text1295,local,class=CODE,delta=2
global __ptext1295
__ptext1295:

;; *************** function _User_init *****************
;; Defined at:
;;		line 665 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 16/9
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TIME_INIT
;; This function is called by:
;;		_main
;;		_SysPowerHandler
;; This function uses a non-reentrant model
;;
psect	text1295
	file	"CHIPINIT.C"
	line	665
	global	__size_of_User_init
	__size_of_User_init	equ	__end_of_User_init-_User_init
	
_User_init:	
	opt	stack 9
; Regs used in _User_init: [status,2+status,0+pclath+cstack]
	line	666
	
l24574:	
;CHIPINIT.C: 666: SysFunFlg0.AllBits = 0;
	clrf	(_SysFunFlg0)	;volatile
	line	667
;CHIPINIT.C: 667: SysFunFlg1.AllBits = 0;
	movlb 0	; select bank0
	clrf	(_SysFunFlg1)	;volatile
	line	668
;CHIPINIT.C: 668: SysFunFlg2.AllBits = 0;
	clrf	(_SysFunFlg2)	;volatile
	line	669
	
l24576:	
;CHIPINIT.C: 669: TIME_INIT();
	fcall	_TIME_INIT
	line	671
	
l24578:	
;CHIPINIT.C: 671: KeyType=NullKey;
	clrf	(_KeyType)
	line	672
	
l24580:	
;CHIPINIT.C: 672: DspIndex =DsSty;
	clrf	(_DspIndex)
	line	673
	
l7503:	
	return
	opt stack 0
GLOBAL	__end_of_User_init
	__end_of_User_init:
;; =============== function _User_init ends ============

	signat	_User_init,88
	global	_PowerKeyExec
psect	text1296,local,class=CODE,delta=2
global __ptext1296
__ptext1296:

;; *************** function _PowerKeyExec *****************
;; Defined at:
;;		line 10 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TIME_INIT
;; This function is called by:
;;		_dokey
;; This function uses a non-reentrant model
;;
psect	text1296
	file	"main.c"
	line	10
	global	__size_of_PowerKeyExec
	__size_of_PowerKeyExec	equ	__end_of_PowerKeyExec-_PowerKeyExec
	
_PowerKeyExec:	
	opt	stack 9
; Regs used in _PowerKeyExec: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l24544:	
;main.c: 11: SysFunFlg0.OneBits.b7 = ~SysFunFlg0.OneBits.b7;
	clrc
	btfss	(_SysFunFlg0),7	;volatile
	setc
	btfsc	status,0
	goto	u7211
	goto	u7210
	
u7211:
	bsf	(_SysFunFlg0),7	;volatile
	goto	u7224
u7210:
	bcf	(_SysFunFlg0),7	;volatile
u7224:
	line	13
	
l24546:	
;main.c: 13: if(SysFunFlg0.OneBits.b7)
	btfss	(_SysFunFlg0),7	;volatile
	goto	u7231
	goto	u7230
u7231:
	goto	l24566
u7230:
	line	15
	
l24548:	
;main.c: 14: {
;main.c: 15: PwrType=2;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(_PwrType)
	line	16
;main.c: 16: ModeType=2;
	movlw	(02h)
	movwf	(_ModeType)
	line	17
	
l24550:	
;main.c: 17: HeatType=1;
	clrf	(_HeatType)
	incf	(_HeatType),f
	line	18
;main.c: 18: StrongType=2;
	movlw	(02h)
	movwf	(_StrongType)
	line	19
	
l24552:	
;main.c: 19: ManualType=0;
	clrf	(_ManualType)
	line	21
	
l24554:	
;main.c: 21: LastMode=ModeType;
	movf	(_ModeType),w
	movwf	(_LastMode)
	line	22
	
l24556:	
;main.c: 22: LastManual=ManualType;
	movf	(_ManualType),w
	movwf	(_LastManual)
	line	23
	
l24558:	
;main.c: 23: if(SysFunFlg1.OneBits.b2)
	btfss	(_SysFunFlg1),2	;volatile
	goto	u7241
	goto	u7240
u7241:
	goto	l24562
u7240:
	line	25
	
l24560:	
;main.c: 24: {
;main.c: 25: TimeType=88;
	movlw	(058h)
	movlb 1	; select bank1
	movwf	(_TimeType)^080h
	line	26
;main.c: 26: DspIndex =DsTime;
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(_DspIndex)
	line	27
;main.c: 27: }
	goto	l24570
	line	30
	
l24562:	
;main.c: 28: else
;main.c: 29: {
;main.c: 30: TimeType=15;
	movlw	(0Fh)
	movlb 1	; select bank1
	movwf	(_TimeType)^080h
	line	31
	
l24564:	
;main.c: 31: DspIndex =DsMode;
	movlb 0	; select bank0
	clrf	(_DspIndex)
	incf	(_DspIndex),f
	goto	l24570
	line	37
	
l24566:	
;main.c: 35: else
;main.c: 36: {
;main.c: 37: PwrType=0;
	movlb 0	; select bank0
	clrf	(_PwrType)
	line	38
;main.c: 38: ModeType=0;
	clrf	(_ModeType)
	line	39
;main.c: 39: HeatType=0;
	clrf	(_HeatType)
	line	40
;main.c: 40: StrongType=0;
	clrf	(_StrongType)
	line	41
;main.c: 41: TimeType=0;
	movlb 1	; select bank1
	clrf	(_TimeType)^080h
	line	42
;main.c: 42: ManualType=0;
	movlb 0	; select bank0
	clrf	(_ManualType)
	line	43
;main.c: 43: DspIndex =DsSty;
	clrf	(_DspIndex)
	line	44
	
l24568:	
;main.c: 44: SysFunFlg1.OneBits.b2=0;
	bcf	(_SysFunFlg1),2	;volatile
	line	47
	
l24570:	
;main.c: 45: }
;main.c: 47: TimeMin=TimeType;
	movlb 1	; select bank1
	movf	(_TimeType)^080h,w
	movlb 0	; select bank0
	movwf	(_TimeMin)	;volatile
	line	48
	
l24572:	
;main.c: 48: TIME_INIT();
	fcall	_TIME_INIT
	line	49
	
l2483:	
	return
	opt stack 0
GLOBAL	__end_of_PowerKeyExec
	__end_of_PowerKeyExec:
;; =============== function _PowerKeyExec ends ============

	signat	_PowerKeyExec,88
	global	___bmul
psect	text1297,local,class=CODE,delta=2
global __ptext1297
__ptext1297:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "c:\program files (x86)\fmd\fmdide\data\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0h] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[BANK0h] unsigned char 
;;  product         1    1[BANK0h] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DataProcessing
;; This function uses a non-reentrant model
;;
psect	text1297
	file	"c:\program files (x86)\fmd\fmdide\data\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 7
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l24468:	
	clrf	(___bmul@product)
	line	7
	
l24470:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u7081
	goto	u7080
u7081:
	goto	l24474
u7080:
	line	8
	
l24472:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l24474:	
	lslf	(___bmul@multiplicand),f
	line	10
	
l24476:	
	lsrf	(___bmul@multiplier),f
	line	11
	
l24478:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u7091
	goto	u7090
u7091:
	goto	l24470
u7090:
	line	12
	
l24480:	
	movf	(___bmul@product),w
	line	13
	
l19457:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_HighFreqCo
psect	text1298,local,class=CODE,delta=2
global __ptext1298
__ptext1298:

;; *************** function _HighFreqCo *****************
;; Defined at:
;;		line 1017 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[BANK0h] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DataProcessing
;; This function uses a non-reentrant model
;;
psect	text1298
	file	"TOUCH.C"
	line	1017
	global	__size_of_HighFreqCo
	__size_of_HighFreqCo	equ	__end_of_HighFreqCo-_HighFreqCo
	
_HighFreqCo:	
	opt	stack 7
; Regs used in _HighFreqCo: [wreg-status,0]
;HighFreqCo@a stored from wreg
	movlb 0	; select bank0
	movwf	(HighFreqCo@a)
	line	1018
	
l24448:	
;TOUCH.C: 1018: if((fmd_nodownavrdata_Key[a][3]>=fmd_TouchDataBuff_Key[3]))
	movf	(HighFreqCo@a),w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	06h
	addlw	low 8960
	movwf	fsr1l
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	(fsr1l)+1
	moviw	[0]fsr1
	movwf	(??_HighFreqCo+0)+0
	moviw	[1]fsr1
	movwf	(??_HighFreqCo+0)+0+1
	movf	1+(_fmd_TouchDataBuff_Key)+06h,w
	subwf	1+(??_HighFreqCo+0)+0,w
	skipz
	goto	u7045
	movf	0+(_fmd_TouchDataBuff_Key)+06h,w
	subwf	0+(??_HighFreqCo+0)+0,w
u7045:
	skipc
	goto	u7041
	goto	u7040
u7041:
	goto	l24456
u7040:
	line	1020
	
l24450:	
;TOUCH.C: 1019: {
;TOUCH.C: 1020: if((fmd_nodownavrdata_Key[a][3] - fmd_TouchDataBuff_Key[3])<255)
	movlw	(06h)
	addlw	_fmd_TouchDataBuff_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(HighFreqCo@a),w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	06h
	addlw	low 8960
	movwf	fsr0l
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	(fsr0l)+1
	moviw	[0]fsr1
	subwf	indf0,w
	movwf	(??_HighFreqCo+0)+0
	addfsr	fsr0,1
	moviw	[1]fsr1
	subwfb	indf0,w
	movwf	(??_HighFreqCo+0)+0+1
	movlw	high(0FFh)
	subwf	1+(??_HighFreqCo+0)+0,w
	movlw	low(0FFh)
	skipnz
	subwf	0+(??_HighFreqCo+0)+0,w
	skipnc
	goto	u7051
	goto	u7050
u7051:
	goto	l24454
u7050:
	line	1022
	
l24452:	
;TOUCH.C: 1021: {
;TOUCH.C: 1022: fmd_KeyDValue_Key[3]= fmd_nodownavrdata_Key[a][3] - fmd_TouchDataBuff_Key[3];
	movf	(HighFreqCo@a),w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	06h
	addlw	low 8960
	movwf	fsr1l
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+06h,w
	subwf	indf1,w
	movlb 1	; select bank1
	movwf	0+(_fmd_KeyDValue_Key)^080h+03h
	line	1023
;TOUCH.C: 1023: }
	goto	l24458
	line	1026
	
l24454:	
;TOUCH.C: 1024: else
;TOUCH.C: 1025: {
;TOUCH.C: 1026: fmd_KeyDValue_Key[3]=255;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	0+(_fmd_KeyDValue_Key)^080h+03h
	goto	l24458
	line	1031
	
l24456:	
;TOUCH.C: 1029: else
;TOUCH.C: 1030: {
;TOUCH.C: 1031: fmd_KeyDValue_Key[3]=0;
	movlb 1	; select bank1
	clrf	0+(_fmd_KeyDValue_Key)^080h+03h
	line	1034
	
l24458:	
;TOUCH.C: 1032: }
;TOUCH.C: 1034: if((fmd_nodownavrdata_Key[a][2]>=fmd_TouchDataBuff_Key[2]))
	movlb 0	; select bank0
	movf	(HighFreqCo@a),w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	04h
	addlw	low 8960
	movwf	fsr1l
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	(fsr1l)+1
	moviw	[0]fsr1
	movwf	(??_HighFreqCo+0)+0
	moviw	[1]fsr1
	movwf	(??_HighFreqCo+0)+0+1
	movf	1+(_fmd_TouchDataBuff_Key)+04h,w
	subwf	1+(??_HighFreqCo+0)+0,w
	skipz
	goto	u7065
	movf	0+(_fmd_TouchDataBuff_Key)+04h,w
	subwf	0+(??_HighFreqCo+0)+0,w
u7065:
	skipc
	goto	u7061
	goto	u7060
u7061:
	goto	l24466
u7060:
	line	1036
	
l24460:	
;TOUCH.C: 1035: {
;TOUCH.C: 1036: if((fmd_nodownavrdata_Key[a][2] - fmd_TouchDataBuff_Key[2])<255)
	movlw	(04h)
	addlw	_fmd_TouchDataBuff_Key&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(HighFreqCo@a),w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	04h
	addlw	low 8960
	movwf	fsr0l
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	(fsr0l)+1
	moviw	[0]fsr1
	subwf	indf0,w
	movwf	(??_HighFreqCo+0)+0
	addfsr	fsr0,1
	moviw	[1]fsr1
	subwfb	indf0,w
	movwf	(??_HighFreqCo+0)+0+1
	movlw	high(0FFh)
	subwf	1+(??_HighFreqCo+0)+0,w
	movlw	low(0FFh)
	skipnz
	subwf	0+(??_HighFreqCo+0)+0,w
	skipnc
	goto	u7071
	goto	u7070
u7071:
	goto	l24464
u7070:
	line	1038
	
l24462:	
;TOUCH.C: 1037: {
;TOUCH.C: 1038: fmd_KeyDValue_Key[2]= fmd_nodownavrdata_Key[a][2] - fmd_TouchDataBuff_Key[2];
	movf	(HighFreqCo@a),w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addlw	04h
	addlw	low 8960
	movwf	fsr1l
	movlw	high 8960
	skipnc
	movlw	high (8960)+1
	movwf	(fsr1l)+1
	movf	0+(_fmd_TouchDataBuff_Key)+04h,w
	subwf	indf1,w
	movlb 1	; select bank1
	movwf	0+(_fmd_KeyDValue_Key)^080h+02h
	line	1039
;TOUCH.C: 1039: }
	goto	l17706
	line	1042
	
l24464:	
;TOUCH.C: 1040: else
;TOUCH.C: 1041: {
;TOUCH.C: 1042: fmd_KeyDValue_Key[2]=255;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	0+(_fmd_KeyDValue_Key)^080h+02h
	goto	l17706
	line	1047
	
l24466:	
;TOUCH.C: 1045: else
;TOUCH.C: 1046: {
;TOUCH.C: 1047: fmd_KeyDValue_Key[2]=0;
	movlb 1	; select bank1
	clrf	0+(_fmd_KeyDValue_Key)^080h+02h
	line	1049
	
l17706:	
	return
	opt stack 0
GLOBAL	__end_of_HighFreqCo
	__end_of_HighFreqCo:
;; =============== function _HighFreqCo ends ============

	signat	_HighFreqCo,4216
	global	_MxSet013
psect	text1299,local,class=CODE,delta=2
global __ptext1299
__ptext1299:

;; *************** function _MxSet013 *****************
;; Defined at:
;;		line 293 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[BANK0h] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/7
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadTouchData
;; This function uses a non-reentrant model
;;
psect	text1299
	file	"TOUCH.C"
	line	293
	global	__size_of_MxSet013
	__size_of_MxSet013	equ	__end_of_MxSet013-_MxSet013
	
_MxSet013:	
	opt	stack 8
; Regs used in _MxSet013: [wreg]
;MxSet013@a stored from wreg
	movlb 0	; select bank0
	movwf	(MxSet013@a)
	line	294
	
l24446:	
;TOUCH.C: 294: M0ANALOG = a;
	movf	(MxSet013@a),w
	movlb 7	; select bank7
	movwf	(914)^0380h	;volatile
	line	295
;TOUCH.C: 295: M1ANALOG = a;
	movlb 0	; select bank0
	movf	(MxSet013@a),w
	movlb 7	; select bank7
	movwf	(915)^0380h	;volatile
	line	296
;TOUCH.C: 296: M3ANALOG = a;
	movlb 0	; select bank0
	movf	(MxSet013@a),w
	movlb 7	; select bank7
	movwf	(917)^0380h	;volatile
	line	297
	movlw	(010h)
	movwf	(919)^0380h	;volatile
	line	298
	movlw	(018h)
	movwf	(921)^0380h	;volatile
	line	299
;TOUCH.C: 299: TKM3C1 = 0x18;
	movlw	(018h)
	movwf	(925)^0380h	;volatile
	line	300
	
l17544:	
	return
	opt stack 0
GLOBAL	__end_of_MxSet013
	__end_of_MxSet013:
;; =============== function _MxSet013 ends ============

	signat	_MxSet013,4216
	global	_TouchInit
psect	text1300,local,class=CODE,delta=2
global __ptext1300
__ptext1300:

;; *************** function _TouchInit *****************
;; Defined at:
;;		line 199 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    0[BANK0h] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 18/7
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StartHigeFreq
;;		_ReadTouchData
;; This function uses a non-reentrant model
;;
psect	text1300
	file	"TOUCH.C"
	line	199
	global	__size_of_TouchInit
	__size_of_TouchInit	equ	__end_of_TouchInit-_TouchInit
	
_TouchInit:	
	opt	stack 6
; Regs used in _TouchInit: [wreg+status,2]
;TouchInit@Time stored from wreg
	movlb 0	; select bank0
	movwf	(TouchInit@Time)
	line	200
	
l24416:	
;TOUCH.C: 200: TKTMR = 255 - Time;
	comf	(TouchInit@Time),w
	movlb 7	; select bank7
	movwf	(908)^0380h	;volatile
	line	203
	
l24418:	
;TOUCH.C: 203: TKC0 = 0x00;
	clrf	(909)^0380h	;volatile
	line	208
;TOUCH.C: 208: TKC1 = 0x03;
	movlw	(03h)
	movwf	(910)^0380h	;volatile
	line	210
	
l24420:	
;TOUCH.C: 210: M0ANALOG = 0;
	clrf	(914)^0380h	;volatile
	line	211
	
l24422:	
;TOUCH.C: 211: TKM0C0 = 0;
	clrf	(918)^0380h	;volatile
	line	212
	
l24424:	
;TOUCH.C: 212: TKM0C1 = 0;
	clrf	(919)^0380h	;volatile
	line	213
	
l24426:	
;TOUCH.C: 213: M1ANALOG = 0;
	clrf	(915)^0380h	;volatile
	line	214
	
l24428:	
;TOUCH.C: 214: TKM1C0 = 0;
	clrf	(920)^0380h	;volatile
	line	215
	
l24430:	
;TOUCH.C: 215: TKM1C1 = 0;
	clrf	(921)^0380h	;volatile
	line	216
	
l24432:	
;TOUCH.C: 216: M2ANALOG = 0;
	clrf	(916)^0380h	;volatile
	line	217
	
l24434:	
;TOUCH.C: 217: TKM2C0 = 0;
	clrf	(922)^0380h	;volatile
	line	218
	
l24436:	
;TOUCH.C: 218: TKM2C1 = 0;
	clrf	(923)^0380h	;volatile
	line	219
	
l24438:	
;TOUCH.C: 219: M3ANALOG = 0;
	clrf	(917)^0380h	;volatile
	line	220
	
l24440:	
;TOUCH.C: 220: TKM3C0 = 0;
	clrf	(924)^0380h	;volatile
	line	221
	
l24442:	
;TOUCH.C: 221: TKM3C1 = 0;
	clrf	(925)^0380h	;volatile
	line	222
	
l24444:	
;TOUCH.C: 222: PCKEN = PCKEN | 0x80;
	movlb 1	; select bank1
	bsf	(154)^080h+(7/8),(7)&7	;volatile
	line	223
	
l17520:	
	return
	opt stack 0
GLOBAL	__end_of_TouchInit
	__end_of_TouchInit:
;; =============== function _TouchInit ends ============

	signat	_TouchInit,4216
	global	_DIV
psect	text1301,local,class=CODE,delta=2
global __ptext1301
__ptext1301:

;; *************** function _DIV *****************
;; Defined at:
;;		line 110 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StartHigeFreq
;;		_ReadTouchData
;;		_DataProcessing
;; This function uses a non-reentrant model
;;
psect	text1301
	file	"TOUCH.C"
	line	110
	global	__size_of_DIV
	__size_of_DIV	equ	__end_of_DIV-_DIV
	
_DIV:	
	opt	stack 7
; Regs used in _DIV: []
	line	114
	
l24414:	
# 114 "TOUCH.C"
   CLRF M10 ;#
	line	115
# 115 "TOUCH.C"
  CLRF SUML ;#
	line	116
# 116 "TOUCH.C"
  CLRF SUMM ;#
	line	117
# 117 "TOUCH.C"
  CLRF SUMH ;#
	line	118
# 118 "TOUCH.C"
  CLRF M00 ;#
	line	119
# 119 "TOUCH.C"
  BCF _STATUS,0 ;#
	line	120
# 120 "TOUCH.C"
  RLF M00,f ;#
	line	121
# 121 "TOUCH.C"
  RLF M01,f ;#
	line	122
# 122 "TOUCH.C"
  RLF M02,f ;#
	line	124
# 124 "TOUCH.C"
  BCF _STATUS,0 ;#
	line	125
# 125 "TOUCH.C"
  RLF M00,f ;#
	line	126
# 126 "TOUCH.C"
  RLF M01,f ;#
	line	127
# 127 "TOUCH.C"
  RLF M02,f ;#
	line	129
# 129 "TOUCH.C"
  BCF _STATUS,0 ;#
	line	130
# 130 "TOUCH.C"
  RLF M00,f ;#
	line	131
# 131 "TOUCH.C"
  RLF M01,f ;#
	line	132
# 132 "TOUCH.C"
  RLF M02,f ;#
	line	134
# 134 "TOUCH.C"
        MOVF M11,w ;#
	line	135
# 135 "TOUCH.C"
  IORWF M12,w ;#
	line	136
# 136 "TOUCH.C"
  BTFSC _STATUS,2 ;#
	line	137
# 137 "TOUCH.C"
        GOTO ENDDIV ;#
	line	138
# 138 "TOUCH.C"
  MOVLW 08H ;#
	line	139
# 139 "TOUCH.C"
  MOVWF COUNT ;#
	line	141
# 141 "TOUCH.C"
  Div_02: ;#
	line	142
# 142 "TOUCH.C"
  INCF COUNT,f ;#
	line	143
# 143 "TOUCH.C"
     BTFSC M12,7 ;#
	line	144
# 144 "TOUCH.C"
  GOTO Div_03 ;#
	line	145
# 145 "TOUCH.C"
  BCF _STATUS,0 ;#
	line	146
# 146 "TOUCH.C"
  RLF M10,f ;#
	line	147
# 147 "TOUCH.C"
  RLF M11,f ;#
	line	148
# 148 "TOUCH.C"
  RLF M12,f ;#
	line	149
# 149 "TOUCH.C"
  GOTO Div_02 ;#
	line	151
# 151 "TOUCH.C"
  Div_03: ;#
	line	152
# 152 "TOUCH.C"
  BCF _STATUS,0 ;#
	line	153
# 153 "TOUCH.C"
  RLF SUML,f ;#
	line	154
# 154 "TOUCH.C"
  RLF SUMM,f ;#
	line	155
# 155 "TOUCH.C"
  RLF SUMH,f ;#
	line	157
# 157 "TOUCH.C"
  MOVF M12,w ;#
	line	158
# 158 "TOUCH.C"
  SUBWF M02,w ;#
	line	159
# 159 "TOUCH.C"
  BTFSS _STATUS,2 ;#
	line	160
# 160 "TOUCH.C"
  GOTO Div_04 ; ;#
	line	161
# 161 "TOUCH.C"
  MOVF M11,w ;#
	line	162
# 162 "TOUCH.C"
  SUBWF M01,w ;#
	line	163
# 163 "TOUCH.C"
  BTFSS _STATUS,2 ;#
	line	164
# 164 "TOUCH.C"
  GOTO Div_04 ;#
	line	165
# 165 "TOUCH.C"
  MOVF M10,w ;#
	line	166
# 166 "TOUCH.C"
  SUBWF M00,w ;#
	line	168
# 168 "TOUCH.C"
    Div_04: ;#
	line	169
# 169 "TOUCH.C"
  BTFSS _STATUS,0 ;#
	line	170
# 170 "TOUCH.C"
  GOTO Div_05 ;#
	line	172
# 172 "TOUCH.C"
  MOVF M10,w ;#
	line	173
# 173 "TOUCH.C"
  SUBWF M00,f ;#
	line	174
# 174 "TOUCH.C"
  MOVF M11,w ;#
	line	175
# 175 "TOUCH.C"
  BTFSS _STATUS,0 ;#
	line	176
# 176 "TOUCH.C"
  INCFSZ M11,w ;#
	line	177
# 177 "TOUCH.C"
  SUBWF M01,f ;#
	line	178
# 178 "TOUCH.C"
  MOVF M12,w ;#
	line	179
# 179 "TOUCH.C"
  BTFSS _STATUS,0 ;#
	line	180
# 180 "TOUCH.C"
  INCFSZ M12,w ;#
	line	181
# 181 "TOUCH.C"
  SUBWF M02,f ;#
	line	183
# 183 "TOUCH.C"
  BSF SUML,0 ;#
	line	185
# 185 "TOUCH.C"
    Div_05: ;#
	line	186
# 186 "TOUCH.C"
  BCF _STATUS,0 ;#
	line	188
# 188 "TOUCH.C"
    RRF M12,f ;#
	line	189
# 189 "TOUCH.C"
  RRF M11,f ;#
	line	190
# 190 "TOUCH.C"
  RRF M10,f ;#
	line	191
# 191 "TOUCH.C"
  DECfSZ COUNT,f ;#
	line	192
# 192 "TOUCH.C"
  GOTO Div_03 ;#
	line	194
# 194 "TOUCH.C"
          ENDDIV: ;#
psect	text1301
	line	196
	
l17517:	
	return
	opt stack 0
GLOBAL	__end_of_DIV
	__end_of_DIV:
;; =============== function _DIV ends ============

	signat	_DIV,88
	global	_UartSetEmptyInt
psect	text1302,local,class=CODE,delta=2
global __ptext1302
__ptext1302:

;; *************** function _UartSetEmptyInt *****************
;; Defined at:
;;		line 45 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    0[BANK0h] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/9
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refresh_data
;; This function uses a non-reentrant model
;;
psect	text1302
	file	"uart.c"
	line	45
	global	__size_of_UartSetEmptyInt
	__size_of_UartSetEmptyInt	equ	__end_of_UartSetEmptyInt-_UartSetEmptyInt
	
_UartSetEmptyInt:	
	opt	stack 9
; Regs used in _UartSetEmptyInt: [wreg]
;UartSetEmptyInt@value stored from wreg
	movlb 0	; select bank0
	movwf	(UartSetEmptyInt@value)
	line	46
	
l24352:	
;uart.c: 46: URTE = value;
	btfsc	(UartSetEmptyInt@value),0
	goto	u7011
	goto	u7010
	
u7011:
	movlb 9	; select bank9
	bsf	(9329/8)^0480h,(9329)&7
	goto	u7024
u7010:
	movlb 9	; select bank9
	bcf	(9329/8)^0480h,(9329)&7
u7024:
	line	47
	
l15036:	
	return
	opt stack 0
GLOBAL	__end_of_UartSetEmptyInt
	__end_of_UartSetEmptyInt:
;; =============== function _UartSetEmptyInt ends ============

	signat	_UartSetEmptyInt,4216
	global	_ChkTimeEventStatus
psect	text1303,local,class=CODE,delta=2
global __ptext1303
__ptext1303:

;; *************** function _ChkTimeEventStatus *****************
;; Defined at:
;;		line 326 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1303
	file	"sub.c"
	line	326
	global	__size_of_ChkTimeEventStatus
	__size_of_ChkTimeEventStatus	equ	__end_of_ChkTimeEventStatus-_ChkTimeEventStatus
	
_ChkTimeEventStatus:	
	opt	stack 11
; Regs used in _ChkTimeEventStatus: [wreg+status,2]
	line	327
	
l24138:	
;sub.c: 327: if(dsp_100ms)
	movf	(_dsp_100ms),w
	skipz
	goto	u6640
	goto	l12596
u6640:
	line	329
	
l24140:	
;sub.c: 328: {
;sub.c: 329: if(--dsp_100ms==0)
	decfsz	(_dsp_100ms),f
	goto	u6651
	goto	u6650
u6651:
	goto	l12596
u6650:
	line	331
	
l24142:	
;sub.c: 330: {
;sub.c: 331: if(SysFunFlg0.OneBits.b7)
	btfss	(_SysFunFlg0),7	;volatile
	goto	u6661
	goto	u6660
u6661:
	goto	l24146
u6660:
	line	332
	
l24144:	
;sub.c: 332: DspIndex=DsTime;
	movlw	(05h)
	movwf	(_DspIndex)
	goto	l12596
	line	335
	
l24146:	
;sub.c: 334: else
;sub.c: 335: DspIndex=DsSty;
	clrf	(_DspIndex)
	line	338
	
l12596:	
	return
	opt stack 0
GLOBAL	__end_of_ChkTimeEventStatus
	__end_of_ChkTimeEventStatus:
;; =============== function _ChkTimeEventStatus ends ============

	signat	_ChkTimeEventStatus,88
	global	_RxData_Drive
psect	text1304,local,class=CODE,delta=2
global __ptext1304
__ptext1304:

;; *************** function _RxData_Drive *****************
;; Defined at:
;;		line 60 in file "rx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1304
	file	"rx.c"
	line	60
	global	__size_of_RxData_Drive
	__size_of_RxData_Drive	equ	__end_of_RxData_Drive-_RxData_Drive
	
_RxData_Drive:	
	opt	stack 11
; Regs used in _RxData_Drive: [wreg+status,2+status,0]
	line	61
	
l24112:	
;rx.c: 61: if(RxData==0)return;
	movlb 0	; select bank0
	movf	(_RxData),f
	skipz
	goto	u6581
	goto	u6580
u6581:
	goto	l24116
u6580:
	goto	l9960
	line	63
	
l24116:	
;rx.c: 63: if(RxData==0x7f)
	movf	(_RxData),w
	xorlw	07Fh&0ffh
	skipz
	goto	u6591
	goto	u6590
u6591:
	goto	l24120
u6590:
	line	65
	
l24118:	
;rx.c: 64: {
;rx.c: 65: KeyType=PowerKey;
	clrf	(_KeyType)
	incf	(_KeyType),f
	line	66
;rx.c: 66: }
	goto	l24136
	line	67
	
l24120:	
;rx.c: 67: else if(RxData==0xd7)
	movf	(_RxData),w
	xorlw	0D7h&0ffh
	skipz
	goto	u6601
	goto	u6600
u6601:
	goto	l24124
u6600:
	line	69
	
l24122:	
;rx.c: 68: {
;rx.c: 69: KeyType=ModeKey;
	movlw	(02h)
	movwf	(_KeyType)
	line	70
;rx.c: 70: }
	goto	l24136
	line	71
	
l24124:	
;rx.c: 71: else if(RxData==0x57)
	movf	(_RxData),w
	xorlw	057h&0ffh
	skipz
	goto	u6611
	goto	u6610
u6611:
	goto	l24128
u6610:
	line	73
	
l24126:	
;rx.c: 72: {
;rx.c: 73: KeyType=StrongKey;
	movlw	(05h)
	movwf	(_KeyType)
	line	74
;rx.c: 74: }
	goto	l24136
	line	75
	
l24128:	
;rx.c: 75: else if(RxData==0xaf)
	movf	(_RxData),w
	xorlw	0AFh&0ffh
	skipz
	goto	u6621
	goto	u6620
u6621:
	goto	l24132
u6620:
	line	77
	
l24130:	
;rx.c: 76: {
;rx.c: 77: KeyType=ManualKey;
	movlw	(06h)
	movwf	(_KeyType)
	line	78
;rx.c: 78: }
	goto	l24136
	line	79
	
l24132:	
;rx.c: 79: else if(RxData==0x8f)
	movf	(_RxData),w
	xorlw	08Fh&0ffh
	skipz
	goto	u6631
	goto	u6630
u6631:
	goto	l9964
u6630:
	line	81
	
l24134:	
;rx.c: 80: {
;rx.c: 81: KeyType=HeatKey;
	movlw	(04h)
	movwf	(_KeyType)
	goto	l24136
	line	84
	
l9964:	
	
l24136:	
;rx.c: 82: }
;rx.c: 84: RxData=0;
	clrf	(_RxData)
	line	85
	
l9960:	
	return
	opt stack 0
GLOBAL	__end_of_RxData_Drive
	__end_of_RxData_Drive:
;; =============== function _RxData_Drive ends ============

	signat	_RxData_Drive,88
	global	_Display_init
psect	text1305,local,class=CODE,delta=2
global __ptext1305
__ptext1305:

;; *************** function _Display_init *****************
;; Defined at:
;;		line 676 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/2
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1305
	file	"CHIPINIT.C"
	line	676
	global	__size_of_Display_init
	__size_of_Display_init	equ	__end_of_Display_init-_Display_init
	
_Display_init:	
	opt	stack 11
; Regs used in _Display_init: [wreg+status,2+status,0]
	line	691
	
l24108:	
;CHIPINIT.C: 691: {LATB1=0;LATD1=0;LATC1=0;LATC0=0; LATA0=0;LATB0=0;LATB3=0; LATA4=0;LATD2=0;LATA1=0;LATD3=0;}
	movlb 2	; select bank2
	bcf	(2153/8)^0100h,(2153)&7
	bcf	(2169/8)^0100h,(2169)&7
	bcf	(2161/8)^0100h,(2161)&7
	bcf	(2160/8)^0100h,(2160)&7
	bcf	(2144/8)^0100h,(2144)&7
	bcf	(2152/8)^0100h,(2152)&7
	bcf	(2155/8)^0100h,(2155)&7
	bcf	(2148/8)^0100h,(2148)&7
	bcf	(2170/8)^0100h,(2170)&7
	bcf	(2145/8)^0100h,(2145)&7
	bcf	(2171/8)^0100h,(2171)&7
	line	692
	
l24110:	
;CHIPINIT.C: 692: INTCON |= 0B11000000;
	movlw	(0C0h)
	iorwf	(11),f	;volatile
	line	693
	
l7506:	
	return
	opt stack 0
GLOBAL	__end_of_Display_init
	__end_of_Display_init:
;; =============== function _Display_init ends ============

	signat	_Display_init,88
	global	_UART_INITIAL
psect	text1306,local,class=CODE,delta=2
global __ptext1306
__ptext1306:

;; *************** function _UART_INITIAL *****************
;; Defined at:
;;		line 589 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/9
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1306
	file	"CHIPINIT.C"
	line	589
	global	__size_of_UART_INITIAL
	__size_of_UART_INITIAL	equ	__end_of_UART_INITIAL-_UART_INITIAL
	
_UART_INITIAL:	
	opt	stack 11
; Regs used in _UART_INITIAL: [wreg+status,2]
	line	590
	
l24094:	
;CHIPINIT.C: 590: PCKEN |=0B00100000;
	bsf	(154)^080h+(5/8),(5)&7	;volatile
	line	592
	
l24096:	
;CHIPINIT.C: 592: URIER =0B00000000;
	movlb 9	; select bank9
	clrf	(1166)^0480h	;volatile
	line	593
	
l24098:	
;CHIPINIT.C: 593: URLCR =0B00000001;
	movlw	(01h)
	movwf	(1167)^0480h	;volatile
	line	594
	
l24100:	
;CHIPINIT.C: 594: URMCR =0B00011000;
	movlw	(018h)
	movwf	(1169)^0480h	;volatile
	line	597
	
l24102:	
;CHIPINIT.C: 597: URDLL =52;
	movlw	(034h)
	movwf	(1172)^0480h	;volatile
	line	598
	
l24104:	
;CHIPINIT.C: 598: URDLH =0;
	clrf	(1173)^0480h	;volatile
	line	599
	
l24106:	
;CHIPINIT.C: 599: TCF=1;
	bsf	(9440/8)^0480h,(9440)&7
	line	604
	
l7475:	
	return
	opt stack 0
GLOBAL	__end_of_UART_INITIAL
	__end_of_UART_INITIAL:
;; =============== function _UART_INITIAL ends ============

	signat	_UART_INITIAL,88
	global	_WDT_INITIAL
psect	text1307,local,class=CODE,delta=2
global __ptext1307
__ptext1307:

;; *************** function _WDT_INITIAL *****************
;; Defined at:
;;		line 44 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 1F/1
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1307
	file	"CHIPINIT.C"
	line	44
	global	__size_of_WDT_INITIAL
	__size_of_WDT_INITIAL	equ	__end_of_WDT_INITIAL-_WDT_INITIAL
	
_WDT_INITIAL:	
	opt	stack 11
; Regs used in _WDT_INITIAL: [wreg+status,2]
	line	45
	
l24088:	
# 45 "CHIPINIT.C"
clrwdt ;#
psect	text1307
	line	46
	
l24090:	
;CHIPINIT.C: 46: MISC0 = 0B00000000;
	movlb 2	; select bank2
	clrf	(284)^0100h	;volatile
	line	47
	
l24092:	
;CHIPINIT.C: 47: WDTCON = 0B00001011;
	movlw	(0Bh)
	movlb 1	; select bank1
	movwf	(151)^080h	;volatile
	line	49
	
l7449:	
	return
	opt stack 0
GLOBAL	__end_of_WDT_INITIAL
	__end_of_WDT_INITIAL:
;; =============== function _WDT_INITIAL ends ============

	signat	_WDT_INITIAL,88
	global	_Time4Initial
psect	text1308,local,class=CODE,delta=2
global __ptext1308
__ptext1308:

;; *************** function _Time4Initial *****************
;; Defined at:
;;		line 496 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/6
;;		On exit  : 17F/2
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1308
	file	"CHIPINIT.C"
	line	496
	global	__size_of_Time4Initial
	__size_of_Time4Initial	equ	__end_of_Time4Initial-_Time4Initial
	
_Time4Initial:	
	opt	stack 11
; Regs used in _Time4Initial: [wreg+status,2]
	line	497
	
l24072:	
;CHIPINIT.C: 497: PCKEN |=0B00001000;
	movlb 1	; select bank1
	bsf	(154)^080h+(3/8),(3)&7	;volatile
	line	501
	
l24074:	
;CHIPINIT.C: 501: TIM4CR1 =0B00000101;
	movlw	(05h)
	movlb 2	; select bank2
	movwf	(273)^0100h	;volatile
	line	532
;CHIPINIT.C: 532: TIM4IER =0B00000001;
	movlw	(01h)
	movwf	(274)^0100h	;volatile
	line	535
	
l24076:	
;CHIPINIT.C: 535: TIM4SR =0B00000000;
	clrf	(275)^0100h	;volatile
	line	544
	
l24078:	
;CHIPINIT.C: 544: TIM4EGR =0B00000000;
	clrf	(276)^0100h	;volatile
	line	549
	
l24080:	
;CHIPINIT.C: 549: TIM4CNTR=0;
	clrf	(277)^0100h	;volatile
	line	551
	
l24082:	
;CHIPINIT.C: 551: TIM4PSCR=0B00000110;
	movlw	(06h)
	movwf	(278)^0100h	;volatile
	line	555
	
l24084:	
;CHIPINIT.C: 555: TIM4ARR =124;
	movlw	(07Ch)
	movwf	(279)^0100h	;volatile
	line	556
	
l24086:	
;CHIPINIT.C: 556: TIM4ARR =22;
	movlw	(016h)
	movwf	(279)^0100h	;volatile
	line	561
	
l7469:	
	return
	opt stack 0
GLOBAL	__end_of_Time4Initial
	__end_of_Time4Initial:
;; =============== function _Time4Initial ends ============

	signat	_Time4Initial,88
	global	_Time2Initial
psect	text1309,local,class=CODE,delta=2
global __ptext1309
__ptext1309:

;; *************** function _Time2Initial *****************
;; Defined at:
;;		line 476 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/6
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1309
	file	"CHIPINIT.C"
	line	476
	global	__size_of_Time2Initial
	__size_of_Time2Initial	equ	__end_of_Time2Initial-_Time2Initial
	
_Time2Initial:	
	opt	stack 11
; Regs used in _Time2Initial: [wreg]
	line	477
	
l24066:	
;CHIPINIT.C: 477: PCKEN |=0B00000100;
	movlb 1	; select bank1
	bsf	(154)^080h+(2/8),(2)&7	;volatile
	line	478
	
l24068:	
;CHIPINIT.C: 478: CKOCON=0B00100000;
	movlw	(020h)
	movwf	(149)^080h	;volatile
	line	479
	
l24070:	
;CHIPINIT.C: 479: TCKSRC|=0B00010000;
	movlb 6	; select bank6
	bsf	(799)^0300h+(4/8),(4)&7	;volatile
	line	480
;CHIPINIT.C: 480: TIM2CR1 =0B10000101;
	movlw	(085h)
	movwf	(780)^0300h	;volatile
	line	481
;CHIPINIT.C: 481: TIM2IER =0B00000001;
	movlw	(01h)
	movwf	(781)^0300h	;volatile
	line	484
;CHIPINIT.C: 484: TIM2ARRH =0x06;
	movlw	(06h)
	movwf	(793)^0300h	;volatile
	line	485
;CHIPINIT.C: 485: TIM2ARRL =0x40;
	movlw	(040h)
	movwf	(794)^0300h	;volatile
	line	487
	
l7466:	
	return
	opt stack 0
GLOBAL	__end_of_Time2Initial
	__end_of_Time2Initial:
;; =============== function _Time2Initial ends ============

	signat	_Time2Initial,88
	global	_TouchInital
psect	text1310,local,class=CODE,delta=2
global __ptext1310
__ptext1310:

;; *************** function _TouchInital *****************
;; Defined at:
;;		line 226 in file "TOUCH.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 17F/3
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1310
	file	"TOUCH.C"
	line	226
	global	__size_of_TouchInital
	__size_of_TouchInital	equ	__end_of_TouchInital-_TouchInital
	
_TouchInital:	
	opt	stack 11
; Regs used in _TouchInital: [wreg-status,0+pclath]
	line	227
	
l23998:	
	line	240
	
l17529:	
	line	242
;TOUCH.C: 242: TRISB7 =1;
	movlb 1	; select bank1
	bsf	(1135/8)^080h,(1135)&7
	line	248
	
l17533:	
	line	250
;TOUCH.C: 250: TRISB2 =1;
	bsf	(1130/8)^080h,(1130)&7
	
l17534:	
	line	252
;TOUCH.C: 252: TRISC4 =1;
	bsf	(1140/8)^080h,(1140)&7
	
l17535:	
	line	254
;TOUCH.C: 254: TRISC5 =1;
	bsf	(1141/8)^080h,(1141)&7
	
l17536:	
	line	256
;TOUCH.C: 256: TRISC6 =1;
	bsf	(1142/8)^080h,(1142)&7
	
l17537:	
	line	257
;TOUCH.C: 257: TRISC7 =1;
	bsf	(1143/8)^080h,(1143)&7
	line	259
	
l24020:	
;TOUCH.C: 259: fmd_Startgx = 0;
	clrf	(_fmd_Startgx)^080h
	line	260
	
l24022:	
;TOUCH.C: 260: fmd_updataFlag = 2;
	movlw	(02h)
	movwf	(_fmd_updataFlag)^080h
	line	261
	
l24024:	
;TOUCH.C: 261: fmd_UpTouchCount = 400;
	movlw	low(0190h)
	movwf	(_fmd_UpTouchCount)^080h
	movlw	high(0190h)
	movwf	((_fmd_UpTouchCount)^080h)+1
	line	262
	
l24026:	
;TOUCH.C: 262: fmd_DownTouchCount = 600;
	movlw	low(0258h)
	movlb 0	; select bank0
	movwf	(_fmd_DownTouchCount)
	movlw	high(0258h)
	movwf	((_fmd_DownTouchCount))+1
	line	263
	
l24028:	
;TOUCH.C: 263: fmd_TestCount = 0;
	movlb 1	; select bank1
	clrf	(_fmd_TestCount)^080h
	file	"touch.h"
	line	306
	
l24030:	
	clrf	(_fmd_u)	;volatile
	file	"TOUCH.C"
	line	266
	
l24032:	
;TOUCH.C: 266: fmd_u=FWHEELSILERB[0];
	movlw	low(_FWHEELSILERB|8000h)
	movwf	fsr0l
	movlw	high(_FWHEELSILERB|8000h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(_fmd_u)	;volatile
	line	267
	
l24034:	
;TOUCH.C: 267: fmd_u=SWHEELSILERB[0];
	movlw	low(_SWHEELSILERB|8000h)
	movwf	fsr0l
	movlw	high(_SWHEELSILERB|8000h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(_fmd_u)	;volatile
	file	"touch.h"
	line	311
	
l24036:	
	clrf	(_fmd_u)	;volatile
	file	"TOUCH.C"
	line	270
;TOUCH.C: 270: fmd_u=fmd_thedeathcount;
	movf	(_fmd_thedeathcount)^080h,w
	movwf	(_fmd_u)	;volatile
	line	271
;TOUCH.C: 271: fmd_u=fmd_thedeathcount1;
	movf	(_fmd_thedeathcount1)^080h,w
	movwf	(_fmd_u)	;volatile
	file	"touch.h"
	line	302
	movlw	0Ah
	movwf	(_fmd_thedeathcount2)^080h
	clrf	(_fmd_thedeathcount2+1)^080h
	file	"TOUCH.C"
	line	275
	
l24038:	
;TOUCH.C: 275: fmd_a=0;
	clrf	(_fmd_a)	;volatile
	line	276
	
l24040:	
;TOUCH.C: 276: fmd_a2=0;
	movlb 0	; select bank0
	clrf	(_fmd_a2)	;volatile
	line	278
	
l24042:	
;TOUCH.C: 278: for(fmd_u=0;fmd_u<15;fmd_u++)
	clrf	(_fmd_u)	;volatile
	
l24044:	
	movlw	(0Fh)
	subwf	(_fmd_u),w	;volatile
	skipc
	goto	u6551
	goto	u6550
u6551:
	goto	l24048
u6550:
	goto	l24060
	line	280
	
l24048:	
	movlw	low(07880h)
	movlb 0	; select bank0
	movwf	(??_TouchInital+0)+0
	movlw	high(07880h)
	movwf	(??_TouchInital+0)+0+1
	incf	(_fmd_u),w	;volatile
	goto	u6564
u6565:
	lsrf	(??_TouchInital+0)+1,f
	rrf	(??_TouchInital+0)+0,f
u6564:
	decfsz	wreg,f
	goto	u6565
	btfss	0+(??_TouchInital+0)+0,(0)&7
	goto	u6571
	goto	u6570
u6571:
	goto	l24056
u6570:
	line	282
	
l24050:	
;TOUCH.C: 281: {
;TOUCH.C: 282: fmd_channels =fmd_a;
	movf	(_fmd_a),w	;volatile
	movlb 1	; select bank1
	movwf	(_fmd_channels)^080h
	line	283
	
l24052:	
;TOUCH.C: 283: fmd_theUsedChannel[fmd_a++]=fmd_u;
	movf	(_fmd_a),w
	addlw	_fmd_theUsedChannel&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_fmd_u),w	;volatile
	movwf	indf1
	
l24054:	
	incf	(_fmd_a),f	;volatile
	line	278
	
l24056:	
	incf	(_fmd_u),f	;volatile
	goto	l24044
	line	287
	
l24060:	
;TOUCH.C: 284: }
;TOUCH.C: 285: }
;TOUCH.C: 287: fmd_a=fmd_theUsedChannel[0];
	movlb 1	; select bank1
	movf	(_fmd_theUsedChannel)^080h,w
	movwf	(_fmd_a)	;volatile
	file	"touch.h"
	line	310
	movlw	0Ch
	movwf	(_fmd_UpDataTime)^080h
	clrf	(_fmd_UpDataTime+1)^080h
	file	"TOUCH.C"
	line	289
	
l24062:	
	asrf	(_fmd_UpDataTime+1)^080h,f
	rrf	(_fmd_UpDataTime)^080h,f
	file	"touch.h"
	line	310
	
l24064:	
	movlw	0Ch
	movlb 0	; select bank0
	movwf	(_fmd_DownDataTime)
	clrf	(_fmd_DownDataTime+1)
	file	"TOUCH.C"
	line	290
	lslf	(_fmd_DownDataTime),f
	rlf	(_fmd_DownDataTime+1),f
	lslf	(_fmd_DownDataTime),f
	rlf	(_fmd_DownDataTime+1),f
	line	291
	
l17541:	
	return
	opt stack 0
GLOBAL	__end_of_TouchInital
	__end_of_TouchInital:
;; =============== function _TouchInital ends ============

	signat	_TouchInital,88
	global	_Sys_init
psect	text1311,local,class=CODE,delta=2
global __ptext1311
__ptext1311:

;; *************** function _Sys_init *****************
;; Defined at:
;;		line 85 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/3
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1311
	file	"CHIPINIT.C"
	line	85
	global	__size_of_Sys_init
	__size_of_Sys_init	equ	__end_of_Sys_init-_Sys_init
	
_Sys_init:	
	opt	stack 11
; Regs used in _Sys_init: [wreg+status,2]
	line	87
	
l23964:	
;CHIPINIT.C: 87: OSCCON = 0B01100001;
	movlw	(061h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	98
	
l23966:	
;CHIPINIT.C: 98: INTCON = 0B00000000;
	clrf	(11)	;volatile
	line	100
	
l23968:	
;CHIPINIT.C: 100: PORTA = 0B00000000;
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	101
	
l23970:	
;CHIPINIT.C: 101: TRISA = 0B00000000;
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	102
	
l23972:	
;CHIPINIT.C: 102: PORTB = 0B00000000;
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	103
;CHIPINIT.C: 103: TRISB = 0B00010000;
	movlw	(010h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	104
	
l23974:	
;CHIPINIT.C: 104: PORTC = 0B00000000;
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	105
	
l23976:	
;CHIPINIT.C: 105: TRISC = 0B00000000;
	movlb 1	; select bank1
	clrf	(142)^080h	;volatile
	line	106
	
l23978:	
;CHIPINIT.C: 106: PORTD = 0B00000000;
	movlb 0	; select bank0
	clrf	(15)	;volatile
	line	107
	
l23980:	
;CHIPINIT.C: 107: TRISD = 0B00000000;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	109
	
l23982:	
;CHIPINIT.C: 109: WPUA = 0B00000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	110
	
l23984:	
;CHIPINIT.C: 110: WPUB = 0B00010000;
	movlw	(010h)
	movwf	(397)^0180h	;volatile
	line	111
;CHIPINIT.C: 111: WPUC = 0B00000000;
	clrf	(398)^0180h	;volatile
	line	112
;CHIPINIT.C: 112: WPUD = 0B00000000;
	clrf	(399)^0180h	;volatile
	line	114
;CHIPINIT.C: 114: WPDA = 0B00000000;
	movlb 4	; select bank4
	clrf	(524)^0200h	;volatile
	line	115
;CHIPINIT.C: 115: WPDB = 0B00000000;
	clrf	(525)^0200h	;volatile
	line	116
;CHIPINIT.C: 116: WPDC = 0B00000000;
	clrf	(526)^0200h	;volatile
	line	117
;CHIPINIT.C: 117: WPDD = 0B00000000;
	clrf	(527)^0200h	;volatile
	line	119
	
l23986:	
;CHIPINIT.C: 119: PSRC0 = 0B11111111;
	movlw	(0FFh)
	movlb 2	; select bank2
	movwf	(282)^0100h	;volatile
	line	123
	
l23988:	
;CHIPINIT.C: 123: PSRC1 = 0B11111111;
	movlw	(0FFh)
	movwf	(283)^0100h	;volatile
	line	127
	
l23990:	
;CHIPINIT.C: 127: PSINK0 = 0B11111111;
	movlw	(0FFh)
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	128
	
l23992:	
;CHIPINIT.C: 128: PSINK1 = 0B11111111;
	movlw	(0FFh)
	movwf	(411)^0180h	;volatile
	line	129
	
l23994:	
;CHIPINIT.C: 129: PSINK2 = 0B11111111;
	movlw	(0FFh)
	movwf	(412)^0180h	;volatile
	line	130
	
l23996:	
;CHIPINIT.C: 130: PSINK3 = 0B11111111;
	movlw	(0FFh)
	movwf	(413)^0180h	;volatile
	line	132
;CHIPINIT.C: 132: ANSELA = 0B00000000;
	clrf	(407)^0180h	;volatile
	line	137
	
l7460:	
	return
	opt stack 0
GLOBAL	__end_of_Sys_init
	__end_of_Sys_init:
;; =============== function _Sys_init ends ============

	signat	_Sys_init,88
	global	_StrongKeyExec
psect	text1312,local,class=CODE,delta=2
global __ptext1312
__ptext1312:

;; *************** function _StrongKeyExec *****************
;; Defined at:
;;		line 113 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dokey
;; This function uses a non-reentrant model
;;
psect	text1312
	file	"main.c"
	line	113
	global	__size_of_StrongKeyExec
	__size_of_StrongKeyExec	equ	__end_of_StrongKeyExec-_StrongKeyExec
	
_StrongKeyExec:	
	opt	stack 10
; Regs used in _StrongKeyExec: [wreg+status,2+status,0]
	line	114
	
l23954:	
;main.c: 114: if(SysFunFlg0.OneBits.b7)
	btfss	(_SysFunFlg0),7	;volatile
	goto	u6531
	goto	u6530
u6531:
	goto	l2515
u6530:
	line	118
	
l23956:	
;main.c: 115: {
;main.c: 118: if(StrongType >= Mode3)
	movlw	(03h)
	subwf	(_StrongType),w
	skipc
	goto	u6541
	goto	u6540
u6541:
	goto	l23960
u6540:
	line	120
	
l23958:	
;main.c: 119: {
;main.c: 120: StrongType = Mode1;
	clrf	(_StrongType)
	incf	(_StrongType),f
	line	121
;main.c: 121: }
	goto	l23962
	line	122
	
l23960:	
;main.c: 122: else StrongType+=1;
	incf	(_StrongType),f
	line	124
	
l23962:	
;main.c: 124: DspIndex =DsStrong;
	movlw	(02h)
	movwf	(_DspIndex)
	line	126
	
l2515:	
	return
	opt stack 0
GLOBAL	__end_of_StrongKeyExec
	__end_of_StrongKeyExec:
;; =============== function _StrongKeyExec ends ============

	signat	_StrongKeyExec,88
	global	_HeatKeyExec
psect	text1313,local,class=CODE,delta=2
global __ptext1313
__ptext1313:

;; *************** function _HeatKeyExec *****************
;; Defined at:
;;		line 98 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dokey
;; This function uses a non-reentrant model
;;
psect	text1313
	file	"main.c"
	line	98
	global	__size_of_HeatKeyExec
	__size_of_HeatKeyExec	equ	__end_of_HeatKeyExec-_HeatKeyExec
	
_HeatKeyExec:	
	opt	stack 10
; Regs used in _HeatKeyExec: [wreg+status,2+status,0]
	line	99
	
l23942:	
;main.c: 99: if(SysFunFlg0.OneBits.b7)
	btfss	(_SysFunFlg0),7	;volatile
	goto	u6501
	goto	u6500
u6501:
	goto	l2509
u6500:
	line	101
	
l23944:	
;main.c: 100: {
;main.c: 101: if(HeatType >= Mode1)
	movf	(_HeatType),w
	skipz
	goto	u6510
	goto	l23948
u6510:
	line	103
	
l23946:	
;main.c: 102: {
;main.c: 103: HeatType = Mode0;
	clrf	(_HeatType)
	line	104
;main.c: 104: }
	goto	l23950
	line	105
	
l23948:	
;main.c: 105: else HeatType+=1;
	incf	(_HeatType),f
	line	107
	
l23950:	
;main.c: 107: if(PwrType==1)PwrType=2;
	decf	(_PwrType),w
	skipz
	goto	u6521
	goto	u6520
u6521:
	goto	l2508
u6520:
	
l23952:	
	movlw	(02h)
	movwf	(_PwrType)
	
l2508:	
	line	109
;main.c: 109: DspIndex =DsHeat;
	movlw	(03h)
	movwf	(_DspIndex)
	line	111
	
l2509:	
	return
	opt stack 0
GLOBAL	__end_of_HeatKeyExec
	__end_of_HeatKeyExec:
;; =============== function _HeatKeyExec ends ============

	signat	_HeatKeyExec,88
	global	_ManualKeyExec
psect	text1314,local,class=CODE,delta=2
global __ptext1314
__ptext1314:

;; *************** function _ManualKeyExec *****************
;; Defined at:
;;		line 75 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dokey
;; This function uses a non-reentrant model
;;
psect	text1314
	file	"main.c"
	line	75
	global	__size_of_ManualKeyExec
	__size_of_ManualKeyExec	equ	__end_of_ManualKeyExec-_ManualKeyExec
	
_ManualKeyExec:	
	opt	stack 10
; Regs used in _ManualKeyExec: [wreg+status,2+status,0]
	line	76
	
l23920:	
;main.c: 76: if(SysFunFlg0.OneBits.b7)
	btfss	(_SysFunFlg0),7	;volatile
	goto	u6461
	goto	u6460
u6461:
	goto	l2502
u6460:
	line	78
	
l23922:	
;main.c: 77: {
;main.c: 78: if(ManualType==0)
	movf	(_ManualType),f
	skipz
	goto	u6471
	goto	u6470
u6471:
	goto	l23932
u6470:
	line	80
	
l23924:	
;main.c: 79: {
;main.c: 80: if(LastManual==0){LastManual=1; HeatType=1;}
	movf	(_LastManual),f
	skipz
	goto	u6481
	goto	u6480
u6481:
	goto	l23928
u6480:
	
l23926:	
	clrf	(_LastManual)
	incf	(_LastManual),f
	clrf	(_HeatType)
	incf	(_HeatType),f
	line	81
	
l23928:	
;main.c: 81: ManualType=LastManual;
	movf	(_LastManual),w
	movwf	(_ManualType)
	line	83
;main.c: 83: LastMode=ModeType;
	movf	(_ModeType),w
	movwf	(_LastMode)
	line	84
	
l23930:	
;main.c: 84: ModeType=0;
	clrf	(_ModeType)
	line	85
;main.c: 85: }
	goto	l23938
	line	86
	
l23932:	
;main.c: 86: else if(ManualType >= 3)
	movlw	(03h)
	subwf	(_ManualType),w
	skipc
	goto	u6491
	goto	u6490
u6491:
	goto	l23936
u6490:
	line	88
	
l23934:	
;main.c: 87: {
;main.c: 88: ManualType = 1; HeatType=1;
	clrf	(_ManualType)
	incf	(_ManualType),f
	clrf	(_HeatType)
	incf	(_HeatType),f
	line	89
;main.c: 89: }
	goto	l23938
	line	90
	
l23936:	
;main.c: 90: else ManualType+=1;
	incf	(_ManualType),f
	line	92
	
l23938:	
;main.c: 92: ModeType=0;
	clrf	(_ModeType)
	line	94
	
l23940:	
;main.c: 94: DspIndex =DsManual;
	movlw	(04h)
	movwf	(_DspIndex)
	line	96
	
l2502:	
	return
	opt stack 0
GLOBAL	__end_of_ManualKeyExec
	__end_of_ManualKeyExec:
;; =============== function _ManualKeyExec ends ============

	signat	_ManualKeyExec,88
	global	_ModeKeyExec
psect	text1315,local,class=CODE,delta=2
global __ptext1315
__ptext1315:

;; *************** function _ModeKeyExec *****************
;; Defined at:
;;		line 52 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dokey
;; This function uses a non-reentrant model
;;
psect	text1315
	file	"main.c"
	line	52
	global	__size_of_ModeKeyExec
	__size_of_ModeKeyExec	equ	__end_of_ModeKeyExec-_ModeKeyExec
	
_ModeKeyExec:	
	opt	stack 10
; Regs used in _ModeKeyExec: [wreg+status,2+status,0]
	line	53
	
l23896:	
;main.c: 53: if(SysFunFlg0.OneBits.b7)
	btfss	(_SysFunFlg0),7	;volatile
	goto	u6411
	goto	u6410
u6411:
	goto	l2493
u6410:
	line	55
	
l23898:	
;main.c: 54: {
;main.c: 55: if(PwrType==1)PwrType=2;
	decf	(_PwrType),w
	skipz
	goto	u6421
	goto	u6420
u6421:
	goto	l23902
u6420:
	
l23900:	
	movlw	(02h)
	movwf	(_PwrType)
	line	57
	
l23902:	
;main.c: 57: if(ModeType==0)
	movf	(_ModeType),f
	skipz
	goto	u6431
	goto	u6430
u6431:
	goto	l23912
u6430:
	line	59
	
l23904:	
;main.c: 58: {
;main.c: 59: if(LastMode==0)LastMode=1;
	movf	(_LastMode),f
	skipz
	goto	u6441
	goto	u6440
u6441:
	goto	l23908
u6440:
	
l23906:	
	clrf	(_LastMode)
	incf	(_LastMode),f
	line	60
	
l23908:	
;main.c: 60: ModeType=LastMode;
	movf	(_LastMode),w
	movwf	(_ModeType)
	line	62
;main.c: 62: LastManual=ManualType;
	movf	(_ManualType),w
	movwf	(_LastManual)
	line	63
	
l23910:	
;main.c: 63: ManualType=0;
	clrf	(_ManualType)
	line	64
;main.c: 64: }
	goto	l23918
	line	65
	
l23912:	
;main.c: 65: else if(ModeType >= Mode3)
	movlw	(03h)
	subwf	(_ModeType),w
	skipc
	goto	u6451
	goto	u6450
u6451:
	goto	l23916
u6450:
	line	67
	
l23914:	
;main.c: 66: {
;main.c: 67: ModeType = Mode1;
	clrf	(_ModeType)
	incf	(_ModeType),f
	line	68
;main.c: 68: }
	goto	l23918
	line	69
	
l23916:	
;main.c: 69: else ModeType+=1;
	incf	(_ModeType),f
	line	71
	
l23918:	
;main.c: 71: DspIndex =DsMode;
	clrf	(_DspIndex)
	incf	(_DspIndex),f
	line	73
	
l2493:	
	return
	opt stack 0
GLOBAL	__end_of_ModeKeyExec
	__end_of_ModeKeyExec:
;; =============== function _ModeKeyExec ends ============

	signat	_ModeKeyExec,88
	global	_TIME_INIT
psect	text1316,local,class=CODE,delta=2
global __ptext1316
__ptext1316:

;; *************** function _TIME_INIT *****************
;; Defined at:
;;		line 657 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PowerKeyExec
;;		_User_init
;; This function uses a non-reentrant model
;;
psect	text1316
	file	"CHIPINIT.C"
	line	657
	global	__size_of_TIME_INIT
	__size_of_TIME_INIT	equ	__end_of_TIME_INIT-_TIME_INIT
	
_TIME_INIT:	
	opt	stack 9
; Regs used in _TIME_INIT: [status,2]
	line	658
	
l23894:	
;CHIPINIT.C: 658: Time100Ms=0;
	clrf	(_Time100Ms)	;volatile
	line	659
;CHIPINIT.C: 659: TimeSec=0;
	clrf	(_TimeSec)	;volatile
	line	661
	
l7500:	
	return
	opt stack 0
GLOBAL	__end_of_TIME_INIT
	__end_of_TIME_INIT:
;; =============== function _TIME_INIT ends ============

	signat	_TIME_INIT,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 52 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Rx_Drive
;;		_exact_event_process
;;		_DisplayHandler
;;		_send_uart_data
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"CHIPINIT.C"
	line	52
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 6
; Regs used in _ISR: [allreg]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	54
	
i1l24200:	
;CHIPINIT.C: 54: if(T2UIE && T2UIF)
	movlb 6	; select bank6
	btfss	(6248/8)^0300h,(6248)&7
	goto	u675_21
	goto	u675_20
u675_21:
	goto	i1l24210
u675_20:
	
i1l24202:	
	btfss	(6256/8)^0300h,(6256)&7
	goto	u676_21
	goto	u676_20
u676_21:
	goto	i1l24210
u676_20:
	line	56
	
i1l24204:	
;CHIPINIT.C: 55: {
;CHIPINIT.C: 56: T2UIF = 1;
	bsf	(6256/8)^0300h,(6256)&7
	line	57
	
i1l24206:	
;CHIPINIT.C: 57: Rx_Drive();
	fcall	_Rx_Drive
	line	58
	
i1l24208:	
;CHIPINIT.C: 58: exact_event_process();
	fcall	_exact_event_process
	line	62
	
i1l24210:	
;CHIPINIT.C: 59: }
;CHIPINIT.C: 62: if(T4UIE && T4UIF)
	movlb 2	; select bank2
	btfss	(2192/8)^0100h,(2192)&7
	goto	u677_21
	goto	u677_20
u677_21:
	goto	i1l7453
u677_20:
	
i1l24212:	
	btfss	(2200/8)^0100h,(2200)&7
	goto	u678_21
	goto	u678_20
u678_21:
	goto	i1l7453
u678_20:
	line	64
	
i1l24214:	
;CHIPINIT.C: 63: {
;CHIPINIT.C: 64: T4UIF = 1;
	bsf	(2200/8)^0100h,(2200)&7
	line	66
	
i1l24216:	
;CHIPINIT.C: 66: DisplayHandler();
	fcall	_DisplayHandler
	line	68
	
i1l24218:	
;CHIPINIT.C: 68: if(BuzzerCnt)
	movlb 1	; select bank1
	movf	(_BuzzerCnt+1)^080h,w
	iorwf	(_BuzzerCnt)^080h,w
	skipnz
	goto	u679_21
	goto	u679_20
u679_21:
	goto	i1l7453
u679_20:
	line	70
	
i1l24220:	
;CHIPINIT.C: 69: {
;CHIPINIT.C: 70: PB5=~PB5;
	movlw	1<<((109)&7)
	movlb 0	; select bank0
	xorwf	((109)/8),f
	line	71
;CHIPINIT.C: 71: BuzzerCnt--;
	movlw	low(01h)
	movlb 1	; select bank1
	subwf	(_BuzzerCnt)^080h,f
	movlw	high(01h)
	subwfb	(_BuzzerCnt+1)^080h,f
	line	72
	
i1l24222:	
;CHIPINIT.C: 72: if(BuzzerCnt==0)
	movf	((_BuzzerCnt+1)^080h),w
	iorwf	((_BuzzerCnt)^080h),w
	skipz
	goto	u680_21
	goto	u680_20
u680_21:
	goto	i1l7453
u680_20:
	line	74
	
i1l24224:	
;CHIPINIT.C: 73: {
;CHIPINIT.C: 74: PB5=0;
	movlb 0	; select bank0
	bcf	(109/8),(109)&7
	line	77
	
i1l7453:	
	line	78
;CHIPINIT.C: 75: }
;CHIPINIT.C: 76: }
;CHIPINIT.C: 77: }
;CHIPINIT.C: 78: if(URTE && TXEF)
	movlb 9	; select bank9
	btfss	(9329/8)^0480h,(9329)&7
	goto	u681_21
	goto	u681_20
u681_21:
	goto	i1l7457
u681_20:
	
i1l24226:	
	btfss	(9365/8)^0480h,(9365)&7
	goto	u682_21
	goto	u682_20
u682_21:
	goto	i1l7457
u682_20:
	line	80
	
i1l24228:	
;CHIPINIT.C: 79: {
;CHIPINIT.C: 80: send_uart_data();
	fcall	_send_uart_data
	line	82
	
i1l7457:	
	movf	(??_ISR+0),w
	movlb 0	; select bank0
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_DisplayHandler
psect	text1318,local,class=CODE,delta=2
global __ptext1318
__ptext1318:

;; *************** function _DisplayHandler *****************
;; Defined at:
;;		line 244 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1C/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SpecialDisplay1
;;		_ShowLedData
;;		_SpecialDisplay2
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1318
	file	"sub.c"
	line	244
	global	__size_of_DisplayHandler
	__size_of_DisplayHandler	equ	__end_of_DisplayHandler-_DisplayHandler
	
_DisplayHandler:	
	opt	stack 6
; Regs used in _DisplayHandler: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	248
	
i1l24230:	
;sub.c: 245: static unsigned char LedMenuIndex=0;
;sub.c: 246: static unsigned char DspBuf,DspCnt;
;sub.c: 248: if(++DspCnt <=16 )return;
	movlw	(011h)
	movlb 1	; select bank1
	incf	(DisplayHandler@DspCnt)^080h,f
	subwf	((DisplayHandler@DspCnt)^080h),w
	skipnc
	goto	u683_21
	goto	u683_20
u683_21:
	goto	i1l24234
u683_20:
	goto	i1l12560
	line	249
	
i1l24234:	
;sub.c: 249: DspCnt = 0;
	clrf	(DisplayHandler@DspCnt)^080h
	line	251
	
i1l24236:	
;sub.c: 251: {LATB1=0;LATD1=0;LATC1=0;LATC0=0; LATA0=0;LATB0=0;LATB3=0; LATA4=0;LATD2=0;LATA1=0;LATD3=0;};
	movlb 2	; select bank2
	bcf	(2153/8)^0100h,(2153)&7
	
i1l24238:	
	bcf	(2169/8)^0100h,(2169)&7
	
i1l24240:	
	bcf	(2161/8)^0100h,(2161)&7
	
i1l24242:	
	bcf	(2160/8)^0100h,(2160)&7
	
i1l24244:	
	bcf	(2144/8)^0100h,(2144)&7
	
i1l24246:	
	bcf	(2152/8)^0100h,(2152)&7
	
i1l24248:	
	bcf	(2155/8)^0100h,(2155)&7
	
i1l24250:	
	bcf	(2148/8)^0100h,(2148)&7
	
i1l24252:	
	bcf	(2170/8)^0100h,(2170)&7
	
i1l24254:	
	bcf	(2145/8)^0100h,(2145)&7
	
i1l24256:	
	bcf	(2171/8)^0100h,(2171)&7
	line	255
	
i1l24258:	
;sub.c: 255: LedMenuIndex++;
	movlb 0	; select bank0
	incf	(DisplayHandler@LedMenuIndex),f
	line	256
	
i1l24260:	
;sub.c: 256: if(LedMenuIndex>3)
	movlw	(04h)
	subwf	(DisplayHandler@LedMenuIndex),w
	skipc
	goto	u684_21
	goto	u684_20
u684_21:
	goto	i1l24338
u684_20:
	line	257
	
i1l24262:	
;sub.c: 257: LedMenuIndex=0;
	clrf	(DisplayHandler@LedMenuIndex)
	goto	i1l24338
	line	262
	
i1l24264:	
;sub.c: 262: if(PwrType)
	movf	(_PwrType),w
	skipz
	goto	u685_20
	goto	i1l12564
u685_20:
	line	264
	
i1l24266:	
;sub.c: 263: {
;sub.c: 264: if(PwrType)LATD2=1;
	movf	(_PwrType),w
	skipz
	goto	u686_20
	goto	i1l24270
u686_20:
	
i1l24268:	
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	line	266
	
i1l24270:	
;sub.c: 266: if(HeatType==1)LATA4=1;
	movlb 0	; select bank0
	decf	(_HeatType),w
	skipz
	goto	u687_21
	goto	u687_20
u687_21:
	goto	i1l24274
u687_20:
	
i1l24272:	
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	line	268
	
i1l24274:	
;sub.c: 268: if(ManualType||ModeType)
	movlb 0	; select bank0
	movf	(_ManualType),f
	skipz
	goto	u688_21
	goto	u688_20
u688_21:
	goto	i1l24278
u688_20:
	
i1l24276:	
	movf	(_ModeType),w
	skipz
	goto	u689_20
	goto	i1l12564
u689_20:
	line	282
	
i1l24278:	
;sub.c: 269: {
;sub.c: 282: if(StrongType==1){
	decf	(_StrongType),w
	skipz
	goto	u690_21
	goto	u690_20
u690_21:
	goto	i1l24282
u690_20:
	line	283
	
i1l24280:	
;sub.c: 283: LATB3=1;
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	line	284
;sub.c: 284: }
	goto	i1l12564
	line	285
	
i1l24282:	
;sub.c: 285: else if(StrongType==2){
	movf	(_StrongType),w
	xorlw	02h&0ffh
	skipz
	goto	u691_21
	goto	u691_20
u691_21:
	goto	i1l24286
u691_20:
	line	286
	
i1l24284:	
;sub.c: 286: LATB0=1;
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	line	287
;sub.c: 287: }
	goto	i1l12564
	line	288
	
i1l24286:	
;sub.c: 288: else if(StrongType==3){
	movf	(_StrongType),w
	xorlw	03h&0ffh
	skipz
	goto	u692_21
	goto	u692_20
u692_21:
	goto	i1l12571
u692_20:
	line	289
	
i1l24288:	
;sub.c: 289: LATA0=1;
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	i1l12564
	line	291
	
i1l12571:	
	line	292
	
i1l12564:	
	line	293
;sub.c: 290: }
;sub.c: 291: }
;sub.c: 292: }
;sub.c: 293: {LATB1=1;LATD1=0;LATC1=0;LATC0=0;};
	movlb 2	; select bank2
	bsf	(2153/8)^0100h,(2153)&7
	bcf	(2169/8)^0100h,(2169)&7
	bcf	(2161/8)^0100h,(2161)&7
	bcf	(2160/8)^0100h,(2160)&7
	line	294
;sub.c: 294: break;
	goto	i1l12560
	line	296
	
i1l24290:	
;sub.c: 296: if(PwrType)
	movf	(_PwrType),w
	skipz
	goto	u693_20
	goto	i1l12577
u693_20:
	line	298
	
i1l24292:	
;sub.c: 297: {
;sub.c: 298: if(ModeType==1){ LATB3=1; }
	decf	(_ModeType),w
	skipz
	goto	u694_21
	goto	u694_20
u694_21:
	goto	i1l24296
u694_20:
	
i1l24294:	
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	i1l24304
	line	299
	
i1l24296:	
;sub.c: 299: else if(ModeType==2){ LATB0=1; }
	movf	(_ModeType),w
	xorlw	02h&0ffh
	skipz
	goto	u695_21
	goto	u695_20
u695_21:
	goto	i1l24300
u695_20:
	
i1l24298:	
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	i1l24304
	line	300
	
i1l24300:	
;sub.c: 300: else if(ModeType==3){ LATA0=1; }
	movf	(_ModeType),w
	xorlw	03h&0ffh
	skipz
	goto	u696_21
	goto	u696_20
u696_21:
	goto	i1l24304
u696_20:
	
i1l24302:	
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	line	302
	
i1l24304:	
;sub.c: 302: if(ManualType==1)LATA4=1;
	movlb 0	; select bank0
	decf	(_ManualType),w
	skipz
	goto	u697_21
	goto	u697_20
u697_21:
	goto	i1l24308
u697_20:
	
i1l24306:	
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	i1l12577
	line	303
	
i1l24308:	
;sub.c: 303: else if(ManualType==2){LATA4=1;LATD2=1;}
	movf	(_ManualType),w
	xorlw	02h&0ffh
	skipz
	goto	u698_21
	goto	u698_20
u698_21:
	goto	i1l24312
u698_20:
	
i1l24310:	
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	bsf	(2170/8)^0100h,(2170)&7
	goto	i1l12577
	line	304
	
i1l24312:	
;sub.c: 304: else if(ManualType==3)LATD2=1;
	movf	(_ManualType),w
	xorlw	03h&0ffh
	skipz
	goto	u699_21
	goto	u699_20
u699_21:
	goto	i1l12577
u699_20:
	
i1l24314:	
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	line	305
	
i1l12577:	
	line	306
;sub.c: 305: }
;sub.c: 306: {LATD1=1;LATB1=0;LATC1=0;LATC0=0;};
	movlb 2	; select bank2
	bsf	(2169/8)^0100h,(2169)&7
	bcf	(2153/8)^0100h,(2153)&7
	bcf	(2161/8)^0100h,(2161)&7
	bcf	(2160/8)^0100h,(2160)&7
	line	307
;sub.c: 307: break;
	goto	i1l12560
	line	310
	
i1l24316:	
;sub.c: 310: DspBuf=SpecialDisplay1();
	fcall	_SpecialDisplay1
	movwf	(DisplayHandler@DspBuf)
	line	311
;sub.c: 311: ShowLedData(DspBuf);
	movf	(DisplayHandler@DspBuf),w
	fcall	_ShowLedData
	line	312
	
i1l24318:	
;sub.c: 312: {LATC1=1;LATB1=0;LATD1=0;LATC0=0;};
	movlb 2	; select bank2
	bsf	(2161/8)^0100h,(2161)&7
	
i1l24320:	
	bcf	(2153/8)^0100h,(2153)&7
	
i1l24322:	
	bcf	(2169/8)^0100h,(2169)&7
	
i1l24324:	
	bcf	(2160/8)^0100h,(2160)&7
	line	313
;sub.c: 313: break;
	goto	i1l12560
	line	316
	
i1l24326:	
;sub.c: 316: DspBuf=SpecialDisplay2();
	fcall	_SpecialDisplay2
	movwf	(DisplayHandler@DspBuf)
	line	317
;sub.c: 317: ShowLedData(DspBuf);
	movf	(DisplayHandler@DspBuf),w
	fcall	_ShowLedData
	line	318
	
i1l24328:	
;sub.c: 318: {LATC0=1;LATB1=0;LATD1=0;LATC1=0;};
	movlb 2	; select bank2
	bsf	(2160/8)^0100h,(2160)&7
	
i1l24330:	
	bcf	(2153/8)^0100h,(2153)&7
	
i1l24332:	
	bcf	(2169/8)^0100h,(2169)&7
	
i1l24334:	
	bcf	(2161/8)^0100h,(2161)&7
	line	319
;sub.c: 319: break;
	goto	i1l12560
	line	259
	
i1l24338:	
	movf	(DisplayHandler@LedMenuIndex),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable             8     4 (fixed)
; spacedrange           13     6 (fixed)
; locatedrange           4     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l24264
	xorlw	1^0	; case 1
	skipnz
	goto	i1l24290
	xorlw	2^1	; case 2
	skipnz
	goto	i1l24316
	xorlw	3^2	; case 3
	skipnz
	goto	i1l24326
	goto	i1l12560
	opt asmopt_on

	line	322
	
i1l12560:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayHandler
	__end_of_DisplayHandler:
;; =============== function _DisplayHandler ends ============

	signat	_DisplayHandler,88
	global	_SpecialDisplay2
psect	text1319,local,class=CODE,delta=2
global __ptext1319
__ptext1319:

;; *************** function _SpecialDisplay2 *****************
;; Defined at:
;;		line 225 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DspBuf          1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1D/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lbmod
;; This function is called by:
;;		_DisplayHandler
;; This function uses a non-reentrant model
;;
psect	text1319
	file	"sub.c"
	line	225
	global	__size_of_SpecialDisplay2
	__size_of_SpecialDisplay2	equ	__end_of_SpecialDisplay2-_SpecialDisplay2
	
_SpecialDisplay2:	
	opt	stack 6
; Regs used in _SpecialDisplay2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	227
	
i1l24382:	
;sub.c: 226: unsigned char DspBuf;
;sub.c: 227: switch(DspIndex)
	goto	i1l24398
	line	229
	
i1l24384:	
	movlw	(0Fh)
	movwf	(SpecialDisplay2@DspBuf)
	line	230
;sub.c: 230: break; case DsMode: DspBuf=ModeType;
	goto	i1l24400
	
i1l24386:	
	movf	(_ModeType),w
	movwf	(SpecialDisplay2@DspBuf)
	line	231
;sub.c: 231: break; case DsStrong: DspBuf=StrongType;
	goto	i1l24400
	
i1l24388:	
	movf	(_StrongType),w
	movwf	(SpecialDisplay2@DspBuf)
	line	232
;sub.c: 232: break; case DsHeat: DspBuf=HeatType;
	goto	i1l24400
	
i1l24390:	
	movf	(_HeatType),w
	movwf	(SpecialDisplay2@DspBuf)
	line	233
;sub.c: 233: break; case DsManual: DspBuf=ManualType;
	goto	i1l24400
	
i1l24392:	
	movf	(_ManualType),w
	movwf	(SpecialDisplay2@DspBuf)
	line	234
;sub.c: 234: break; case DsTime: DspBuf=TimeMin;
	goto	i1l24400
	
i1l24394:	
	movf	(_TimeMin),w	;volatile
	movwf	(SpecialDisplay2@DspBuf)
	line	235
;sub.c: 235: break;
	goto	i1l24400
	line	227
	
i1l24398:	
	movf	(_DspIndex),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           18     6 (fixed)
; simple_byte           19    10 (average)
; jumptable            260     6 (fixed)
; rangetable            10     4 (fixed)
; spacedrange           17     6 (fixed)
; locatedrange           6     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr0l
	movlw	6
	subwf	fsr0l,w
skipnc
goto i1l24400
movlp high(i1S25798)
	lslf fsr0l,w
	addlw low(i1S25798)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S25798:
	ljmp	i1l24384
	ljmp	i1l24386
	ljmp	i1l24388
	ljmp	i1l24390
	ljmp	i1l24392
	ljmp	i1l24394
psect	text1319

	line	237
	
i1l24400:	
;sub.c: 237: if(DspIndex!=DsSty)
	movf	(_DspIndex),w
	skipz
	goto	u703_20
	goto	i1l24404
u703_20:
	line	238
	
i1l24402:	
;sub.c: 238: DspBuf%=10;
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SpecialDisplay2@DspBuf),w
	fcall	___lbmod
	movwf	(SpecialDisplay2@DspBuf)
	line	239
	
i1l24404:	
;sub.c: 239: return DspBuf;
	movf	(SpecialDisplay2@DspBuf),w
	line	240
	
i1l12550:	
	return
	opt stack 0
GLOBAL	__end_of_SpecialDisplay2
	__end_of_SpecialDisplay2:
;; =============== function _SpecialDisplay2 ends ============

	signat	_SpecialDisplay2,89
	global	_SpecialDisplay1
psect	text1320,local,class=CODE,delta=2
global __ptext1320
__ptext1320:

;; *************** function _SpecialDisplay1 *****************
;; Defined at:
;;		line 209 in file "sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DspBuf          1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1D/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lbdiv
;; This function is called by:
;;		_DisplayHandler
;; This function uses a non-reentrant model
;;
psect	text1320
	file	"sub.c"
	line	209
	global	__size_of_SpecialDisplay1
	__size_of_SpecialDisplay1	equ	__end_of_SpecialDisplay1-_SpecialDisplay1
	
_SpecialDisplay1:	
	opt	stack 6
; Regs used in _SpecialDisplay1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	211
	
i1l24354:	
;sub.c: 210: unsigned char DspBuf;
;sub.c: 211: switch(DspIndex)
	goto	i1l24370
	line	213
	
i1l24356:	
	clrf	(SpecialDisplay1@DspBuf)
	line	214
;sub.c: 214: break; case DsMode: DspBuf=11;
	goto	i1l24372
	
i1l24358:	
	movlw	(0Bh)
	movwf	(SpecialDisplay1@DspBuf)
	line	215
;sub.c: 215: break; case DsStrong: DspBuf=12;
	goto	i1l24372
	
i1l24360:	
	movlw	(0Ch)
	movwf	(SpecialDisplay1@DspBuf)
	line	216
;sub.c: 216: break; case DsHeat: DspBuf=13;
	goto	i1l24372
	
i1l24362:	
	movlw	(0Dh)
	movwf	(SpecialDisplay1@DspBuf)
	line	217
;sub.c: 217: break; case DsManual: DspBuf=14;
	goto	i1l24372
	
i1l24364:	
	movlw	(0Eh)
	movwf	(SpecialDisplay1@DspBuf)
	line	218
;sub.c: 218: break; case DsTime: DspBuf=(TimeMin/10);
	goto	i1l24372
	
i1l24366:	
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_TimeMin),w	;volatile
	fcall	___lbdiv
	movwf	(SpecialDisplay1@DspBuf)
	line	219
;sub.c: 219: break;
	goto	i1l24372
	line	211
	
i1l24370:	
	movf	(_DspIndex),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           18     6 (fixed)
; simple_byte           19    10 (average)
; jumptable            260     6 (fixed)
; rangetable            10     4 (fixed)
; spacedrange           17     6 (fixed)
; locatedrange           6     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr0l
	movlw	6
	subwf	fsr0l,w
skipnc
goto i1l24372
movlp high(i1S25800)
	lslf fsr0l,w
	addlw low(i1S25800)
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
i1S25800:
	ljmp	i1l24356
	ljmp	i1l24358
	ljmp	i1l24360
	ljmp	i1l24362
	ljmp	i1l24364
	ljmp	i1l24366
psect	text1320

	line	221
	
i1l24372:	
;sub.c: 221: return DspBuf;
	movf	(SpecialDisplay1@DspBuf),w
	line	222
	
i1l12538:	
	return
	opt stack 0
GLOBAL	__end_of_SpecialDisplay1
	__end_of_SpecialDisplay1:
;; =============== function _SpecialDisplay1 ends ============

	signat	_SpecialDisplay1,89
	global	_send_uart_data
psect	text1321,local,class=CODE,delta=2
global __ptext1321
__ptext1321:

;; *************** function _send_uart_data *****************
;; Defined at:
;;		line 28 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/9
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_UartSetEmptyInt
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1321
	file	"uart.c"
	line	28
	global	__size_of_send_uart_data
	__size_of_send_uart_data	equ	__end_of_send_uart_data-_send_uart_data
	
_send_uart_data:	
	opt	stack 7
; Regs used in _send_uart_data: [wreg+fsr1l-status,0+pclath+cstack]
	line	31
	
i1l24340:	
;uart.c: 29: static unsigned char ByteNum;
;uart.c: 31: if(ByteNum<6)
	movlw	(06h)
	movlb 0	; select bank0
	subwf	(send_uart_data@ByteNum),w
	skipnc
	goto	u700_21
	goto	u700_20
u700_21:
	goto	i1l15031
u700_20:
	line	33
	
i1l24342:	
;uart.c: 32: {
;uart.c: 33: URDATAL =send_buf[ByteNum++];
	movf	(send_uart_data@ByteNum),w
	addlw	_send_buf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 9	; select bank9
	movwf	(1164)^0480h	;volatile
	
i1l24344:	
	movlb 0	; select bank0
	incf	(send_uart_data@ByteNum),f
	line	34
;uart.c: 34: }
	goto	i1l15033
	line	35
	
i1l15031:	
	line	37
;uart.c: 35: else
;uart.c: 36: {
;uart.c: 37: URTE=0;
	movlb 9	; select bank9
	bcf	(9329/8)^0480h,(9329)&7
	line	38
	
i1l24346:	
;uart.c: 38: UartSetEmptyInt(0);
	movlw	(0)
	fcall	i1_UartSetEmptyInt
	line	39
	
i1l24348:	
;uart.c: 39: ByteNum = 0;
	movlb 0	; select bank0
	clrf	(send_uart_data@ByteNum)
	line	40
	
i1l24350:	
;uart.c: 40: SysFunFlg0.OneBits.b6 = 0;
	bcf	(_SysFunFlg0),6	;volatile
	line	42
	
i1l15033:	
	return
	opt stack 0
GLOBAL	__end_of_send_uart_data
	__end_of_send_uart_data:
;; =============== function _send_uart_data ends ============

	signat	_send_uart_data,88
	global	i1_UartSetEmptyInt
psect	text1322,local,class=CODE,delta=2
global __ptext1322
__ptext1322:

;; *************** function i1_UartSetEmptyInt *****************
;; Defined at:
;;		line 45 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  UartSetEmpty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  UartSetEmpty    1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/9
;;		On exit  : 1F/9
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_uart_data
;; This function uses a non-reentrant model
;;
psect	text1322
	file	"uart.c"
	line	45
	global	__size_ofi1_UartSetEmptyInt
	__size_ofi1_UartSetEmptyInt	equ	__end_ofi1_UartSetEmptyInt-i1_UartSetEmptyInt
	
i1_UartSetEmptyInt:	
	opt	stack 7
; Regs used in i1_UartSetEmptyInt: [wreg]
;i1UartSetEmptyInt@value stored from wreg
	movwf	(i1UartSetEmptyInt@value)
	line	46
	
i1l24542:	
;uart.c: 46: URTE = value;
	btfsc	(i1UartSetEmptyInt@value),0
	goto	u719_21
	goto	u719_20
	
u719_21:
	movlb 9	; select bank9
	bsf	(9329/8)^0480h,(9329)&7
	goto	u720_24
u719_20:
	movlb 9	; select bank9
	bcf	(9329/8)^0480h,(9329)&7
u720_24:
	line	47
	
i1l15036:	
	return
	opt stack 0
GLOBAL	__end_ofi1_UartSetEmptyInt
	__end_ofi1_UartSetEmptyInt:
;; =============== function i1_UartSetEmptyInt ends ============

	signat	i1_UartSetEmptyInt,88
	global	___lbmod
psect	text1323,local,class=CODE,delta=2
global __ptext1323
__ptext1323:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "c:\program files (x86)\fmd\fmdide\data\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[COMMON] unsigned char 
;;  rem             1    4[COMMON] unsigned char 
;;  counter         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SpecialDisplay2
;; This function uses a non-reentrant model
;;
psect	text1323
	file	"c:\program files (x86)\fmd\fmdide\data\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 6
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
i1l24524:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
i1l24526:	
	clrf	(___lbmod@rem)
	line	12
	
i1l24528:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u716_25:
	lsrf	(??___lbmod+0)+0,f
	decfsz	wreg,f
	goto	u716_25
	lslf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
i1l24530:	
	lslf	(___lbmod@dividend),f
	line	14
	
i1l24532:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u717_21
	goto	u717_20
u717_21:
	goto	i1l24536
u717_20:
	line	15
	
i1l24534:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
i1l24536:	
	decfsz	(___lbmod@counter),f
	goto	u718_21
	goto	u718_20
u718_21:
	goto	i1l24528
u718_20:
	line	17
	
i1l24538:	
	movf	(___lbmod@rem),w
	line	18
	
i1l19499:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text1324,local,class=CODE,delta=2
global __ptext1324
__ptext1324:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "c:\program files (x86)\fmd\fmdide\data\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMMON] unsigned char 
;;  quotient        1    3[COMMON] unsigned char 
;;  counter         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SpecialDisplay1
;; This function uses a non-reentrant model
;;
psect	text1324
	file	"c:\program files (x86)\fmd\fmdide\data\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 6
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
i1l24500:	
	clrf	(___lbdiv@quotient)
	line	10
	
i1l24502:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u712_20
	goto	i1l24520
u712_20:
	line	11
	
i1l24504:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	i1l24508
	
i1l19488:	
	line	13
	lslf	(___lbdiv@divisor),f
	line	14
	
i1l24506:	
	incf	(___lbdiv@counter),f
	line	12
	
i1l24508:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u713_21
	goto	u713_20
u713_21:
	goto	i1l19488
u713_20:
	line	16
	
i1l19490:	
	line	17
	lslf	(___lbdiv@quotient),f
	line	18
	
i1l24510:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u714_21
	goto	u714_20
u714_21:
	goto	i1l24516
u714_20:
	line	19
	
i1l24512:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
i1l24514:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
i1l24516:	
	lsrf	(___lbdiv@divisor),f
	line	23
	
i1l24518:	
	decfsz	(___lbdiv@counter),f
	goto	u715_21
	goto	u715_20
u715_21:
	goto	i1l19490
u715_20:
	line	25
	
i1l24520:	
	movf	(___lbdiv@quotient),w
	line	26
	
i1l19493:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	_ShowLedData
psect	text1325,local,class=CODE,delta=2
global __ptext1325
__ptext1325:

;; *************** function _ShowLedData *****************
;; Defined at:
;;		line 185 in file "sub.c"
;; Parameters:    Size  Location     Type
;;  DspBuf          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DspBuf          1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1D/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayHandler
;; This function uses a non-reentrant model
;;
psect	text1325
	file	"sub.c"
	line	185
	global	__size_of_ShowLedData
	__size_of_ShowLedData	equ	__end_of_ShowLedData-_ShowLedData
	
_ShowLedData:	
	opt	stack 7
; Regs used in _ShowLedData: [wreg-fsr0h+status,2+status,0]
;ShowLedData@DspBuf stored from wreg
	movwf	(ShowLedData@DspBuf)
	line	186
	
i1l22422:	
;sub.c: 186: switch (DspBuf)
	goto	i1l22424
	line	188
;sub.c: 187: {
;sub.c: 188: case 1: LATB0=LATB3=1;
	
i1l12510:	
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u393_21
	goto	u393_20
	
u393_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u394_24
u393_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u394_24:
	line	189
;sub.c: 189: break; case 2: LATA0=LATB0=LATA4=LATD2=LATD3=1;
	goto	i1l12527
	
i1l12512:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u395_21
	goto	u395_20
	
u395_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u396_24
u395_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u396_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u396_21
	goto	u396_20
	
u396_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u397_24
u396_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u397_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u397_21
	goto	u397_20
	
u397_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u398_24
u397_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u398_24:
	btfsc	(2152/8)^0100h,(2152)&7
	goto	u398_21
	goto	u398_20
	
u398_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u399_24
u398_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u399_24:
	line	190
;sub.c: 190: break; case 3: LATA0=LATB0=LATB3=LATA4=LATD3=1;
	goto	i1l12527
	
i1l12513:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u400_21
	goto	u400_20
	
u400_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u401_24
u400_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u401_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u401_21
	goto	u401_20
	
u401_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u402_24
u401_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u402_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u402_21
	goto	u402_20
	
u402_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u403_24
u402_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u403_24:
	btfsc	(2152/8)^0100h,(2152)&7
	goto	u403_21
	goto	u403_20
	
u403_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u404_24
u403_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u404_24:
	line	191
;sub.c: 191: break; case 4: LATB0=LATB3=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12514:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u405_21
	goto	u405_20
	
u405_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u406_24
u405_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u406_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u406_21
	goto	u406_20
	
u406_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u407_24
u406_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u407_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u407_21
	goto	u407_20
	
u407_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u408_24
u407_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u408_24:
	line	192
;sub.c: 192: break; case 5: LATA0=LATB3=LATA4=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12515:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u409_21
	goto	u409_20
	
u409_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u410_24
u409_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u410_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u410_21
	goto	u410_20
	
u410_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u411_24
u410_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u411_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u411_21
	goto	u411_20
	
u411_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u412_24
u411_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u412_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u412_21
	goto	u412_20
	
u412_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u413_24
u412_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u413_24:
	line	193
;sub.c: 193: break; case 6: LATA0=LATD3=LATB3=LATA4=LATD2=LATA1=1;
	goto	i1l12527
	
i1l12516:	
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u414_21
	goto	u414_20
	
u414_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u415_24
u414_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u415_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u415_21
	goto	u415_20
	
u415_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u416_24
u415_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u416_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u416_21
	goto	u416_20
	
u416_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u417_24
u416_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u417_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u417_21
	goto	u417_20
	
u417_21:
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	goto	u418_24
u417_20:
	movlb 2	; select bank2
	bcf	(2171/8)^0100h,(2171)&7
u418_24:
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u418_21
	goto	u418_20
	
u418_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u419_24
u418_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u419_24:
	line	194
;sub.c: 194: break; case 7: LATA0=LATB0=LATB3=1;
	goto	i1l12527
	
i1l12517:	
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u420_21
	goto	u420_20
	
u420_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u421_24
u420_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u421_24:
	btfsc	(2152/8)^0100h,(2152)&7
	goto	u421_21
	goto	u421_20
	
u421_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u422_24
u421_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u422_24:
	line	195
;sub.c: 195: break; case 8: LATA0=LATB0=LATB3=LATA4=LATD2=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12518:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u423_21
	goto	u423_20
	
u423_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u424_24
u423_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u424_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u424_21
	goto	u424_20
	
u424_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u425_24
u424_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u425_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u425_21
	goto	u425_20
	
u425_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u426_24
u425_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u426_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u426_21
	goto	u426_20
	
u426_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u427_24
u426_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u427_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u427_21
	goto	u427_20
	
u427_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u428_24
u427_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u428_24:
	btfsc	(2152/8)^0100h,(2152)&7
	goto	u428_21
	goto	u428_20
	
u428_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u429_24
u428_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u429_24:
	line	196
;sub.c: 196: break; case 9: LATA0=LATB0=LATB3=LATA4=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12519:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u430_21
	goto	u430_20
	
u430_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u431_24
u430_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u431_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u431_21
	goto	u431_20
	
u431_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u432_24
u431_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u432_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u432_21
	goto	u432_20
	
u432_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u433_24
u432_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u433_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u433_21
	goto	u433_20
	
u433_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u434_24
u433_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u434_24:
	btfsc	(2152/8)^0100h,(2152)&7
	goto	u434_21
	goto	u434_20
	
u434_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u435_24
u434_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u435_24:
	line	197
;sub.c: 197: break; case 0: LATA0=LATB0=LATB3=LATA4=LATD2=LATA1=1;
	goto	i1l12527
	
i1l12520:	
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u436_21
	goto	u436_20
	
u436_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u437_24
u436_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u437_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u437_21
	goto	u437_20
	
u437_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u438_24
u437_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u438_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u438_21
	goto	u438_20
	
u438_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u439_24
u438_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u439_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u439_21
	goto	u439_20
	
u439_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u440_24
u439_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u440_24:
	btfsc	(2152/8)^0100h,(2152)&7
	goto	u440_21
	goto	u440_20
	
u440_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u441_24
u440_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u441_24:
	line	198
;sub.c: 198: break; case 10: LATD3=0;
	goto	i1l12527
	
i1l12521:	
	movlb 2	; select bank2
	bcf	(2171/8)^0100h,(2171)&7
	line	200
;sub.c: 200: break; case 11: LATA0=LATB0=LATD2=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12522:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u442_21
	goto	u442_20
	
u442_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u443_24
u442_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u443_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u443_21
	goto	u443_20
	
u443_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u444_24
u443_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u444_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u444_21
	goto	u444_20
	
u444_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u445_24
u444_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u445_24:
	btfsc	(2152/8)^0100h,(2152)&7
	goto	u445_21
	goto	u445_20
	
u445_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u446_24
u445_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u446_24:
	line	201
;sub.c: 201: break; case 12: LATA0=LATA4=LATD2=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12523:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u447_21
	goto	u447_20
	
u447_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u448_24
u447_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u448_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u448_21
	goto	u448_20
	
u448_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u449_24
u448_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u449_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u449_21
	goto	u449_20
	
u449_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u450_24
u449_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u450_24:
	btfsc	(2148/8)^0100h,(2148)&7
	goto	u450_21
	goto	u450_20
	
u450_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u451_24
u450_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u451_24:
	line	202
;sub.c: 202: break; case 13: LATB0=LATB3=LATD2=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12524:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u452_21
	goto	u452_20
	
u452_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u453_24
u452_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u453_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u453_21
	goto	u453_20
	
u453_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u454_24
u453_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u454_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u454_21
	goto	u454_20
	
u454_21:
	movlb 2	; select bank2
	bsf	(2155/8)^0100h,(2155)&7
	goto	u455_24
u454_20:
	movlb 2	; select bank2
	bcf	(2155/8)^0100h,(2155)&7
u455_24:
	btfsc	(2155/8)^0100h,(2155)&7
	goto	u455_21
	goto	u455_20
	
u455_21:
	movlb 2	; select bank2
	bsf	(2152/8)^0100h,(2152)&7
	goto	u456_24
u455_20:
	movlb 2	; select bank2
	bcf	(2152/8)^0100h,(2152)&7
u456_24:
	line	203
;sub.c: 203: break; case 14: LATA4=LATD2=LATA1=1;
	goto	i1l12527
	
i1l12525:	
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u457_21
	goto	u457_20
	
u457_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u458_24
u457_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u458_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u458_21
	goto	u458_20
	
u458_21:
	movlb 2	; select bank2
	bsf	(2148/8)^0100h,(2148)&7
	goto	u459_24
u458_20:
	movlb 2	; select bank2
	bcf	(2148/8)^0100h,(2148)&7
u459_24:
	line	204
;sub.c: 204: break; case 15: LATA0=LATD2=LATA1=LATD3=1;
	goto	i1l12527
	
i1l12526:	
	movlb 2	; select bank2
	bsf	(2171/8)^0100h,(2171)&7
	btfsc	(2171/8)^0100h,(2171)&7
	goto	u460_21
	goto	u460_20
	
u460_21:
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	goto	u461_24
u460_20:
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
u461_24:
	btfsc	(2145/8)^0100h,(2145)&7
	goto	u461_21
	goto	u461_20
	
u461_21:
	movlb 2	; select bank2
	bsf	(2170/8)^0100h,(2170)&7
	goto	u462_24
u461_20:
	movlb 2	; select bank2
	bcf	(2170/8)^0100h,(2170)&7
u462_24:
	btfsc	(2170/8)^0100h,(2170)&7
	goto	u462_21
	goto	u462_20
	
u462_21:
	movlb 2	; select bank2
	bsf	(2144/8)^0100h,(2144)&7
	goto	u463_24
u462_20:
	movlb 2	; select bank2
	bcf	(2144/8)^0100h,(2144)&7
u463_24:
	line	205
;sub.c: 205: }
	goto	i1l12527
	line	186
	
i1l22424:	
	movf	(ShowLedData@DspBuf),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           38     6 (fixed)
; simple_byte           49    25 (average)
; jumptable            260     6 (fixed)
; rangetable            20     4 (fixed)
; spacedrange           37     6 (fixed)
; locatedrange          16     3 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr0l
	movlw	16
	subwf	fsr0l,w
skipnc
goto i1l12527
movlp high(i1S25802)
	lslf fsr0l,w
	addlw low(i1S25802)
	movwf pc
psect	swtext3,local,class=CONST,delta=2
global __pswtext3
__pswtext3:
i1S25802:
	ljmp	i1l12520
	ljmp	i1l12510
	ljmp	i1l12512
	ljmp	i1l12513
	ljmp	i1l12514
	ljmp	i1l12515
	ljmp	i1l12516
	ljmp	i1l12517
	ljmp	i1l12518
	ljmp	i1l12519
	ljmp	i1l12521
	ljmp	i1l12522
	ljmp	i1l12523
	ljmp	i1l12524
	ljmp	i1l12525
	ljmp	i1l12526
psect	text1325

	line	206
	
i1l12527:	
	return
	opt stack 0
GLOBAL	__end_of_ShowLedData
	__end_of_ShowLedData:
;; =============== function _ShowLedData ends ============

	signat	_ShowLedData,4216
	global	_Rx_Drive
psect	text1326,local,class=CODE,delta=2
global __ptext1326
__ptext1326:

;; *************** function _Rx_Drive *****************
;; Defined at:
;;		line 15 in file "rx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/6
;;		On exit  : 1F/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1326
	file	"rx.c"
	line	15
	global	__size_of_Rx_Drive
	__size_of_Rx_Drive	equ	__end_of_Rx_Drive-_Rx_Drive
	
_Rx_Drive:	
	opt	stack 8
; Regs used in _Rx_Drive: [wreg+fsr1l-status,0]
	line	16
	
i1l22260:	
;rx.c: 16: if (PB4 == 1)
	movlb 0	; select bank0
	btfss	(108/8),(108)&7
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l22268
u363_20:
	line	18
	
i1l22262:	
;rx.c: 17: {
;rx.c: 18: if (TmsRxH < 250)
	movlw	(0FAh)
	subwf	(_TmsRxH),w
	skipnc
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l22266
u364_20:
	line	19
	
i1l22264:	
;rx.c: 19: TmsRxH++;
	incf	(_TmsRxH),f
	goto	i1l9956
	line	21
	
i1l22266:	
;rx.c: 20: else
;rx.c: 21: RxBit = 0;
	clrf	(_RxBit)
	goto	i1l9956
	line	25
	
i1l22268:	
;rx.c: 23: else
;rx.c: 24: {
;rx.c: 25: if (TmsRxH >= 20)
	movlw	(014h)
	subwf	(_TmsRxH),w
	skipc
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l22272
u365_20:
	line	27
	
i1l22270:	
;rx.c: 26: {
;rx.c: 27: TmsRxH = 0;
	clrf	(_TmsRxH)
	line	28
;rx.c: 28: TmsRxL = 0;
	clrf	(_TmsRxL)
	line	29
;rx.c: 29: RxBit = 0;
	clrf	(_RxBit)
	line	30
;rx.c: 30: RxBuf[0] = 0;
	movlb 1	; select bank1
	clrf	(_RxBuf)^080h
	line	31
;rx.c: 31: RxBuf[1] = 0;
	clrf	0+(_RxBuf)^080h+01h
	line	32
;rx.c: 32: RxBuf[2] = 0;
	clrf	0+(_RxBuf)^080h+02h
	line	33
;rx.c: 33: RxBuf[3] = 0;
	clrf	0+(_RxBuf)^080h+03h
	line	34
;rx.c: 34: }
	goto	i1l9950
	line	35
	
i1l22272:	
;rx.c: 35: else if (TmsRxH)
	movf	(_TmsRxH),w
	skipz
	goto	u366_20
	goto	i1l9950
u366_20:
	line	37
	
i1l22274:	
;rx.c: 36: {
;rx.c: 37: if ((TmsRxH > TmsRxL)&&(TmsRxH>8))
	movf	(_TmsRxH),w
	subwf	(_TmsRxL),w
	skipnc
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l22280
u367_20:
	
i1l22276:	
	movlw	(09h)
	subwf	(_TmsRxH),w
	skipc
	goto	u368_21
	goto	u368_20
u368_21:
	goto	i1l22280
u368_20:
	line	38
	
i1l22278:	
;rx.c: 38: RxBuf[RxBit / 8] |= 0x80 >> (RxBit % 8);
	movf	(_RxBit),w
	movwf	(??_Rx_Drive+0)+0
	lsrf	(??_Rx_Drive+0)+0,f
	lsrf	(??_Rx_Drive+0)+0,f
	lsrf	(??_Rx_Drive+0)+0,f
	movf	0+(??_Rx_Drive+0)+0,w
	addlw	_RxBuf&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_RxBit),w
	andlw	07h
	movwf	(??_Rx_Drive+1)+0
	incf	(??_Rx_Drive+1)+0,f
	movlw	low(080h)
	movwf	(??_Rx_Drive+2)+0
	movlw	high(080h)
	movwf	(??_Rx_Drive+2)+0+1
	goto	u369_24
u369_25:
	rlf	(??_Rx_Drive+2)+1,w
	rrf	(??_Rx_Drive+2)+1,f
	rrf	(??_Rx_Drive+2)+0,f
u369_24:
	decfsz	(??_Rx_Drive+1)+0,f
	goto	u369_25
	movf	0+(??_Rx_Drive+2)+0,w
	iorwf	indf1,f
	line	39
	
i1l22280:	
;rx.c: 39: TmsRxH = 0;
	movlb 0	; select bank0
	clrf	(_TmsRxH)
	line	40
	
i1l22282:	
;rx.c: 40: TmsRxL = 0;
	clrf	(_TmsRxL)
	line	41
	
i1l22284:	
;rx.c: 41: if (++RxBit >= 32)
	movlw	(020h)
	incf	(_RxBit),f
	subwf	((_RxBit)),w
	skipc
	goto	u370_21
	goto	u370_20
u370_21:
	goto	i1l9950
u370_20:
	line	43
	
i1l22286:	
;rx.c: 42: {
;rx.c: 43: RxBit = 0;
	clrf	(_RxBit)
	line	45
	
i1l22288:	
;rx.c: 45: if(RxBuf[1]-RxBuf[0]==0XDF)
	movlb 1	; select bank1
	movf	0+(_RxBuf)^080h+01h,w
	movwf	(??_Rx_Drive+0)+0
	movlw	(0x0/2)
	movwf	(??_Rx_Drive+0)+0+1
	movf	1+(??_Rx_Drive+0)+0,w
	movwf	(??_Rx_Drive+2)+0+1
	movf	(_RxBuf)^080h,w
	subwf	0+(??_Rx_Drive+0)+0,w
	movwf	(??_Rx_Drive+2)+0
	skipc
	decf	(??_Rx_Drive+2)+0+1,f
		movf	0+(??_Rx_Drive+2)+0,w
	xorlw	223
	iorwf	1+(??_Rx_Drive+2)+0,w

	skipz
	goto	u371_21
	goto	u371_20
u371_21:
	goto	i1l9950
u371_20:
	line	46
	
i1l22290:	
;rx.c: 46: RxData = RxBuf[3];
	movf	0+(_RxBuf)^080h+03h,w
	movlb 0	; select bank0
	movwf	(_RxData)
	line	49
	
i1l9950:	
;rx.c: 47: }
;rx.c: 48: }
;rx.c: 49: if (TmsRxL < 250)
	movlw	(0FAh)
	movlb 0	; select bank0
	subwf	(_TmsRxL),w
	skipnc
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l9956
u372_20:
	line	50
	
i1l22292:	
;rx.c: 50: TmsRxL++;
	incf	(_TmsRxL),f
	line	52
	
i1l9956:	
	return
	opt stack 0
GLOBAL	__end_of_Rx_Drive
	__end_of_Rx_Drive:
;; =============== function _Rx_Drive ends ============

	signat	_Rx_Drive,88
	global	_exact_event_process
psect	text1327,local,class=CODE,delta=2
global __ptext1327
__ptext1327:

;; *************** function _exact_event_process *****************
;; Defined at:
;;		line 6 in file "CHIPINIT.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON BANK0hh  BANK0l   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1327
	file	"CHIPINIT.C"
	line	6
	global	__size_of_exact_event_process
	__size_of_exact_event_process	equ	__end_of_exact_event_process-_exact_event_process
	
_exact_event_process:	
	opt	stack 8
; Regs used in _exact_event_process: [wreg+status,2+status,0]
	line	8
	
i1l24148:	
;CHIPINIT.C: 8: TimeUs++;
	incf	(_TimeUs),f	;volatile
	line	11
	
i1l24150:	
;CHIPINIT.C: 11: if(TimeUs<20)return;
	movlw	(014h)
	subwf	(_TimeUs),w	;volatile
	skipnc
	goto	u667_21
	goto	u667_20
u667_21:
	goto	i1l24154
u667_20:
	goto	i1l7440
	line	12
	
i1l24154:	
;CHIPINIT.C: 12: TimeUs=0;Time2Ms++;
	clrf	(_TimeUs)	;volatile
	
i1l24156:	
	incf	(_Time2Ms),f	;volatile
	line	13
	
i1l24158:	
;CHIPINIT.C: 13: SysFunFlg0.OneBits.b1=1;
	bsf	(_SysFunFlg0),1	;volatile
	line	16
	
i1l24160:	
;CHIPINIT.C: 16: if(Time2Ms<5)return;
	movlw	(05h)
	subwf	(_Time2Ms),w	;volatile
	skipnc
	goto	u668_21
	goto	u668_20
u668_21:
	goto	i1l24164
u668_20:
	goto	i1l7440
	line	17
	
i1l24164:	
;CHIPINIT.C: 17: Time2Ms=0;Time10Ms++;
	clrf	(_Time2Ms)	;volatile
	
i1l24166:	
	incf	(_Time10Ms),f	;volatile
	line	19
	
i1l24168:	
;CHIPINIT.C: 19: SysFunFlg0.OneBits.b0=1;
	bsf	(_SysFunFlg0),0	;volatile
	line	22
	
i1l24170:	
;CHIPINIT.C: 22: if(Time10Ms<10)return;
	movlw	(0Ah)
	subwf	(_Time10Ms),w	;volatile
	skipnc
	goto	u669_21
	goto	u669_20
u669_21:
	goto	i1l24174
u669_20:
	goto	i1l7440
	line	23
	
i1l24174:	
;CHIPINIT.C: 23: Time10Ms=0;Time100Ms++;
	clrf	(_Time10Ms)	;volatile
	
i1l24176:	
	incf	(_Time100Ms),f	;volatile
	line	28
	
i1l24178:	
;CHIPINIT.C: 28: if(Time100Ms<10)return;
	movlw	(0Ah)
	subwf	(_Time100Ms),w	;volatile
	skipnc
	goto	u670_21
	goto	u670_20
u670_21:
	goto	i1l24182
u670_20:
	goto	i1l7440
	line	29
	
i1l24182:	
;CHIPINIT.C: 29: Time100Ms=0;TimeSec++;
	clrf	(_Time100Ms)	;volatile
	
i1l24184:	
	incf	(_TimeSec),f	;volatile
	line	34
	
i1l24186:	
;CHIPINIT.C: 34: if(TimeSec<60)return;
	movlw	(03Ch)
	subwf	(_TimeSec),w	;volatile
	skipnc
	goto	u671_21
	goto	u671_20
u671_21:
	goto	i1l24190
u671_20:
	goto	i1l7440
	line	35
	
i1l24190:	
;CHIPINIT.C: 35: TimeSec=0;
	clrf	(_TimeSec)	;volatile
	line	37
	
i1l24192:	
;CHIPINIT.C: 37: if((SysFunFlg0.OneBits.b7)&&(SysFunFlg1.OneBits.b2==0))
	btfss	(_SysFunFlg0),7	;volatile
	goto	u672_21
	goto	u672_20
u672_21:
	goto	i1l7440
u672_20:
	
i1l24194:	
	btfsc	(_SysFunFlg1),2	;volatile
	goto	u673_21
	goto	u673_20
u673_21:
	goto	i1l7440
u673_20:
	line	39
	
i1l24196:	
;CHIPINIT.C: 38: {
;CHIPINIT.C: 39: if(TimeMin)TimeMin--;
	movf	(_TimeMin),w	;volatile
	skipz
	goto	u674_20
	goto	i1l7440
u674_20:
	
i1l24198:	
	decf	(_TimeMin),f	;volatile
	line	41
	
i1l7440:	
	return
	opt stack 0
GLOBAL	__end_of_exact_event_process
	__end_of_exact_event_process:
;; =============== function _exact_event_process ends ============

	signat	_exact_event_process,88
psect	text1328,local,class=CODE,delta=2
global __ptext1328
__ptext1328:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
global __pbssBIGRAM
__pbssBIGRAM	equ	8960
	end
