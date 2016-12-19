/* Copyright (c) 2014 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 */
/** @file
 *
 * @defgroup retarget Retarget layer for stdio functions
 * @{
 * @ingroup app_common
 * @} */
#include <stdio.h>
#include <stdint.h>
#include "stm32f4xx_conf.h"

#if !defined(__ICCARM__)
struct __FILE
{
    int handle;
};
#endif

FILE __stdout;
FILE __stdin;

#if defined(__CC_ARM) ||  defined(__ICCARM__)
int fgetc(FILE * p_file)
{
	(void) p_file;
    return -1;
}


int fputc(int ch, FILE * p_file)
{
	(void) p_file;
	while ((USART1->SR & 0X40) == 0);
	USART1->DR = (u8) ch;
	return ch;
}

#elif defined(__GNUC__)

int _write(int file, const char * p_char, int len)
{
    int i;

    UNUSED_PARAMETER(file);

    for (i = 0; i < len; i++) {
		while ((USART1->SR & 0X40) == 0);
		USART1->DR = (uint8_t) p_char[i];
    }

    return len;
}


int _read(int file, char * p_char, int len)
{
    return 0;
}
#endif

