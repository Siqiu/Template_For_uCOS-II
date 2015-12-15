#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\src\\usb_test\\src\\usb_cdc.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



/*------------------------------------------------------------------------------
 *      Definitions  based on usbcdc11.pdf (www.usb.org)
 *----------------------------------------------------------------------------*/
/* Communication device class specification version 1.10 */


/* Communication interface class code */
/* (usbcdc11.pdf, 4.2, Table 15) */


/* Communication interface class subclass codes */
/* (usbcdc11.pdf, 4.3, Table 16) */
#line 38 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* Communication interface class control protocol codes */
/* (usbcdc11.pdf, 4.4, Table 17) */


/* Data interface class code */
/* (usbcdc11.pdf, 4.5, Table 18) */


/* Data interface class protocol codes */
/* (usbcdc11.pdf, 4.7, Table 19) */
#line 61 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* Type values for bDescriptorType field of functional descriptors */
/* (usbcdc11.pdf, 5.2.3, Table 24) */



/* Type values for bDescriptorSubtype field of functional descriptors */
/* (usbcdc11.pdf, 5.2.3, Table 25) */
#line 86 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* CDC class-specific request codes */
/* (usbcdc11.pdf, 6.2, Table 46) */
/* see Table 45 for info about the specific requests. */
#line 125 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* Communication feature selector codes */
/* (usbcdc11.pdf, 6.2.2..6.2.4, Table 47) */



/* Feature Status returned for ABSTRACT_STATE Selector */
/* (usbcdc11.pdf, 6.2.3, Table 48) */




/* Control signal bitmap values for the SetControlLineState request */
/* (usbcdc11.pdf, 6.2.14, Table 51) */



/* CDC class-specific notification codes */
/* (usbcdc11.pdf, 6.3, Table 68) */
/* see Table 67 for Info about class-specific notifications */
#line 153 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"

/* UART state bitmap values (Serial state notification). */
/* (usbcdc11.pdf, 6.3.5, Table 69) */
#line 177 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_cdc.h"


/*------------------------------------------------------------------------------
 *      Structures  based on usbcdc11.pdf (www.usb.org)
 *----------------------------------------------------------------------------*/

/* Header functional descriptor */
/* (usbcdc11.pdf, 5.2.3.1) */
/* This header must precede any list of class-specific descriptors. */
typedef __packed struct _CDC_HEADER_DESCRIPTOR{
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* Header functional descriptor subtype */
  U16 bcdCDC;                               /* USB CDC specification release version */
} CDC_HEADER_DESCRIPTOR;

/* Call management functional descriptor */
/* (usbcdc11.pdf, 5.2.3.2) */
/* Describes the processing of calls for the communication class interface. */
typedef __packed struct _CDC_CALL_MANAGEMENT_DESCRIPTOR {
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* call management functional descriptor subtype */
  U8  bmCapabilities;                       /* capabilities that this configuration supports */
  U8  bDataInterface;                       /* interface number of the data class interface used for call management (optional) */
} CDC_CALL_MANAGEMENT_DESCRIPTOR;

/* Abstract control management functional descriptor */
/* (usbcdc11.pdf, 5.2.3.3) */
/* Describes the command supported by the communication interface class with the Abstract Control Model subclass code. */
typedef __packed struct _CDC_ABSTRACT_CONTROL_MANAGEMENT_DESCRIPTOR {
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* abstract control management functional descriptor subtype */
  U8  bmCapabilities;                       /* capabilities supported by this configuration */
} CDC_ABSTRACT_CONTROL_MANAGEMENT_DESCRIPTOR;

/* Union functional descriptors */
/* (usbcdc11.pdf, 5.2.3.8) */
/* Describes the relationship between a group of interfaces that can be considered to form a functional unit. */
typedef __packed struct _CDC_UNION_DESCRIPTOR {
  U8  bFunctionLength;                      /* size of this descriptor in bytes */
  U8  bDescriptorType;                      /* CS_INTERFACE descriptor type */
  U8  bDescriptorSubtype;                   /* union functional descriptor subtype */
  U8  bMasterInterface;                     /* interface number designated as master */
} CDC_UNION_DESCRIPTOR;

