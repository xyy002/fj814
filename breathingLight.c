//*********************************************************
#include "includes.h"
//*********************************************************

void RGBSwitchStautus(uchar onoff)
{
    if(onoff)
    {
 		LED1_PMW_EN_Flag = 1;
		s_u8Led1PWMCounter = 0;
		s_u8Led1Direction = 0;  
        H1_ON();H2_OFF();H3_OFF();
    }
    else 
    {
		LED1_PMW_EN_Flag = 0;
		LED2_PMW_EN_Flag = 0;
		LED3_PMW_EN_Flag = 0;
        H1_ON();H2_ON();H3_ON();	        
    }
}

//---------------------------呼吸灯程序-----------------
void RGBbreathing(void)
{
    if(++s_u8TimeCounter >= 50)	//每10ms调整一次LED占空比
    {
        s_u8TimeCounter	= 0;

        if(LED1_PMW_EN_Flag)
        {
                //如果是渐亮方向变化，则占空比递增
                if((s_u8Led1PWMCounter <=	LED_PWM_LIMIT_MAX)&&(s_u8Led1Direction == 0))
                {
                    s_u8Led1PWMCounter++;
                    if(s_u8Led1PWMCounter >= LED_PWM_LIMIT_MAX)
                    {
                        s_u8Led1Direction	=	1;
                        LED2_PMW_EN_Flag = 1;
                        s_u8Led2Direction = 0;
                        s_u8Led2PWMCounter = 0;
                    }
                }
                //如果是渐灭方向变化，则占空比递减
                if((s_u8Led1PWMCounter >	LED_PWM_LIMIT_MIN)&&(s_u8Led1Direction == 1))    
                        //此处有坑，若写成“>=”，则达不到预期效果
                {
                    s_u8Led1PWMCounter--;
                    if(s_u8Led1PWMCounter <= LED_PWM_LIMIT_MIN)
                    {
                        s_u8Led1Direction	=	0;
                        LED1_PMW_EN_Flag = 0;
                    //	s_u8LedPWMCounter	=	LED_PWM_LIMIT_MIN;
                    }
                }
                s_u8PWM1Counter	=	s_u8Led1PWMCounter;	//获取LED的占空比
        }
        
        if(LED2_PMW_EN_Flag)
        {
                //如果是渐亮方向变化，则占空比递增
                if((s_u8Led2PWMCounter <=	LED_PWM_LIMIT_MAX)&&(s_u8Led2Direction == 0))
                {
                    s_u8Led2PWMCounter++;
                    if(s_u8Led2PWMCounter >= LED_PWM_LIMIT_MAX)
                    {
                        s_u8Led2Direction	=	1;
                        LED3_PMW_EN_Flag = 1;
                        s_u8Led3Direction = 0;
                        s_u8Led3PWMCounter = 0;
                    }
                }
                //如果是渐灭方向变化，则占空比递减
                if((s_u8Led2PWMCounter >	LED_PWM_LIMIT_MIN)&&(s_u8Led2Direction == 1))    
                        //此处有坑，若写成“>=”，则达不到预期效果
                {
                    s_u8Led2PWMCounter--;
                    if(s_u8Led2PWMCounter <= LED_PWM_LIMIT_MIN)
                    {
                        s_u8Led2Direction	=	0;
                        LED2_PMW_EN_Flag = 0;
                    //	s_u8LedPWMCounter	=	LED_PWM_LIMIT_MIN;
                    }
                }
                s_u8PWM2Counter	=	s_u8Led2PWMCounter;	//获取LED的占空比
        }
        

        if(LED3_PMW_EN_Flag)
        {
                //如果是渐亮方向变化，则占空比递增
                if((s_u8Led3PWMCounter <=	LED_PWM_LIMIT_MAX)&&(s_u8Led3Direction == 0))
                {
                    s_u8Led3PWMCounter++;
                    if(s_u8Led3PWMCounter >= LED_PWM_LIMIT_MAX)
                    {
                        s_u8Led3Direction	=	1;
                        LED1_PMW_EN_Flag = 1;
                        s_u8Led1Direction = 0;
                        s_u8Led1PWMCounter = 0;
                        //s_u8LedPWMCounter	=	LED_PWM_LIMIT_MAX;
                    }
                }
                //如果是渐灭方向变化，则占空比递减
                if((s_u8Led3PWMCounter >	LED_PWM_LIMIT_MIN)&&(s_u8Led3Direction == 1))    
                        //此处有坑，若写成“>=”，则达不到预期效果
                {
                    s_u8Led3PWMCounter--;
                    if(s_u8Led3PWMCounter <= LED_PWM_LIMIT_MIN)
                    {
                        s_u8Led3Direction	=	0;
                        LED3_PMW_EN_Flag = 0;
                    //	s_u8LedPWMCounter	=	LED_PWM_LIMIT_MIN;
                    }
                }
                s_u8PWM3Counter	=	s_u8Led3PWMCounter;	//获取LED的占空比  
        }
    }
    
    if(s_u8PWM1Counter	>	10)	//占空比大于0，则点亮LED，否则熄灭
    {
        if(LED1_PMW_EN_Flag)
        {
            H1_ON();	
        }
        s_u8PWM1Counter--;
    }
    else
    {
        if(LED1_PMW_EN_Flag)
        {
            H1_OFF();
        }
    }

    if(s_u8PWM2Counter	>	10)	//占空比大于0，则点亮LED，否则熄灭
    {
        if(LED2_PMW_EN_Flag)
        {
            H2_ON();	
        }
        s_u8PWM2Counter--;
    }
    else
    {
        if(LED2_PMW_EN_Flag)
        {
            H2_OFF();
        }
    }
    
    if(s_u8PWM3Counter	>	10)	//占空比大于0，则点亮LED，否则熄灭
    {
        if(LED3_PMW_EN_Flag)
        {
            H3_ON();	
        }
        s_u8PWM3Counter--;
    }
    else
    {
        if(LED3_PMW_EN_Flag)
        {
            H3_OFF();
        }
    }
}



