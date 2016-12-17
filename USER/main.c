#include "sys.h"
#include "delay.h"
#include "usart.h"

int main(void)
{        
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);//设置系统中断优先级分组2
	delay_init(168);  //初始化延时函数
	uart_init(115200);		//初始化串口波特率为115200
	printf("Applicate starts, compliation date & time: %s, %s\r\n", __DATE__, __TIME__);
	for (;;) {
	}
}