/* Union functional descriptors with one slave interface */
/* (usbcdc11.pdf, 5.2.3.8) */
typedef __packed struct _CDC_UNION_1SLAVE_DESCRIPTOR {
  CDC_UNION_DESCRIPTOR sUnion;              /* Union functional descriptor */
  U8                   bSlaveInterfaces[1]; /* Slave interface 0 */
} CDC_UNION_1SLAVE_DESCRIPTOR;

/* Line coding structure */
/* Format of the data returned when a GetLineCoding request is received */
/* (usbcdc11.pdf, 6.2.13) */
typedef __packed struct _CDC_LINE_CODING {
  U32 dwDTERate;                            /* Data terminal rate in bits per second */
  U8  bCharFormat;                          /* Number of stop bits */
  U8  bParityType;                          /* Parity bit type */
  U8  bDataBits;                            /* Number of data bits */
} CDC_LINE_CODING;

/* Notification header */
/* Data sent on the notification endpoint must follow this header. */
/* see  USB_SETUP_PACKET in file usb.h */
typedef USB_SETUP_PACKET CDC_NOTIFICATION_HEADER;



#line 2 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\src\\usb_test\\src\\usb_cdc.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



/* General USB header files                                                   */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */










#line 32 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"


typedef signed char     S8;
typedef unsigned char   U8;
typedef short           S16;
typedef unsigned short  U16;
typedef int             S32;
typedef unsigned int    U32;
typedef long long       S64;
typedef unsigned long long U64;
typedef unsigned char   BIT;
typedef unsigned int    BOOL;


/* bmRequestType.Dir */



/* bmRequestType.Type */





/* bmRequestType.Recipient */





/* bmRequestType Definition */
typedef __packed struct _REQUEST_TYPE {
  U8 Recipient : 5;                     /* D4..0: Recipient */
  U8 Type      : 2;                     /* D6..5: Type */
  U8 Dir       : 1;                     /* D7:    Data Phase Txsfer Direction */
} REQUEST_TYPE;

/* USB Standard Request Codes */
#line 81 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* USB GET_STATUS Bit Values */




/* USB Standard Feature selectors */



/* USB Default Control Pipe Setup Packet */
typedef __packed struct _USB_SETUP_PACKET {
  REQUEST_TYPE bmRequestType;           /* bmRequestType */
  U8  bRequest;                         /* bRequest */
  __packed union {
    U16        wValue;                  /* wValue */
    __packed struct {
      U8         wValueL;
      U8         wValueH;
    };
  };
  __packed union {
    U16        wIndex;                  /* wIndex */
    __packed struct {
      U8         wIndexL;
      U8         wIndexH;
    };
  };
  U16          wLength;                 /* wLength */
} USB_SETUP_PACKET;


/* USB Descriptor Types */
#line 125 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* USB Device Classes */
#line 139 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* bmAttributes in Configuration Descriptor */





/* bMaxPower in Configuration Descriptor */


/* bEndpointAddress in Endpoint Descriptor */




/* bmAttributes in Endpoint Descriptor */
#line 170 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_def.h"

/* USB Standard Device Descriptor */
typedef __packed struct _USB_DEVICE_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bcdUSB;
  U8  bDeviceClass;
  U8  bDeviceSubClass;
  U8  bDeviceProtocol;
  U8  bMaxPacketSize0;
  U16 idVendor;
  U16 idProduct;
  U16 bcdDevice;
  U8  iManufacturer;
  U8  iProduct;
  U8  iSerialNumber;
  U8  bNumConfigurations;
} USB_DEVICE_DESCRIPTOR;

/* USB 2.0 Device Qualifier Descriptor */
typedef __packed struct _USB_DEVICE_QUALIFIER_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bcdUSB;
  U8  bDeviceClass;
  U8  bDeviceSubClass;
  U8  bDeviceProtocol;
  U8  bMaxPacketSize0;
  U8  bNumConfigurations;
  U8  bReserved;
} USB_DEVICE_QUALIFIER_DESCRIPTOR;

/* USB Standard Configuration Descriptor */
typedef __packed struct _USB_CONFIGURATION_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 wTotalLength;
  U8  bNumInterfaces;
  U8  bConfigurationValue;
  U8  iConfiguration;
  U8  bmAttributes;
  U8  bMaxPower;
} USB_CONFIGURATION_DESCRIPTOR;

