#include "usart.h"

int main(void)
{        
	uart_init(115200);		//��ʼ�����ڲ�����Ϊ115200
	printf("Applicate starts, compliation date & time: %s, %s\r\n", __DATE__, __TIME__);
	for (;;) {
	}
}


