#include "sys.h"
#include "delay.h"
#include "usart.h"

int main(void)
{        
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);//����ϵͳ�ж����ȼ�����2
	delay_init(168);  //��ʼ����ʱ����
	uart_init(115200);		//��ʼ�����ڲ�����Ϊ115200
	printf("Applicate starts, compliation date & time: %s, %s\r\n", __DATE__, __TIME__);
	for (;;) {
	}
}