/* USB Standard Interface Descriptor */
typedef __packed struct _USB_INTERFACE_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U8  bInterfaceNumber;
  U8  bAlternateSetting;
  U8  bNumEndpoints;
  U8  bInterfaceClass;
  U8  bInterfaceSubClass;
  U8  bInterfaceProtocol;
  U8  iInterface;
} USB_INTERFACE_DESCRIPTOR;

/* USB Standard Endpoint Descriptor */
typedef __packed struct _USB_ENDPOINT_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U8  bEndpointAddress;
  U8  bmAttributes;
  U16 wMaxPacketSize;
  U8  bInterval;
} USB_ENDPOINT_DESCRIPTOR;

/* USB String Descriptor */
typedef __packed struct _USB_STRING_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bString/*[]*/;
} USB_STRING_DESCRIPTOR;

/* USB Common Descriptor */
typedef __packed struct _USB_COMMON_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
} USB_COMMON_DESCRIPTOR;

/* USB Interface Association Descriptor */
typedef __packed struct _USB_INTERFACE_ASSOCIATION_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U8  bFirstInterface;
  U8  bInterfaceCount;
  U8  bFunctionClass;
  U8  bFunctionSubclass;
  U8  bFunctionProtocol;
  U8  iFunction;
} USB_INTERFACE_ASSOCIATION_DESCRIPTOR;


#line 21 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* HID Subclass Codes */



/* HID Protocol Codes */







/* HID Descriptor Types */





/* HID Descriptor */
typedef __packed struct _HID_DESCRIPTOR {
  U8  bLength;
  U8  bDescriptorType;
  U16 bcdHID;
  U8  bCountryCode;
  U8  bNumDescriptors;
  /* Array of one or more descriptors */
  __packed struct _HID_DESCRIPTOR_LIST {
    U8  bDescriptorType;
    U16 wDescriptorLength;
  } DescriptorList[1];
} HID_DESCRIPTOR;


/* HID Request Codes */
#line 60 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* HID Report Types */





/* Usage Pages */
#line 84 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* ... */


/* Generic Desktop Page (0x01) */
#line 128 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* ... */

/* Simulation Controls Page (0x02) */
/* ... */


/* ... */

/* Virtual Reality Controls Page (0x03) */
/* ... */

/* Sport Controls Page (0x04) */
/* ... */

/* Game Controls Page (0x05) */
/* ... */

/* Generic Device Controls Page (0x06) */
/* ... */

/* Keyboard/Keypad Page (0x07) */

/* Keyboard Usage Keys */
extern const unsigned char HID_KEYBOARD_ID_TO_ASCII[256];
extern const unsigned char HID_KEYBOARD_ALT_ID_TO_ASCII[57];

/* Error "Keys" */





/* Letters */



/* Numbers */







/* Funtion Keys */





/* Modifier Keys */
#line 190 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Modifier Keys (values) */
#line 200 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* ... */

/* LED Page (0x08) */
#line 279 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Button Page (0x09) */
/*   There is no need to label these usages. */

/* Ordinal Page (0x0A) */
/*   There is no need to label these usages. */

/* Telephony Device Page (0x0B) */
#line 294 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"
/* ... */

/* Consumer Page (0x0C) */

/* ... */

/* and others ... */


/* HID Report Item Macros */

/* Main Items */






/* Data (Input, Output, Feature) */
#line 329 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Collection Data */
#line 338 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Global Items */
#line 367 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_hid.h"

/* Local Items */





#line 23 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* MSC Subclass Codes */
#line 27 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"

/* MSC Protocol Codes */





/* MSC Request Codes */




/* MSC Bulk-only Stage */
#line 47 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"


/* Bulk-only Command Block Wrapper */
typedef __packed struct _MSC_CBW {
  U32 dSignature;
  U32 dTag;
  U32 dDataLength;
  U8  bmFlags;
  U8  bLUN;
  U8  bCBLength;
  U8  CB[16];
} MSC_CBW;

/* Bulk-only Command Status Wrapper */
typedef __packed struct _MSC_CSW {
  U32 dSignature;
  U32 dTag;
  U32 dDataResidue;
  U8  bStatus;
} MSC_CSW;





