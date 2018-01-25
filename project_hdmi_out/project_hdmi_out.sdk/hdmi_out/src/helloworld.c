/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "common.h"
#include "videoOut.h"

#define IMAGE_WIDTH  1280
#define IMAGE_HEIGHT 720
#define IMAGE_STRIDE (IMAGE_WIDTH * 3)
//#define IMAGE_STRIDE 0x1000
#define IMAGE_BUFFER_A  0x08000000
#define IMAGE_BUFFER_B  0x09000000

void createTestDrawBuffers()
{
	// todo: Pixel format seems GBR, for some reasons...
	Xil_DCacheDisable();
	/* Create buffer A as solid RED color image */
	for (int v = 0; v < IMAGE_HEIGHT; v++) {
		volatile uint8_t *ptr = (volatile uint8_t*)(IMAGE_BUFFER_A + (IMAGE_STRIDE * v));
		for (int h = 0; h < IMAGE_WIDTH; h++) {
			*ptr++ = 0xFF;  *ptr++ = 0x00; *ptr++ = 0x00;
		}
	}
	/* Create buffer B as color bar */
	for (int v = 0; v < IMAGE_HEIGHT / 2; v++) {
		volatile uint8_t *ptr = (volatile uint8_t*)(IMAGE_BUFFER_B + (IMAGE_STRIDE * v));
		for (int h = 0 * IMAGE_WIDTH / 3; h < 1 * IMAGE_WIDTH / 3; h++) { *ptr++ = 0xFF;  *ptr++ = 0x00; *ptr++ = 0x00; }
		for (int h = 1 * IMAGE_WIDTH / 3; h < 2 * IMAGE_WIDTH / 3; h++) { *ptr++ = 0x00;  *ptr++ = 0xFF; *ptr++ = 0x00; }
		for (int h = 2 * IMAGE_WIDTH / 3; h < 3 * IMAGE_WIDTH / 3; h++) { *ptr++ = 0x00;  *ptr++ = 0x00; *ptr++ = 0xFF; }
	}
	for (int v = IMAGE_HEIGHT / 2; v < IMAGE_HEIGHT; v++) {
		volatile uint8_t *ptr = (volatile uint8_t*)(IMAGE_BUFFER_B + (IMAGE_STRIDE * v));
		for (int h = 0 * IMAGE_WIDTH / 3; h < 1 * IMAGE_WIDTH / 3; h++) { *ptr++ = 0xFF;  *ptr++ = 0xFF; *ptr++ = 0xFF; }
		for (int h = 1 * IMAGE_WIDTH / 3; h < 2 * IMAGE_WIDTH / 3; h++) { *ptr++ = 0x88;  *ptr++ = 0x88; *ptr++ = 0x88; }
		for (int h = 2 * IMAGE_WIDTH / 3; h < 3 * IMAGE_WIDTH / 3; h++) { *ptr++ = 0x00;  *ptr++ = 0x00; *ptr++ = 0x00; }
	}
	Xil_DCacheEnable();
}

int main()
{
	init_platform();
	LOG("Hello World\n\r");

	createTestDrawBuffers();

	/* Initialize HDMI OUT */
	videoOut_init(XPAR_AXIVDMA_0_DEVICE_ID, XPAR_VTC_0_DEVICE_ID, IMAGE_WIDTH, IMAGE_HEIGHT, 3, IMAGE_STRIDE);
	videoOut_setSrcAddress(IMAGE_BUFFER_A);
	videoOut_start();

	/* control to switch buffer */
	while(1) {
		char c = getchar();
		switch (c) {
		case 'a':
			videoOut_stop();
			videoOut_setSrcAddress(IMAGE_BUFFER_A);
			videoOut_start();
			break;
		case 'b':
			videoOut_stop();
			videoOut_setSrcAddress(IMAGE_BUFFER_B);
			videoOut_start();
			break;
		default:
			videoOut_dumpStatus();
			break;
		}
	}

	cleanup_platform();
	return 0;
}
