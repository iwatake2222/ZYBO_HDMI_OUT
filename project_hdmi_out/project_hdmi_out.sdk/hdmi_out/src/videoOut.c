/*
 * videoOut.c
 *
 *  Created on: 2018/01/25
 *      Author: tak
 */


#include "common.h"
#include "xparameters.h"
#include "xvtc.h"
#include "xaxivdma.h"
#include "videoOut.h"

static XVtc	s_vtc;
static XAxiVdma s_axiVdma;

int videoOut_init(uint16_t vtcDeviceId, uint16_t vdmaDeviceId, int width, int height, int bytePerPixel, int stride)
{
	int status;
	XVtc_Config *configVtc;
	XAxiVdma_Config *configVdma;

	/*** Initialize VTC ***/
	configVtc = XVtc_LookupConfig(vtcDeviceId);
	if (!configVtc){
		LOG_E("XVtc_LookupConfig: %d\n", vtcDeviceId);
		return RET_ERR_XDRV;
	}
	status = XVtc_CfgInitialize(&s_vtc, configVtc, configVtc->BaseAddress);
	if (status != (XST_SUCCESS)) {
		LOG_E("XVtc_CfgInitialize: %d\n", status);
		return RET_ERR_XDRV;
	}


	/*** Initialize VDMA ***/
	configVdma = XAxiVdma_LookupConfig(vdmaDeviceId);
	if (!configVdma){
		LOG_E("XAxiVdma_LookupConfig: %d\n", vdmaDeviceId);
		return RET_ERR_XDRV;
	}

	status = XAxiVdma_CfgInitialize(&s_axiVdma, configVdma, configVdma->BaseAddress);
	if (status != XST_SUCCESS) {
		LOG_E("XAxiVdma_CfgInitialize: %d\n", status);
		return RET_ERR_XDRV;
	}

	XAxiVdma_DmaSetup ReadCfg;
	ReadCfg.VertSizeInput = height;
	ReadCfg.HoriSizeInput = width * bytePerPixel;
	ReadCfg.Stride = stride;
	ReadCfg.FrameDelay = 1;		/* 0 or 1 */
	ReadCfg.EnableCircularBuf = 1;
	ReadCfg.EnableSync = 1;  /* Gen-Lock */
	ReadCfg.PointNum = 0;
	ReadCfg.EnableFrameCounter = 0; /* Endless transfers */
	ReadCfg.FixedFrameStoreAddr = 0; /* We are not doing parking */
	status = XAxiVdma_DmaConfig(&s_axiVdma, XAXIVDMA_READ, &ReadCfg);
	if (status != XST_SUCCESS) {
		LOG_E("XAxiVdma_DmaConfig: %d\n", status);
		return RET_ERR_XDRV;
	}
}

int videoOut_setSrcAddress(uint32_t address)
{
	UINTPTR FrameStoreStartAddr[1];
	FrameStoreStartAddr[0] = address;
	int status = XAxiVdma_DmaSetBufferAddr(&s_axiVdma, XAXIVDMA_READ, FrameStoreStartAddr);
	if (status != XST_SUCCESS) {
		LOG_E("XAxiVdma_DmaSetBufferAddr: %d\n", status);
		return RET_ERR_XDRV;
	}
}

int videoOut_start()
{
	XVtc_Enable(&s_vtc);

	/* Start the Read channel of VDMA */
	int status = XAxiVdma_DmaStart(&s_axiVdma, XAXIVDMA_READ);
	if (status != XST_SUCCESS) {
		LOG_E("XAxiVdma_DmaStart: %d\n", status);
		return RET_ERR_XDRV;
	}
}

void videoOut_stop()
{
	XAxiVdma_DmaStop(&s_axiVdma, XAXIVDMA_READ);
	XVtc_Disable(&s_vtc);
}


void videoOut_dumpStatus()
{
	XAxiVdma_DmaRegisterDump(&s_axiVdma, XAXIVDMA_READ);
}