/* CSW Status Definitions */





/* SCSI Commands */
#line 105 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb_msc.h"

#line 24 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"

/* USB Device header files                                                    */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Data structures --------------------------------*/

/* USB Device Core Endpoint Data Structure */
typedef struct _USBD_EP_DATA {
  U8 *pData;
  U16 Count;
} USBD_EP_DATA;


/*--------------------------- Global variables -------------------------------*/

/* USB Device Core Global Variables */
extern U16         USBD_DeviceStatus;
extern U8          USBD_DeviceAddress;
extern U8          USBD_Configuration;
extern U32         USBD_EndPointMask;
extern U32         USBD_EndPointHalt;
extern U32         USBD_EndPointStall;
extern U8          USBD_NumInterfaces;
extern U8          USBD_HighSpeed;
extern U8          USBD_ZLP;

extern USBD_EP_DATA     USBD_EP0Data;
extern USB_SETUP_PACKET USBD_SetupPacket;

//extern OS_TID      USBD_RTX_DevTask;
//extern OS_TID      USBD_RTX_EPTask[];
//extern OS_TID      USBD_RTX_CoreTask;


/*--------------------------- Functions exported to class specific files -----*/

extern void        USBD_SetupStage     (void);
extern void        USBD_DataInStage    (void);
extern void        USBD_DataOutStage   (void);
extern void        USBD_StatusInStage  (void);
extern void        USBD_StatusOutStage (void);


/*--------------------------- Event handling routines ------------------------*/

extern        void usbd_class_init    (void);

extern        void USBD_EndPoint0     (U32 event);

extern  void USBD_RTX_EndPoint0 (void);


#line 27 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core_cdc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Core overridable class specific functions ------*/

extern BOOL USBD_EndPoint0_Setup_CDC_ReqToIF (void);
extern BOOL USBD_EndPoint0_Out_CDC_ReqToIF   (void);


#line 28 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core_hid.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Core overridable class specific functions ------*/

extern BOOL USBD_ReqGetDescriptor_HID        (U8 **pD, U32 *len);
extern BOOL USBD_EndPoint0_Setup_HID_ReqToIF (void);
extern BOOL USBD_EndPoint0_Out_HID_ReqToIF   (void);


#line 29 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_core_msc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Core overridable class specific functions ------*/

extern void USBD_ReqClrFeature_MSC           (U32 EPNum);
extern BOOL USBD_EndPoint0_Setup_MSC_ReqToIF (void);
extern BOOL USBD_EndPoint0_Out_MSC_ReqToIF   (void);


#line 30 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_desc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



#line 29 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_desc.h"

#line 32 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_event.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* USB Device - Device Events                                                 */
#line 29 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_event.h"

/* USB Device - Endpoint Events                                               */
#line 44 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_event.h"

/* USB Device - Core Events                                                   */





/* USB Device - Device Events Callback Pointers                               */
extern void (* const USBD_P_Power_Event    )(BOOL power);
extern void (* const USBD_P_Reset_Event    )(void);
extern void (* const USBD_P_Suspend_Event  )(void);
extern void (* const USBD_P_Resume_Event   )(void);
extern void (* const USBD_P_WakeUp_Event   )(void);
extern void (* const USBD_P_SOF_Event      )(void);
extern void (* const USBD_P_Error_Event    )(U32 error);

/* USB Device - Endpoint Events Callback Pointers                             */
extern void (* const USBD_P_EP[16])         (U32 event);

/* USB Device - Core Events Callback Pointers                                 */
extern void (* const USBD_P_Configure_Event)(void);
extern void (* const USBD_P_Interface_Event)(void);
extern void (* const USBD_P_Feature_Event  )(void);

/* USB Device - RTX version RTX tasks initialization                          */
extern void USBD_RTX_TaskInit               (void);

#line 33 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_cdc_acm.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Event handling routines ------------------------*/

extern           void USBD_CDC_ACM_Reset_Event          (void);

extern           void USBD_CDC_ACM_SOF_Event            (void);

