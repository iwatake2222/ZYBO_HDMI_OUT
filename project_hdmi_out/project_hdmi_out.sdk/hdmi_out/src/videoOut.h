/*
 * videoOut.h
 *
 *  Created on: 2018/01/25
 *      Author: tak
 */

#ifndef SRC_VIDEOOUT_H_
#define SRC_VIDEOOUT_H_

int videoOut_init(uint16_t vtcDeviceId, uint16_t vdmaDeviceId, int width, int height, int bytePerPixel, int stride);
int videoOut_setSrcAddress(uint32_t address);
int videoOut_start();
void videoOut_stop();
void videoOut_dumpStatus();

#endif /* SRC_VIDEOOUT_H_ */