extern           void USBD_CDC_ACM_EP_INTIN_Event       (U32 event);
extern           void USBD_CDC_ACM_EP_BULKIN_Event      (U32 event);
extern           void USBD_CDC_ACM_EP_BULKOUT_Event     (U32 event);
extern           void USBD_CDC_ACM_EP_BULK_Event        (U32 event);

extern     void USBD_RTX_CDC_ACM_EP_INTIN_Event   (void);
extern     void USBD_RTX_CDC_ACM_EP_BULKIN_Event  (void);
extern     void USBD_RTX_CDC_ACM_EP_BULKOUT_Event (void);
extern     void USBD_RTX_CDC_ACM_EP_BULK_Event    (void);


#line 34 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_hid.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Global constants -------------------------------*/

/* USB HID Class API enumerated constants                                     */
enum {
  USBD_HID_REQ_EP_CTRL = 0,             /* Request from control endpoint      */
  USBD_HID_REQ_EP_INT,                  /* Request from interrupt endpoint    */
  USBD_HID_REQ_PERIOD_UPDATE            /* Request from periodic update       */
};


/*--------------------------- Event handling routines ------------------------*/

extern        void USBD_HID_Configure_Event    (void);
extern        void USBD_HID_SOF_Event          (void);

extern        void USBD_HID_EP_INTIN_Event     (U32 event);
extern        void USBD_HID_EP_INTOUT_Event    (U32 event);
extern        void USBD_HID_EP_INT_Event       (U32 event);

extern  void USBD_RTX_HID_EP_INTIN_Event (void);
extern  void USBD_RTX_HID_EP_INTOUT_Event(void);
extern  void USBD_RTX_HID_EP_INT_Event   (void);


#line 35 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_msc.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/*--------------------------- Global variables -------------------------------*/

/* USB Device Mass Storage Device Class Global Variables */
extern       BOOL USBD_MSC_MediaReady;
extern       BOOL USBD_MSC_ReadOnly;
extern       U32  USBD_MSC_MemorySize;
extern       U32  USBD_MSC_BlockSize;
extern       U32  USBD_MSC_BlockGroup;
extern       U32  USBD_MSC_BlockCount;
extern       U8  *USBD_MSC_BlockBuf;


/*--------------------------- Event handling routines ------------------------*/

extern        void USBD_MSC_EP_BULKIN_Event      (U32 event);
extern        void USBD_MSC_EP_BULKOUT_Event     (U32 event);
extern        void USBD_MSC_EP_BULK_Event        (U32 event);

extern  void USBD_RTX_MSC_EP_BULKIN_Event  (void);
extern  void USBD_RTX_MSC_EP_BULKOUT_Event (void);
extern  void USBD_RTX_MSC_EP_BULK_Event    (void);


#line 36 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usbd_hw.h"
/* CMSIS-DAP Interface Firmware
 * Copyright (c) 2009-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */




/* USB Hardware Functions */
extern void USBD_Init        (void);
extern void USBD_Connect     (BOOL con);
extern void USBD_Reset       (void);
extern void USBD_Suspend     (void);
extern void USBD_Resume      (void);
extern void USBD_WakeUp      (void);
extern void USBD_WakeUpCfg   (BOOL cfg);
extern void USBD_SetAddress  (U32  adr, U32 setup);
extern void USBD_Configure   (BOOL cfg);
extern void USBD_ConfigEP    (USB_ENDPOINT_DESCRIPTOR *pEPD);
extern void USBD_DirCtrlEP   (U32  dir);
extern void USBD_EnableEP    (U32  EPNum);
extern void USBD_DisableEP   (U32  EPNum);
extern void USBD_ResetEP     (U32  EPNum);
extern void USBD_SetStallEP  (U32  EPNum);
extern void USBD_ClrStallEP  (U32  EPNum);
extern void USBD_ClearEPBuf  (U32  EPNum);
extern U32  USBD_ReadEP      (U32  EPNum, U8 *pData);
extern U32  USBD_WriteEP     (U32  EPNum, U8 *pData, U32 cnt);
extern U32  USBD_GetFrame    (void);
extern U32  USBD_GetError    (void);

#line 37 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\USBStack\\inc\\usb.h"

#line 3 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\BSP\\Library\\src\\usb_test\\src\\usb_cdc.c"
