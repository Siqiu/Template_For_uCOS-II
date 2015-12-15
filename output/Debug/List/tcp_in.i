#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
/**
 * @file
 * Transmission Control Protocol, incoming traffic
 *
 * The input processing functions of the TCP layer.
 *
 * These functions are generally called in the order (ip_input() ->)
 * tcp_input() -> * tcp_process() -> tcp_receive() (-> application).
 * 
 */

/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"
/**
 * @file
 *
 * lwIP Options Configuration
 */

/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */



/*
 * Include user defined options first. Anything not defined in these files
 * will be set to standard values. Override anything you dont like!
 */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch\\lwipopts.h"
/**
  ******************************************************************************
  * @file    lwipopts.h
  * This file is based on \src\include\lwip\opt.h 
  ******************************************************************************
   * Copyright (c) 2013 - 2014, Freescale Semiconductor, Inc.
   * All rights reserved.
   *
   * Redistribution and use in source and binary forms, with or without modification,
   * are permitted provided that the following conditions are met:
   *
   * o Redistributions of source code must retain the above copyright notice, this list
   *   of conditions and the following disclaimer.
   *
   * o Redistributions in binary form must reproduce the above copyright notice, this
   *   list of conditions and the following disclaimer in the documentation and/or
   *   other materials provided with the distribution.
   *
   * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
   *   contributors may be used to endorse or promote products derived from this
   *   software without specific prior written permission.
   *
   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
   * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
   * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
   * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
   * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
   * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
   * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
   * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
   */




/*include fsl os abstraction header file to judge whether OS is used*/

/**
 * SYS_LIGHTWEIGHT_PROT==1: if you want inter-task protection for certain
 * critical regions during buffer allocation, deallocation and memory
 * allocation and deallocation.
 */



/**
 * NO_SYS==0: Use RTOS
 */

/**
 * LWIP_NETCONN==1: Enable Netconn API (require to use api_lib.c)
 */

/**
 * LWIP_SOCKET==1: Enable Socket API (require to use sockets.c)
 */




#line 78 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch\\lwipopts.h"
/* ---------- Memory options ---------- */
/**
 * MEM_ALIGNMENT: should be set to the alignment of the CPU
 *    4 byte alignment -> #define MEM_ALIGNMENT 4
 *    2 byte alignment -> #define MEM_ALIGNMENT 2
 */



/**
 * MEM_SIZE: the size of the heap memory. If the application will send
 * a lot of data that needs to be copied, this should be set high.
 */



/* MEMP_NUM_PBUF: the number of memp struct pbufs. If the application
   sends a lot of data out of ROM (or other static memory), this
   should be set high. */

/* MEMP_NUM_UDP_PCB: the number of UDP protocol control blocks. One
   per active UDP "connection". */

/* MEMP_NUM_TCP_PCB: the number of simulatenously active TCP
   connections. */

/* MEMP_NUM_TCP_PCB_LISTEN: the number of listening TCP
   connections. */

/* MEMP_NUM_TCP_SEG: the number of simultaneously queued TCP
   segments. */

/* MEMP_NUM_SYS_TIMEOUT: the number of simulateously active
   timeouts. */



/* ---------- Pbuf options ---------- */
/* PBUF_POOL_SIZE: the number of buffers in the pbuf pool. */


/* PBUF_POOL_BUFSIZE: the size of each pbuf in the pbuf pool. */



/* ---------- TCP options ---------- */



/* Controls if TCP should queue segments that arrive out of
   order. Define to 0 if your device is low on memory. */


/* TCP Maximum segment size. */


/* TCP sender buffer space (bytes). */


/* TCP sender buffer space (pbufs). This must be at least = 2 *
   TCP_SND_BUF/TCP_MSS for things to work. */


/* TCP receive window. */



/* ---------- ICMP options ---------- */



/* ---------- DHCP options ---------- */
/* Define LWIP_DHCP to 1 if you want DHCP configuration of
   interfaces. DHCP is not implemented in lwIP 0.5.1, however, so
   turning this on does currently not work. */



/* ---------- UDP options ---------- */




/* ---------- Statistics options ---------- */




/*
   --------------------------------------
   ---------- Checksum options ----------
   --------------------------------------
*/

/* 
Some MCU allow computing and verifying the IP, UDP, TCP and ICMP checksums by hardware:
 - To use this feature let the following define uncommented.
 - To disable it and process by CPU comment the  the checksum.
*/
//#define CHECKSUM_BY_HARDWARE 


#line 194 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch\\lwipopts.h"
  /* CHECKSUM_GEN_IP==1: Generate checksums in software for outgoing IP packets.*/

  /* CHECKSUM_GEN_UDP==1: Generate checksums in software for outgoing UDP packets.*/

  /* CHECKSUM_GEN_TCP==1: Generate checksums in software for outgoing TCP packets.*/

  /* CHECKSUM_CHECK_IP==1: Check checksums in software for incoming IP packets.*/

  /* CHECKSUM_CHECK_UDP==1: Check checksums in software for incoming UDP packets.*/

  /* CHECKSUM_CHECK_TCP==1: Check checksums in software for incoming TCP packets.*/



/*
   ------------------------------------
   ---------- Debugging options ----------
   ------------------------------------
*/


//#define ICMP_DEBUG                      LWIP_DBG_ON
//#define UDP_DEBUG                       LWIP_DBG_ON






/**
 * DEFAULT_RAW_RECVMBOX_SIZE: The mailbox size for the incoming packets on a
 * NETCONN_RAW. The queue size value itself is platform-dependent, but is passed
 * to sys_mbox_new() when the recvmbox is created.
 */


/**
 * DEFAULT_UDP_RECVMBOX_SIZE: The mailbox size for the incoming packets on a
 * NETCONN_UDP. The queue size value itself is platform-dependent, but is passed
 * to sys_mbox_new() when the recvmbox is created.
 */


/**
 * DEFAULT_TCP_RECVMBOX_SIZE: The mailbox size for the incoming packets on a
 * NETCONN_TCP. The queue size value itself is platform-dependent, but is passed
 * to sys_mbox_new() when the recvmbox is created.
 */


/**
 * DEFAULT_ACCEPTMBOX_SIZE: The mailbox size for the incoming connections.
 * The queue size value itself is platform-dependent, but is passed to
 * sys_mbox_new() when the acceptmbox is created.
 */




/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
#line 46 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/debug.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */



#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/arch.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */











#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/cc.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */



#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\port\\Os_cpu.h"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*
*
*                              (c) Copyright 2010; Micrium, Inc.; Weston, FL
*                    All rights reserved.  Protected by international copyright laws.
*
*                                           ARM Cortex-M4 Port
*
* File      : OS_CPU.H
* Version   : V2.92
* By        : JJL
*
* LICENSING TERMS:
* ---------------
*             uC/OS-III is provided in source form to registered licensees ONLY.  It is 
*             illegal to distribute this source code to any third party unless you receive 
*             written permission by an authorized Micrium representative.  Knowledge of 
*             the source code may NOT be used to develop a similar product.
*
*             Please help us continue to provide the Embedded community with the finest
*             software available.  Your honesty is greatly appreciated.
*
*             You can contact us at www.micrium.com.
*
* For       : ARMv7 Cortex-M4
* Mode      : Thumb-2 ISA
* Toolchain : IAR EWARM
*********************************************************************************************************
*/














/*
*********************************************************************************************************
*                                               MACROS
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                       TIMESTAMP CONFIGURATION
*
* Note(s) : (1) OS_TS_GET() is generally defined as CPU_TS_Get32() to allow CPU timestamp timer to be of
*               any data type size.
*
*           (2) For architectures that provide 32-bit or higher precision free running counters 
*               (i.e. cycle count registers):
*
*               (a) OS_TS_GET() may be defined as CPU_TS_TmrRd() to improve performance when retrieving
*                   the timestamp.
*
*               (b) CPU_TS_TmrRd() MUST be configured to be greater or equal to 32-bits to avoid
*                   truncation of TS.
*********************************************************************************************************
*/














/*
*********************************************************************************************************
*                              OS TICK INTERRUPT PRIORITY CONFIGURATION
*
* Note(s) : (1) For systems that don't need any high, real-time priority interrupts; the tick interrupt
*               should be configured as the highest priority interrupt but won't adversely affect system
*               operations.
*
*           (2) For systems that need one or more high, real-time interrupts; these should be configured
*               higher than the tick interrupt which MAY delay execution of the tick interrupt.
*
*               (a) If the higher priority interrupts do NOT continually consume CPU cycles but only
*                   occasionally delay tick interrupts, then the real-time interrupts can successfully
*                   handle their intermittent/periodic events with the system not losing tick interrupts
*                   but only increasing the jitter.
*
*               (b) If the higher priority interrupts consume enough CPU cycles to continually delay the
*                   tick interrupt, then the CPU/system is most likely over-burdened & can't be expected
*                   to handle all its interrupts/tasks. The system time reference gets compromised as a
*                   result of losing tick interrupts.
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                                              DATA TYPES
*                                         (Compiler Specific)
*********************************************************************************************************
*/

typedef unsigned char  BOOLEAN;
typedef unsigned char  INT8U;                    /* Unsigned  8 bit quantity                           */
typedef signed   char  INT8S;                    /* Signed    8 bit quantity                           */
typedef unsigned short INT16U;                   /* Unsigned 16 bit quantity                           */
typedef signed   short INT16S;                   /* Signed   16 bit quantity                           */
typedef unsigned int   INT32U;                   /* Unsigned 32 bit quantity                           */
typedef signed   int   INT32S;                   /* Signed   32 bit quantity                           */
typedef float          FP32;                     /* Single precision floating point                    */
typedef double         FP64;                     /* Double precision floating point                    */

typedef unsigned int   OS_STK;                   /* Each stack entry is 32-bit wide                    */
typedef unsigned int   OS_CPU_SR;                /* Define size of CPU status register (PSR = 32 bits) */

/*
*********************************************************************************************************
*                                              Cortex-M3
*                                      Critical Section Management
*
* Method #1:  Disable/Enable interrupts using simple instructions.  After critical section, interrupts
*             will be enabled even if they were disabled before entering the critical section.
*             NOT IMPLEMENTED
*
* Method #2:  Disable/Enable interrupts by preserving the state of interrupts.  In other words, if
*             interrupts were disabled before entering the critical section, they will be disabled when
*             leaving the critical section.
*             NOT IMPLEMENTED
*
* Method #3:  Disable/Enable interrupts by preserving the state of interrupts.  Generally speaking you
*             would store the state of the interrupt disable flag in the local variable 'cpu_sr' and then
*             disable interrupts.  'cpu_sr' is allocated in all of uC/OS-II's functions that need to
*             disable interrupts.  You would restore the interrupt disable state by copying back 'cpu_sr'
*             into the CPU's status register.
*********************************************************************************************************
*/







/*
*********************************************************************************************************
*                                          GLOBAL VARIABLES
*********************************************************************************************************
*/

extern  OS_STK   OS_CPU_ExceptStk[128u];
extern  OS_STK  *OS_CPU_ExceptStkBase;

/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/


OS_CPU_SR  OS_CPU_SR_Save(void);
void       OS_CPU_SR_Restore(OS_CPU_SR cpu_sr);


void  OSCtxSw              (void);
void  OSIntCtxSw           (void);
void  OSStartHighRdy       (void);

void  OS_CPU_PendSVHandler (void);


void  OS_CPU_SysTickHandler(void);
void  OS_CPU_SysTickInit   (INT32U  cnts);

#line 36 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/cc.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch\\cpu.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */





#line 37 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/cc.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
/* stdio.h standard header */
/* Copyright 2003-2010 IAR Systems AB.  */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"




/* A definiton for a function of what effects it has.
   NS  = no_state, i.e. it uses no internal or external state. It may write
         to errno though
   NE  = no_state, no_errno,  i.e. it uses no internal or external state,
         not even writing to errno. 
   NRx = no_read(x), i.e. it doesn't read through pointer parameter x.
   NWx = no_write(x), i.e. it doesn't write through pointer parameter x.
*/

#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"









#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* Convenience macros */









/* Used to refer to '__aeabi' symbols in the library. */ 


                /* Versions */










/*
 * Support for some C99 or other symbols
 *
 * This setting makes available some macros, functions, etc that are
 * beneficial.
 *
 * Default is to include them.
 *
 * Disabling this in C++ mode will not compile (some C++ functions uses C99
 * functionality).
 */


  /* Default turned on when compiling C++, EC++, or C99. */
#line 59 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"





#line 70 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* Configuration */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"
/***************************************************
 *
 * DLib_Defaults.h is the library configuration manager.
 *
 * Copyright 2003-2010 IAR Systems AB.  
 *
 * This configuration header file performs the following tasks:
 *
 * 1. Includes the configuration header file, defined by _DLIB_CONFIG_FILE,
 *    that sets up a particular runtime environment.
 *
 * 2. Includes the product configuration header file, DLib_Product.h, that
 *    specifies default values for the product and makes sure that the
 *    configuration is valid.
 *
 * 3. Sets up default values for all remaining configuration symbols.
 *
 * This configuration header file, the one defined by _DLIB_CONFIG_FILE, and
 * DLib_Product.h configures how the runtime environment should behave. This
 * includes all system headers and the library itself, i.e. all system headers
 * includes this configuration header file, and the library has been built
 * using this configuration header file.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/* Include the main configuration header file. */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Config_Normal.h"
/* Customer-specific DLib configuration. */
/* Copyright (C) 2003 IAR Systems.  All rights reserved. */





  #pragma system_include


/* No changes to the defaults. */

#line 40 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"
  /* _DLIB_CONFIG_FILE_STRING is the quoted variant of above */
#line 47 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"

/* Include the product specific header file. */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product.h"




   #pragma system_include



/*********************************************************************
*
*       Configuration
*
*********************************************************************/

/* Wide character and multi byte character support in library.
 * This is not allowed to vary over configurations, since math-library
 * is built with wide character support.
 */


/* ARM uses the large implementation of DLib */


/* This ensures that the standard header file "string.h" includes
 * the Arm-specific file "DLib_Product_string.h". */


/* This ensures that the standard header file "fenv.h" includes
 * the Arm-specific file "DLib_Product_fenv.h". */


/* Max buffer used for swap in qsort */




/* Enable system locking  */
#line 45 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product.h"

/* Enable AEABI support */


/* Enable rtmodel for setjump buffer size */


/* Enable parsing of hex floats */






/* Special placement for locale structures when building ropi libraries */




/* CPP-library uses software floatingpoint interface */


/* Use speedy implementation of floats (simple quad). */


/* Configure generic ELF init routines. */
#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Product.h"







#line 51 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"



/*
 * The remainder of the file sets up defaults for a number of
 * configuration symbols, each corresponds to a feature in the
 * libary.
 *
 * The value of the symbols should either be 1, if the feature should
 * be supported, or 0 if it shouldn't. (Except where otherwise
 * noted.)
 */


/*
 * Small or Large target
 *
 * This define determines whether the target is large or small. It must be 
 * setup in the DLib_Product header or in the compiler itself.
 *
 * For a small target some functionality in the library will not deliver 
 * the best available results. For instance the _accurate variants will not use
 * the extra precision packet for large arguments.
 * 
 */







/*
 * File handling
 *
 * Determines whether FILE descriptors and related functions exists or not.
 * When this feature is selected, i.e. set to 1, then FILE descriptors and
 * related functions (e.g. fprintf, fopen) exist. All files, even stdin,
 * stdout, and stderr will then be handled with a file system mechanism that
 * buffers files before accessing the lowlevel I/O interface (__open, __read,
 * __write, etc).
 *
 * If not selected, i.e. set to 0, then FILE descriptors and related functions
 * (e.g. fprintf, fopen) does not exist. All functions that normally uses
 * stderr will use stdout instead. Functions that uses stdout and stdin (like
 * printf and scanf) will access the lowlevel I/O interface directly (__open,
 * __read, __write, etc), i.e. there will not be any buffering.
 *
 * The default is not to have support for FILE descriptors.
 */





/*
 * Use static buffers for stdout
 *
 * This setting controls whether the stream stdout uses a static 80 bytes
 * buffer or uses a one byte buffer allocated in the file descriptor. This
 * setting is only applicable if the FILE descriptors are enabled above.
 *
 * Default is to use a static 80 byte buffer.
 */





/*
 * Support of locale interface
 *
 * "Locale" is the system in C that support language- and
 * contry-specific settings for a number of areas, including currency
 * symbols, date and time, and multibyte encodings.
 *
 * This setting determines whether the locale interface exist or not.
 * When this feature is selected, i.e. set to 1, the locale interface exist
 * (setlocale, etc). A number of preselected locales can be activated during
 * runtime. The preselected locales and encodings is choosen by defining any
 * number of _LOCALE_USE_xxx and _ENCODING_USE_xxx symbols. The application
 * will start with the "C" locale choosen. (Single byte encoding is always
 * supported in this mode.)
 *
 *
 * If not selected, i.e. set to 0, the locale interface (setlocale, etc) does
 * not exist. One preselected locale and one preselected encoding is then used
 * directly. That locale can not be changed during runtime. The preselected
 * locale and encoding is choosen by defining at most one of _LOCALE_USE_xxx
 * and at most one of _ENCODING_USE_xxx. The default is to use the "C" locale
 * and the single byte encoding, respectively.
 *
 * The default is not to have support for the locale interface with the "C"
 * locale and the single byte encoding.
 *
 * Supported locales
 * -----------------
 * _LOCALE_USE_C                  C standard locale (the default)
 * _LOCALE_USE_POSIX ISO-8859-1   Posix locale
 * _LOCALE_USE_CS_CZ ISO-8859-2   Czech language locale for Czech Republic
 * _LOCALE_USE_DA_DK ISO-8859-1   Danish language locale for Denmark
 * _LOCALE_USE_DA_EU ISO-8859-15  Danish language locale for Europe
 * _LOCALE_USE_DE_AT ISO-8859-1   German language locale for Austria
 * _LOCALE_USE_DE_BE ISO-8859-1   German language locale for Belgium
 * _LOCALE_USE_DE_CH ISO-8859-1   German language locale for Switzerland
 * _LOCALE_USE_DE_DE ISO-8859-1   German language locale for Germany
 * _LOCALE_USE_DE_EU ISO-8859-15  German language locale for Europe
 * _LOCALE_USE_DE_LU ISO-8859-1   German language locale for Luxemburg
 * _LOCALE_USE_EL_EU ISO-8859-7x  Greek language locale for Europe
 *                                (Euro symbol added)
 * _LOCALE_USE_EL_GR ISO-8859-7   Greek language locale for Greece
 * _LOCALE_USE_EN_AU ISO-8859-1   English language locale for Australia
 * _LOCALE_USE_EN_CA ISO-8859-1   English language locale for Canada
 * _LOCALE_USE_EN_DK ISO_8859-1   English language locale for Denmark
 * _LOCALE_USE_EN_EU ISO-8859-15  English language locale for Europe
 * _LOCALE_USE_EN_GB ISO-8859-1   English language locale for United Kingdom
 * _LOCALE_USE_EN_IE ISO-8859-1   English language locale for Ireland
 * _LOCALE_USE_EN_NZ ISO-8859-1   English language locale for New Zealand
 * _LOCALE_USE_EN_US ISO-8859-1   English language locale for USA
 * _LOCALE_USE_ES_AR ISO-8859-1   Spanish language locale for Argentina
 * _LOCALE_USE_ES_BO ISO-8859-1   Spanish language locale for Bolivia
 * _LOCALE_USE_ES_CL ISO-8859-1   Spanish language locale for Chile
 * _LOCALE_USE_ES_CO ISO-8859-1   Spanish language locale for Colombia
 * _LOCALE_USE_ES_DO ISO-8859-1   Spanish language locale for Dominican Republic
 * _LOCALE_USE_ES_EC ISO-8859-1   Spanish language locale for Equador
 * _LOCALE_USE_ES_ES ISO-8859-1   Spanish language locale for Spain
 * _LOCALE_USE_ES_EU ISO-8859-15  Spanish language locale for Europe
 * _LOCALE_USE_ES_GT ISO-8859-1   Spanish language locale for Guatemala
 * _LOCALE_USE_ES_HN ISO-8859-1   Spanish language locale for Honduras
 * _LOCALE_USE_ES_MX ISO-8859-1   Spanish language locale for Mexico
 * _LOCALE_USE_ES_PA ISO-8859-1   Spanish language locale for Panama
 * _LOCALE_USE_ES_PE ISO-8859-1   Spanish language locale for Peru
 * _LOCALE_USE_ES_PY ISO-8859-1   Spanish language locale for Paraguay
 * _LOCALE_USE_ES_SV ISO-8859-1   Spanish language locale for Salvador
 * _LOCALE_USE_ES_US ISO-8859-1   Spanish language locale for USA
 * _LOCALE_USE_ES_UY ISO-8859-1   Spanish language locale for Uruguay
 * _LOCALE_USE_ES_VE ISO-8859-1   Spanish language locale for Venezuela
 * _LOCALE_USE_ET_EE ISO-8859-1   Estonian language for Estonia
 * _LOCALE_USE_EU_ES ISO-8859-1   Basque language locale for Spain
 * _LOCALE_USE_FI_EU ISO-8859-15  Finnish language locale for Europe
 * _LOCALE_USE_FI_FI ISO-8859-1   Finnish language locale for Finland
 * _LOCALE_USE_FO_FO ISO-8859-1   Faroese language locale for Faroe Islands
 * _LOCALE_USE_FR_BE ISO-8859-1   French language locale for Belgium
 * _LOCALE_USE_FR_CA ISO-8859-1   French language locale for Canada
 * _LOCALE_USE_FR_CH ISO-8859-1   French language locale for Switzerland
 * _LOCALE_USE_FR_EU ISO-8859-15  French language locale for Europe
 * _LOCALE_USE_FR_FR ISO-8859-1   French language locale for France
 * _LOCALE_USE_FR_LU ISO-8859-1   French language locale for Luxemburg
 * _LOCALE_USE_GA_EU ISO-8859-15  Irish language locale for Europe
 * _LOCALE_USE_GA_IE ISO-8859-1   Irish language locale for Ireland
 * _LOCALE_USE_GL_ES ISO-8859-1   Galician language locale for Spain
 * _LOCALE_USE_HR_HR ISO-8859-2   Croatian language locale for Croatia
 * _LOCALE_USE_HU_HU ISO-8859-2   Hungarian language locale for Hungary
 * _LOCALE_USE_ID_ID ISO-8859-1   Indonesian language locale for Indonesia
 * _LOCALE_USE_IS_EU ISO-8859-15  Icelandic language locale for Europe
 * _LOCALE_USE_IS_IS ISO-8859-1   Icelandic language locale for Iceland
 * _LOCALE_USE_IT_EU ISO-8859-15  Italian language locale for Europe
 * _LOCALE_USE_IT_IT ISO-8859-1   Italian language locale for Italy
 * _LOCALE_USE_IW_IL ISO-8859-8   Hebrew language locale for Israel
 * _LOCALE_USE_KL_GL ISO-8859-1   Greenlandic language locale for Greenland
 * _LOCALE_USE_LT_LT   BALTIC     Lithuanian languagelocale for Lithuania
 * _LOCALE_USE_LV_LV   BALTIC     Latvian languagelocale for Latvia
 * _LOCALE_USE_NL_BE ISO-8859-1   Dutch language locale for Belgium
 * _LOCALE_USE_NL_EU ISO-8859-15  Dutch language locale for Europe
 * _LOCALE_USE_NL_NL ISO-8859-9   Dutch language locale for Netherlands
 * _LOCALE_USE_NO_EU ISO-8859-15  Norwegian language locale for Europe
 * _LOCALE_USE_NO_NO ISO-8859-1   Norwegian language locale for Norway
 * _LOCALE_USE_PL_PL ISO-8859-2   Polish language locale for Poland
 * _LOCALE_USE_PT_BR ISO-8859-1   Portugese language locale for Brazil
 * _LOCALE_USE_PT_EU ISO-8859-15  Portugese language locale for Europe
 * _LOCALE_USE_PT_PT ISO-8859-1   Portugese language locale for Portugal
 * _LOCALE_USE_RO_RO ISO-8859-2   Romanian language locale for Romania
 * _LOCALE_USE_RU_RU ISO-8859-5   Russian language locale for Russia
 * _LOCALE_USE_SL_SI ISO-8859-2   Slovenian language locale for Slovenia
 * _LOCALE_USE_SV_EU ISO-8859-15  Swedish language locale for Europe
 * _LOCALE_USE_SV_FI ISO-8859-1   Swedish language locale for Finland
 * _LOCALE_USE_SV_SE ISO-8859-1   Swedish language locale for Sweden
 * _LOCALE_USE_TR_TR ISO-8859-9   Turkish language locale for Turkey
 *
 *  Supported encodings
 *  -------------------
 * n/a                            Single byte (used if no other is defined).
 * _ENCODING_USE_UTF8             UTF8 encoding.
 */






/* We need to have the "C" locale if we have full locale support. */






/*
 * Support of multibytes in printf- and scanf-like functions
 *
 * This is the default value for _DLIB_PRINTF_MULTIBYTE and
 * _DLIB_SCANF_MULTIBYTE. See them for a description.
 *
 * Default is to not have support for multibytes in printf- and scanf-like
 * functions.
 */






/*
 * Throw handling in the EC++ library
 *
 * This setting determines what happens when the EC++ part of the library
 * fails (where a normal C++ library 'throws').
 *
 * The following alternatives exists (setting of the symbol):
 * 0                - The application does nothing, i.e. continues with the
 *                    next statement.
 * 1                - The application terminates by calling the 'abort'
 *                    function directly.
 * <anything else>  - An object of class "exception" is created.  This
 *                    object contains a string describing the problem.
 *                    This string is later emitted on "stderr" before
 *                    the application terminates by calling the 'abort'
 *                    function directly.
 *
 * Default is to do nothing.
 */






/*
 * Hexadecimal floating-point numbers in strtod
 *
 * If selected, i.e. set to 1, strtod supports C99 hexadecimal floating-point
 * numbers. This also enables hexadecimal floating-points in internal functions
 * used for converting strings and wide strings to float, double, and long
 * double.
 *
 * If not selected, i.e. set to 0, C99 hexadecimal floating-point numbers
 * aren't supported.
 *
 * Default is not to support hexadecimal floating-point numbers.
 */






/*
 * Printf configuration symbols.
 *
 * All the configuration symbols described further on controls the behaviour
 * of printf, sprintf, and the other printf variants.
 *
 * The library proves four formatters for printf: 'tiny', 'small',
 * 'large', and 'default'.  The setup in this file controls all except
 * 'tiny'.  Note that both small' and 'large' explicitly removes
 * some features.
 */

/*
 * Handle multibytes in printf
 *
 * This setting controls whether multibytes and wchar_ts are supported in
 * printf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * Long long formatting in printf
 *
 * This setting controls long long support (%lld) in printf. Set to 1 to
 * support it, otherwise set to 0.

 * Note, if long long should not be supported and 'intmax_t' is larger than
 * an ordinary 'long', then %jd and %jn will not be supported.
 *
 * Default is to support long long formatting.
 */

#line 351 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"






/*
 * Floating-point formatting in printf
 *
 * This setting controls whether printf supports floating-point formatting.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting.
 */





/*
 * Hexadecimal floating-point formatting in printf
 *
 * This setting controls whether the %a format, i.e. the output of
 * floating-point numbers in the C99 hexadecimal format. Set to 1 to support
 * it, otherwise set to 0.
 *
 * Default is to support %a in printf.
 */





/*
 * Output count formatting in printf
 *
 * This setting controls whether the output count specifier (%n) is supported
 * or not in printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support %n in printf.
 */





/*
 * Support of qualifiers in printf
 *
 * This setting controls whether qualifiers that enlarges the input value
 * [hlLjtz] is supported in printf or not. Set to 1 to support them, otherwise
 * set to 0. See also _DLIB_PRINTF_INT_TYPE_IS_INT and
 * _DLIB_PRINTF_INT_TYPE_IS_LONG.
 *
 * Default is to support [hlLjtz] qualifiers in printf.
 */





/*
 * Support of flags in printf
 *
 * This setting controls whether flags (-+ #0) is supported in printf or not.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support flags in printf.
 */





/*
 * Support widths and precisions in printf
 *
 * This setting controls whether widths and precisions are supported in printf.
 * Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support widths and precisions in printf.
 */





/*
 * Support of unsigned integer formatting in printf
 *
 * This setting controls whether unsigned integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in printf.
 */





/*
 * Support of signed integer formatting in printf
 *
 * This setting controls whether signed integer formatting is supported in
 * printf. Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support signed integer formatting in printf.
 */





/*
 * Support of formatting anything larger than int in printf
 *
 * This setting controls if 'int' should be used internally in printf, rather
 * than the largest existing integer type. If 'int' is used, any integer or
 * pointer type formatting use 'int' as internal type even though the
 * formatted type is larger. Set to 1 to use 'int' as internal type, otherwise
 * set to 0.
 *
 * See also next configuration.
 *
 * Default is to internally use largest existing internally type.
 */





/*
 * Support of formatting anything larger than long in printf
 *
 * This setting controls if 'long' should be used internally in printf, rather
 * than the largest existing integer type. If 'long' is used, any integer or
 * pointer type formatting use 'long' as internal type even though the
 * formatted type is larger. Set to 1 to use 'long' as internal type,
 * otherwise set to 0.
 *
 * See also previous configuration.
 *
 * Default is to internally use largest existing internally type.
 */









/*
 * Emit a char a time in printf
 *
 * This setting controls internal output handling. If selected, i.e. set to 1,
 * then printf emits one character at a time, which requires less code but
 * can be slightly slower for some types of output.
 *
 * If not selected, i.e. set to 0, then printf buffers some outputs.
 *
 * Note that it is recommended to either use full file support (see
 * _DLIB_FILE_DESCRIPTOR) or -- for debug output -- use the linker
 * option "-e__write_buffered=__write" to enable buffered I/O rather
 * than deselecting this feature.
 */






/*
 * Scanf configuration symbols.
 *
 * All the configuration symbols described here controls the
 * behaviour of scanf, sscanf, and the other scanf variants.
 *
 * The library proves three formatters for scanf: 'small', 'large',
 * and 'default'.  The setup in this file controls all, however both
 * 'small' and 'large' explicitly removes some features.
 */

/*
 * Handle multibytes in scanf
 *
 * This setting controls whether multibytes and wchar_t:s are supported in
 * scanf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default.
 */





/*
 * Long long formatting in scanf
 *
 * This setting controls whether scanf supports long long support (%lld). It
 * also controls, if 'intmax_t' is larger than an ordinary 'long', i.e. how
 * the %jd and %jn specifiers behaves. Set to 1 to support them, otherwise set
 * to 0.
 *
 * Default is to support long long formatting in scanf.
 */

#line 566 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"





/*
 * Support widths in scanf
 *
 * This controls whether scanf supports widths. Set to 1 to support them,
 * otherwise set to 0.
 *
 * Default is to support widths in scanf.
 */





/*
 * Support qualifiers [hjltzL] in scanf
 *
 * This setting controls whether scanf supports qualifiers [hjltzL] or not. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support qualifiers in scanf.
 */





/*
 * Support floating-point formatting in scanf
 *
 * This setting controls whether scanf supports floating-point formatting. Set
 * to 1 to support them, otherwise set to 0.
 *
 * Default is to support floating-point formatting in scanf.
 */





/*
 * Support output count formatting (%n)
 *
 * This setting controls whether scanf supports output count formatting (%n).
 * Set to 1 to support it, otherwise set to 0.
 *
 * Default is to support output count formatting in scanf.
 */





/*
 * Support scansets ([]) in scanf
 *
 * This setting controls whether scanf supports scansets ([]) or not. Set to 1
 * to support them, otherwise set to 0.
 *
 * Default is to support scansets in scanf.
 */





/*
 * Support signed integer formatting in scanf
 *
 * This setting controls whether scanf supports signed integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support signed integer formatting in scanf.
 */





/*
 * Support unsigned integer formatting in scanf
 *
 * This setting controls whether scanf supports unsigned integer formatting or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support unsigned integer formatting in scanf.
 */





/*
 * Support assignment suppressing [*] in scanf
 *
 * This setting controls whether scanf supports assignment suppressing [*] or
 * not. Set to 1 to support them, otherwise set to 0.
 *
 * Default is to support assignment suppressing in scanf.
 */





/*
 * Handle multibytes in asctime and strftime.
 *
 * This setting controls whether multibytes and wchar_ts are
 * supported.Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */





/*
 * True if "qsort" should be implemented using bubble sort.
 *
 * Bubble sort is less efficient than quick sort but requires less RAM
 * and ROM resources.
 */





/*
 * Set Buffert size used in qsort
 */





/*
 * The default "rand" function uses an array of 32 long:s of memory to
 * store the current state.
 *
 * The simple "rand" function uses only a single long. However, the
 * quality of the generated psuedo-random numbers are not as good as
 * the default implementation.
 */





/*
 * Wide character and multi byte character support in library.
 */





/*
 * Set attributes on the function used by the C-SPY debug interface to set a
 * breakpoint in.
 */





/*
 * Support threading in the library
 *
 * 0    No thread support
 * 1    Thread support with a, b, and d.
 * 2    Thread support with a, b, and e.
 * 3    Thread support with all thread-local storage in a dynamically allocated
 *        memory area and a, and b.
 *      a. Lock on heap accesses
 *      b. Optional lock on file accesses (see _DLIB_FILE_OP_LOCKS below)
 *      d. Use an external thread-local storage interface for all the
 *         libraries static and global variables.
 *      e. Static and global variables aren't safe for access from several
 *         threads.
 *
 * Note that if locks are used the following symbols must be defined:
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * They will be used to initialize the needed locks only once. TYPE is the
 * type for the static control variable, MACRO is the expression that will be
 * evaluated at each usage of a lock, and INIT is the initializer for the
 * control variable.
 *
 * Note that if thread model 3 is used the symbol _DLIB_TLS_POINTER must be
 * defined. It is a thread local pointer to a dynamic memory area that
 * contains all used TLS variables for the library. Optionally the following
 * symbols can be defined as well (default is to use the default const data
 * and data memories):
 *
 *   _DLIB_TLS_INITIALIZER_MEMORY The memory to place the initializers for the
 *                                TLS memory area
 *   _DLIB_TLS_MEMORY             The memory to use for the TLS memory area. A
 *                                pointer to this memory must be castable to a
 *                                default pointer and back.
 *   _DLIB_TLS_REQUIRE_INIT       Set to 1 to require __cstart_init_tls
 *                                when needed to initialize the TLS data
 *                                segment for the main thread.
 *   _DLIB_TLS_SEGMENT_DATA       The name of the TLS RAM data segment
 *   _DLIB_TLS_SEGMENT_INIT       The name of the used to initialize the
 *                                TLS data segment.
 *
 * See DLib_Threads.h for a description of what interfaces needs to be
 * defined for thread support.
 */





/*
 * Used by products where one runtime library can be used by applications
 * with different data models, in order to reduce the total number of
 * libraries required. Typically, this is used when the pointer types does
 * not change over the data models used, but the placement of data variables
 * or/and constant variables do.
 *
 * If defined, this symbol is typically defined to the memory attribute that
 * is used by the runtime library. The actual define must use a
 * _Pragma("type_attribute = xxx") construct. In the header files, it is used
 * on all statically linked data objects seen by the application.
 */




#line 812 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"


/*
 * Turn on support for the Target-specific ABI. The ABI is based on the
 * ARM AEABI. A target, except ARM, may deviate from it.
 */

#line 826 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"


  /* Possible AEABI deviations */
#line 836 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"

#line 844 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"
  /*
   * The "difunc" table contains information about C++ objects that
   * should be dynamically initialized, where each entry in the table
   * represents an initialization function that should be called. When
   * the symbol _DLIB_AEABI_DIFUNC_CONTAINS_OFFSETS is true, each
   * entry in the table is encoded as an offset from the entry
   * location. When false, the entries contain the actual addresses to
   * call.
   */






/*
 * Turn on usage of a pragma to tell the linker the number of elements used
 * in a setjmp jmp_buf.
 */





/*
 * If true, the product supplies a "DLib_Product_string.h" file that
 * is included from "string.h".
 */





/*
 * Determine whether the math fma routines are fast or not.
 */




/*
 * Rtti support.
 */

#line 899 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"

/*
 * Use the "pointers to short" or "pointers to long" implementation of 
 * the basic floating point routines (like Dnorm, Dtest, Dscale, and Dunscale).
 */




/*
 * Use 64-bit long long as intermediary type in Dtest, and fabs.
 * Default is to do this if long long is 64-bits.
 */




/*
 * Favor speed versus some size enlargements in floating point functions.
 */




/*
 * Include dlmalloc as an alternative heap manager in product.
 *
 * Typically, an application will use a "malloc" heap manager that is
 * relatively small but not that efficient. An application can
 * optionally use the "dlmalloc" package, which provides a more
 * effective "malloc" heap manager, if it is included in the product
 * and supported by the settings.
 *
 * See the product documentation on how to use it, and whether or not
 * it is included in the product.
 */

  /* size_t/ptrdiff_t must be a 4 bytes unsigned integer. */
#line 943 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"





/*
 * Allow the 64-bit time_t interface?
 *
 * Default is yes if long long is 64 bits.
 */

  #pragma language = save 
  #pragma language = extended





  #pragma language = restore






/*
 * Is time_t 64 or 32 bits?
 *
 * Default is 32 bits.
 */




/*
 * Do we include math functions that demands lots of constant bytes?
 * (like erf, erfc, expm1, fma, lgamma, tgamma, and *_accurate)
 *
 */




/*
 * Set this to __weak, if supported.
 *
 */
#line 997 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Defaults.h"


/*
 * Deleted options
 *
 */







#line 73 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"











                /* Floating-point */

/*
 * Whenever a floating-point type is equal to another, we try to fold those
 * two types into one. This means that if float == double then we fold float to
 * use double internally. Example sinf(float) will use _Sin(double, uint).
 *
 * _X_FNAME is a redirector for internal support routines. The X can be
 *          D (double), F (float), or L (long double). It redirects by using
 *          another prefix. Example calls to Dtest will be __iar_Dtest,
 *          __iar_FDtest, or __iarLDtest.
 * _X_FUN   is a redirector for functions visible to the customer. As above, the
 *          X can be D, F, or L. It redirects by using another suffix. Example
 *          calls to sin will be sin, sinf, or sinl.
 * _X_TYPE  The type that one type is folded to.
 * _X_PTRCAST is a redirector for a cast operation involving a pointer.
 * _X_CAST  is a redirector for a cast involving the float type.
 *
 * _FLOAT_IS_DOUBLE signals that all internal float routines aren't needed.
 * _LONG_DOUBLE_IS_DOUBLE signals that all internal long double routines
 *                        aren't needed.
 */
#line 147 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"





                /* NAMING PROPERTIES */


/* Has support for fixed point types */




/* Has support for secure functions (printf_s, scanf_s, etc) */
/* Will not compile if enabled */
#line 170 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

/* Has support for complex C types */




/* If is Embedded C++ language */






/* If is true C++ language */






/* True C++ language setup */
#line 233 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"











                /* NAMESPACE CONTROL */
#line 292 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"









#line 308 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"








#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"
/* xencoding_limits.h internal header file */
/* Copyright 2003-2010 IAR Systems AB.  */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2010 IAR Systems AB. */

#line 707 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"

                                /* Multibyte encoding length. */


#line 24 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"




#line 42 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\xencoding_limits.h"

                                /* Utility macro */














#line 317 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"



                /* FLOATING-POINT PROPERTIES */

                /* float properties */
#line 335 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* double properties */
#line 360 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* long double properties */
                /* (must be same as double) */




#line 382 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"


                /* INTEGER PROPERTIES */

                                /* MB_LEN_MAX */







  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore
#line 405 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"






  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;


#line 424 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

#line 432 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* POINTER PROPERTIES */


typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

/* IAR doesn't support restrict  */


                /* stdarg PROPERTIES */
#line 454 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"
  typedef _VA_LIST __Va_list;



__intrinsic __nounwind void __iar_Atexit(void (*)(void));



  typedef struct
  {       /* state of a multibyte translation */
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;
#line 477 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"










typedef struct
{       /* file position */

  _Longlong _Off;    /* can be system dependent */



  _Mbstatet _Wstate;
} _Fpost;







                /* THREAD AND LOCALE CONTROL */

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"
/***************************************************
 *
 * DLib_Threads.h is the library threads manager.
 *
 * Copyright 2004-2010 IAR Systems AB.  
 *
 * This configuration header file sets up how the thread support in the library
 * should work.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/*
 * DLib can support a multithreaded environment. The preprocessor symbol 
 * _DLIB_THREAD_SUPPORT governs the support. It can be 0 (no support), 
 * 1 (currently not supported), 2 (locks only), and 3 (simulated TLS and locks).
 */

/*
 * This header sets the following symbols that governs the rest of the
 * library:
 * ------------------------------------------
 * _DLIB_MULTI_THREAD     0 No thread support
 *                        1 Multithread support
 * _DLIB_GLOBAL_VARIABLES 0 Use external TLS interface for the libraries global
 *                          and static variables
 *                        1 Use a lock for accesses to the locale and no 
 *                          security for accesses to other global and static
 *                          variables in the library
 * _DLIB_FILE_OP_LOCKS    0 No file-atomic locks
 *                        1 File-atomic locks

 * _DLIB_COMPILER_TLS     0 No Thread-Local-Storage support in the compiler
 *                        1 Thread-Local-Storage support in the compiler
 * _DLIB_TLS_QUAL         The TLS qualifier, define only if _COMPILER_TLS == 1
 *
 * _DLIB_THREAD_MACRO_SETUP_DONE Whether to use the standard definitions of
 *                               TLS macros defined in xtls.h or the definitions
 *                               are provided here.
 *                        0 Use default macros
 *                        1 Macros defined for xtls.h
 *
 * _DLIB_THREAD_LOCK_ONCE_TYPE
 *                        type for control variable in once-initialization of 
 *                        locks
 * _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *                        expression that will be evaluated at each lock access
 *                        to determine if an initialization must be done
 * _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *                        initial value for the control variable
 *
 ****************************************************************************
 * Description
 * -----------
 *
 * If locks are to be used (_DLIB_MULTI_THREAD != 0), the following options
 * has to be used in ilink: 
 *   --redirect __iar_Locksyslock=__iar_Locksyslock_mtx
 *   --redirect __iar_Unlocksyslock=__iar_Unlocksyslock_mtx
 *   --redirect __iar_Lockfilelock=__iar_Lockfilelock_mtx
 *   --redirect __iar_Unlockfilelock=__iar_Unlockfilelock_mtx
 *   --keep     __iar_Locksyslock_mtx
 * and, if C++ is used, also:
 *   --redirect __iar_Initdynamicfilelock=__iar_Initdynamicfilelock_mtx
 *   --redirect __iar_Dstdynamicfilelock=__iar_Dstdynamicfilelock_mtx
 *   --redirect __iar_Lockdynamicfilelock=__iar_Lockdynamicfilelock_mtx
 *   --redirect __iar_Unlockdynamicfilelock=__iar_Unlockdynamicfilelock_mtx
 * Xlink uses similar options (-e and -g). The following lock interface must
 * also be implemented: 
 *   typedef void *__iar_Rmtx;                   // Lock info object
 *
 *   void __iar_system_Mtxinit(__iar_Rmtx *);    // Initialize a system lock
 *   void __iar_system_Mtxdst(__iar_Rmtx *);     // Destroy a system lock
 *   void __iar_system_Mtxlock(__iar_Rmtx *);    // Lock a system lock
 *   void __iar_system_Mtxunlock(__iar_Rmtx *);  // Unlock a system lock
 * The interface handles locks for the heap, the locale, the file system
 * structure, the initialization of statics in functions, etc. 
 *
 * The following lock interface is optional to be implemented:
 *   void __iar_file_Mtxinit(__iar_Rmtx *);    // Initialize a file lock
 *   void __iar_file_Mtxdst(__iar_Rmtx *);     // Destroy a file lock
 *   void __iar_file_Mtxlock(__iar_Rmtx *);    // Lock a file lock
 *   void __iar_file_Mtxunlock(__iar_Rmtx *);  // Unlock a file lock
 * The interface handles locks for each file stream.
 * 
 * These three once-initialization symbols must also be defined, if the 
 * default initialization later on in this file doesn't work (done in 
 * DLib_product.h):
 *
 *   _DLIB_THREAD_LOCK_ONCE_TYPE
 *   _DLIB_THREAD_LOCK_ONCE_MACRO(control_variable, init_function)
 *   _DLIB_THREAD_LOCK_ONCE_TYPE_INIT
 *
 * If an external TLS interface is used, the following must
 * be defined:
 *   typedef int __iar_Tlskey_t;
 *   typedef void (*__iar_Tlsdtor_t)(void *);
 *   int __iar_Tlsalloc(__iar_Tlskey_t *, __iar_Tlsdtor_t); 
 *                                                    // Allocate a TLS element
 *   int __iar_Tlsfree(__iar_Tlskey_t);               // Free a TLS element
 *   int __iar_Tlsset(__iar_Tlskey_t, void *);        // Set a TLS element
 *   void *__iar_Tlsget(__iar_Tlskey_t);              // Get a TLS element
 *
 */

/* We don't have a compiler that supports tls declarations */



#line 157 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  /* Thread support, library supports threaded variables in a user specified
     memory area, locks on heap and on FILE */

  /* See Documentation/ThreadsInternal.html for a description. */





  


#line 176 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"





#line 187 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);









  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 


























#line 242 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  /* The thread-local variable access function */
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore



























    /* Make sure that each destructor is inserted into _Deallocate_TLS */
  









  /* Internal function declarations. */






  





  
  typedef void *__iar_Rmtx;
  

  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  /* Function to destroy the locks. Should be called after atexit and 
     _Close_all. */
  __intrinsic __nounwind void __iar_clearlocks(void);


#line 323 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  





  

#line 341 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\DLib_Threads.h"

  typedef unsigned _Once_t;



  













#line 506 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

#line 516 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* THREAD-LOCAL STORAGE */
#line 524 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"


                /* MULTITHREAD PROPERTIES */

  
  
  /* The lock interface for DLib to use. */ 
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  
#line 564 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* LOCK MACROS */
#line 572 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

#line 690 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"

                /* MISCELLANEOUS MACROS AND FUNCTIONS*/





#line 705 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\yvals.h"



/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2010 IAR Systems AB.  */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2010 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __INTRINSIC
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that intrinsic support could be turned off
 * individually for each file.
 */










/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */






#line 67 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ycheck.h"

#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ysizet.h"



                /* type definitions */




typedef _Sizet size_t;




typedef unsigned int __data_size_t;











#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ystdio.h"
/* ystdio.h internal header */
/* Copyright 2009-2010 IAR Systems AB. */




  #pragma system_include







#line 58 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\ystdio.h"
  
/* File system functions that have debug variants. They are agnostic on 
   whether the library is full or normal. */

__intrinsic __nounwind int remove(const char *);
__intrinsic __nounwind int rename(const char *, const char *);











/*
 * Copyright (c) 1992-2009 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.042:0576 */
#line 14 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"



/* Module consistency. */
#pragma rtmodel="__dlib_file_descriptor","0"

                /* macros */








#line 66 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

#line 88 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

#line 99 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"










                /* type definitions */
typedef _Fpost fpos_t;

                /* printf and scanf pragma support */
#pragma language=save
#pragma language=extended

#line 125 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

#line 177 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"


             /* Corresponds to fgets(char *, int, stdin); */
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * __gets(char *, int);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * gets(char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind void perror(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int printf(const char *, ...);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int puts(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int scanf(const char *, ...);
_Pragma("function_effects = no_read(1), no_write(2)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int sprintf(char *, 
                                                 const char *, ...);
_Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int sscanf(const char *, 
                                                const char *, ...);
             __intrinsic __nounwind char * tmpnam(char *);
             /* Corresponds to "ungetc(c, stdout)" */
             __intrinsic __nounwind int __ungetchar(int);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vprintf(const char *,
                                                 __Va_list);

  _Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vscanf(const char *, 
                                                  __Va_list);
  _Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vsscanf(const char *, 
                                                   const char *, 
                                                   __Va_list);

_Pragma("function_effects = no_read(1), no_write(2)")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *, 
                                                   const char *,
                                                   __Va_list);
              /* Corresponds to fwrite(p, x, y, stdout); */
_Pragma("function_effects = no_write(1)")      __intrinsic __nounwind size_t __write_array(const void *, size_t, size_t);

  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *, size_t, 
                                                    const char *, ...);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *, size_t,
                                                     const char *, 
                                                     __Va_list);


              __intrinsic __nounwind int getchar(void);
              __intrinsic __nounwind int putchar(int);



#pragma language=restore

#line 238 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"




#line 292 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 7.0\\arm\\INC\\c\\stdio.h"

/*
 * Copyright (c) 1992-2002 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V5.04:0576 */
#line 38 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/cc.h"

/*-------------data type------------------------------------------------------*/

typedef unsigned   char    u8_t;    /* Unsigned 8 bit quantity         */
typedef signed     char    s8_t;    /* Signed    8 bit quantity        */
typedef unsigned   short   u16_t;   /* Unsigned 16 bit quantity        */
typedef signed     short   s16_t;   /* Signed   16 bit quantity        */
typedef unsigned   long    u32_t;   /* Unsigned 32 bit quantity        */
typedef signed     long    s32_t;   /* Signed   32 bit quantity        */
typedef u32_t mem_ptr_t;            /* Unsigned 32 bit quantity        */
typedef int sys_prot_t;

/*-------------critical region protection (depends on uC/OS-II setting)-------*/













/*----------------------------------------------------------------------------*/

/* define compiler specific symbols */








#line 97 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/cc.h"

/*---define (sn)printf formatters for these lwip types, for lwip DEBUG/STATS--*/

#line 106 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/cc.h"

/*--------------macros--------------------------------------------------------*/
#line 114 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/cc.h"





#line 44 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/arch.h"

/** Temporary: define format string for size_t if not defined in cc.h */



/** Temporary upgrade helper: define format string for u8_t as hex if not
    defined in cc.h */




























#line 136 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/arch.h"



#line 203 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/arch.h"





extern int errno;








#line 36 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/debug.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"
/**
 * @file
 *
 * lwIP Options Configuration
 */

/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */
#line 37 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/debug.h"

/** lower two bits indicate debug level
 * - 0 all
 * - 1 warning
 * - 2 serious
 * - 3 severe
 */
#line 50 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/debug.h"

/** flag for LWIP_DEBUGF to enable that debug message */

/** flag for LWIP_DEBUGF to disable that debug message */


/** flag for LWIP_DEBUGF indicating a tracing message (to follow program flow) */

/** flag for LWIP_DEBUGF indicating a state debug message (to follow module states) */

/** flag for LWIP_DEBUGF indicating newly added code, not thoroughly tested yet */

/** flag for LWIP_DEBUGF to halt after printing this debug message */


#line 71 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/debug.h"

/** if "expression" isn't true, then print "message" and execute "handler" expression */






/** print debug message only if debug message type is enabled...
 *  AND is of correct type AND is at least LWIP_DBG_LEVEL
 */
#line 93 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/debug.h"







#line 47 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"

/*
   -----------------------------------------------
   ---------- Platform specific locking ----------
   -----------------------------------------------
*/

/**
 * SYS_LIGHTWEIGHT_PROT==1: if you want inter-task protection for certain
 * critical regions during buffer allocation, deallocation and memory
 * allocation and deallocation.
 */




/** 
 * NO_SYS==1: Provides VERY minimal functionality. Otherwise,
 * use lwIP facilities.
 */




/**
 * NO_SYS_NO_TIMERS==1: Drop support for sys_timeout when NO_SYS==1
 * Mainly for compatibility to old versions.
 */




/**
 * MEMCPY: override this if you have a faster implementation at hand than the
 * one included in your C library
 */




/**
 * SMEMCPY: override this with care! Some compilers (e.g. gcc) can inline a
 * call to memcpy() if the length is known at compile time and is small.
 */




/*
   ------------------------------------
   ---------- Memory options ----------
   ------------------------------------
*/
/**
 * MEM_LIBC_MALLOC==1: Use malloc/free/realloc provided by your C-library
 * instead of the lwip internal allocator. Can save code size if you
 * already use it.
 */




/**
* MEMP_MEM_MALLOC==1: Use mem_malloc/mem_free instead of the lwip pool allocator.
* Especially useful with MEM_LIBC_MALLOC but handle with care regarding execution
* speed and usage from interrupts!
*/




/**
 * MEM_ALIGNMENT: should be set to the alignment of the CPU
 *    4 byte alignment -> #define MEM_ALIGNMENT 4
 *    2 byte alignment -> #define MEM_ALIGNMENT 2
 */




/**
 * MEM_SIZE: the size of the heap memory. If the application will send
 * a lot of data that needs to be copied, this should be set high.
 */




/**
 * MEMP_SEPARATE_POOLS: if defined to 1, each pool is placed in its own array.
 * This can be used to individually change the location of each pool.
 * Default is one big array for all pools
 */




/**
 * MEMP_OVERFLOW_CHECK: memp overflow protection reserves a configurable
 * amount of bytes before and after each memp element in every pool and fills
 * it with a prominent default value.
 *    MEMP_OVERFLOW_CHECK == 0 no checking
 *    MEMP_OVERFLOW_CHECK == 1 checks each element when it is freed
 *    MEMP_OVERFLOW_CHECK >= 2 checks each element in every pool every time
 *      memp_malloc() or memp_free() is called (useful but slow!)
 */




/**
 * MEMP_SANITY_CHECK==1: run a sanity check after each memp_free() to make
 * sure that there are no cycles in the linked lists.
 */




/**
 * MEM_USE_POOLS==1: Use an alternative to malloc() by allocating from a set
 * of memory pools of various sizes. When mem_malloc is called, an element of
 * the smallest pool that can provide the length needed is returned.
 * To use this, MEMP_USE_CUSTOM_POOLS also has to be enabled.
 */




/**
 * MEM_USE_POOLS_TRY_BIGGER_POOL==1: if one malloc-pool is empty, try the next
 * bigger pool - WARNING: THIS MIGHT WASTE MEMORY but it can make a system more
 * reliable. */




/**
 * MEMP_USE_CUSTOM_POOLS==1: whether to include a user file lwippools.h
 * that defines additional pools beyond the "standard" ones required
 * by lwIP. If you set this to 1, you must have lwippools.h in your 
 * inlude path somewhere. 
 */




/**
 * Set this to 1 if you want to free PBUF_RAM pbufs (or call mem_free()) from
 * interrupt context (or another context that doesn't allow waiting for a
 * semaphore).
 * If set to 1, mem_malloc will be protected by a semaphore and SYS_ARCH_PROTECT,
 * while mem_free will only use SYS_ARCH_PROTECT. mem_malloc SYS_ARCH_UNPROTECTs
 * with each loop so that mem_free can run.
 *
 * ATTENTION: As you can see from the above description, this leads to dis-/
 * enabling interrupts often, which can be slow! Also, on low memory, mem_malloc
 * can need longer.
 *
 * If you don't want that, at least for NO_SYS=0, you can still use the following
 * functions to enqueue a deallocation call which then runs in the tcpip_thread
 * context:
 * - pbuf_free_callback(p);
 * - mem_free_callback(m);
 */




/*
   ------------------------------------------------
   ---------- Internal Memory Pool Sizes ----------
   ------------------------------------------------
*/
/**
 * MEMP_NUM_PBUF: the number of memp struct pbufs (used for PBUF_ROM and PBUF_REF).
 * If the application sends a lot of data out of ROM (or other static memory),
 * this should be set high.
 */




/**
 * MEMP_NUM_RAW_PCB: Number of raw connection PCBs
 * (requires the LWIP_RAW option)
 */




/**
 * MEMP_NUM_UDP_PCB: the number of UDP protocol control blocks. One
 * per active UDP "connection".
 * (requires the LWIP_UDP option)
 */




/**
 * MEMP_NUM_TCP_PCB: the number of simulatenously active TCP connections.
 * (requires the LWIP_TCP option)
 */




/**
 * MEMP_NUM_TCP_PCB_LISTEN: the number of listening TCP connections.
 * (requires the LWIP_TCP option)
 */




/**
 * MEMP_NUM_TCP_SEG: the number of simultaneously queued TCP segments.
 * (requires the LWIP_TCP option)
 */




/**
 * MEMP_NUM_REASSDATA: the number of IP packets simultaneously queued for
 * reassembly (whole packets, not fragments!)
 */




/**
 * MEMP_NUM_FRAG_PBUF: the number of IP fragments simultaneously sent
 * (fragments, not whole packets!).
 * This is only used with IP_FRAG_USES_STATIC_BUF==0 and
 * LWIP_NETIF_TX_SINGLE_PBUF==0 and only has to be > 1 with DMA-enabled MACs
 * where the packet is not yet sent when netif->output returns.
 */




/**
 * MEMP_NUM_ARP_QUEUE: the number of simulateously queued outgoing
 * packets (pbufs) that are waiting for an ARP request (to resolve
 * their destination address) to finish.
 * (requires the ARP_QUEUEING option)
 */




/**
 * MEMP_NUM_IGMP_GROUP: The number of multicast groups whose network interfaces
 * can be members et the same time (one per netif - allsystems group -, plus one
 * per netif membership).
 * (requires the LWIP_IGMP option)
 */




/**
 * MEMP_NUM_SYS_TIMEOUT: the number of simulateously active timeouts.
 * (requires NO_SYS==0)
 * The default number of timeouts is calculated here for all enabled modules.
 * The formula expects settings to be either '0' or '1'.
 */




/**
 * MEMP_NUM_NETBUF: the number of struct netbufs.
 * (only needed if you use the sequential API, like api_lib.c)
 */




/**
 * MEMP_NUM_NETCONN: the number of struct netconns.
 * (only needed if you use the sequential API, like api_lib.c)
 */




/**
 * MEMP_NUM_TCPIP_MSG_API: the number of struct tcpip_msg, which are used
 * for callback/timeout API communication. 
 * (only needed if you use tcpip.c)
 */




/**
 * MEMP_NUM_TCPIP_MSG_INPKT: the number of struct tcpip_msg, which are used
 * for incoming packets. 
 * (only needed if you use tcpip.c)
 */




/**
 * MEMP_NUM_SNMP_NODE: the number of leafs in the SNMP tree.
 */




/**
 * MEMP_NUM_SNMP_ROOTNODE: the number of branches in the SNMP tree.
 * Every branch has one leaf (MEMP_NUM_SNMP_NODE) at least!
 */




/**
 * MEMP_NUM_SNMP_VARBIND: the number of concurrent requests (does not have to
 * be changed normally) - 2 of these are used per request (1 for input,
 * 1 for output)
 */




/**
 * MEMP_NUM_SNMP_VALUE: the number of OID or values concurrently used
 * (does not have to be changed normally) - 3 of these are used per request
 * (1 for the value read and 2 for OIDs - input and output)
 */




/**
 * MEMP_NUM_NETDB: the number of concurrently running lwip_addrinfo() calls
 * (before freeing the corresponding memory using lwip_freeaddrinfo()).
 */




/**
 * MEMP_NUM_LOCALHOSTLIST: the number of host entries in the local host list
 * if DNS_LOCAL_HOSTLIST_IS_DYNAMIC==1.
 */




/**
 * MEMP_NUM_PPPOE_INTERFACES: the number of concurrently active PPPoE
 * interfaces (only used with PPPOE_SUPPORT==1)
 */




/**
 * PBUF_POOL_SIZE: the number of buffers in the pbuf pool. 
 */




/*
   ---------------------------------
   ---------- ARP options ----------
   ---------------------------------
*/
/**
 * LWIP_ARP==1: Enable ARP functionality.
 */




/**
 * ARP_TABLE_SIZE: Number of active MAC-IP address pairs cached.
 */




/**
 * ARP_QUEUEING==1: Multiple outgoing packets are queued during hardware address
 * resolution. By default, only the most recent packet is queued per IP address.
 * This is sufficient for most protocols and mainly reduces TCP connection
 * startup time. Set this to 1 if you know your application sends more than one
 * packet in a row to an IP address that is not in the ARP cache.
 */




/**
 * ETHARP_TRUST_IP_MAC==1: Incoming IP packets cause the ARP table to be
 * updated with the source MAC and IP addresses supplied in the packet.
 * You may want to disable this if you do not trust LAN peers to have the
 * correct addresses, or as a limited approach to attempt to handle
 * spoofing. If disabled, lwIP will need to make a new ARP request if
 * the peer is not already in the ARP table, adding a little latency.
 * The peer *is* in the ARP table if it requested our address before.
 * Also notice that this slows down input processing of every IP packet!
 */




/**
 * ETHARP_SUPPORT_VLAN==1: support receiving ethernet packets with VLAN header.
 * Additionally, you can define ETHARP_VLAN_CHECK to an u16_t VLAN ID to check.
 * If ETHARP_VLAN_CHECK is defined, only VLAN-traffic for this VLAN is accepted.
 * If ETHARP_VLAN_CHECK is not defined, all traffic is accepted.
 * Alternatively, define a function/define ETHARP_VLAN_CHECK_FN(eth_hdr, vlan)
 * that returns 1 to accept a packet or 0 to drop a packet.
 */




/** LWIP_ETHERNET==1: enable ethernet support for PPPoE even though ARP
 * might be disabled
 */




/** ETH_PAD_SIZE: number of bytes added before the ethernet header to ensure
 * alignment of payload after that header. Since the header is 14 bytes long,
 * without this padding e.g. addresses in the IP header will not be aligned
 * on a 32-bit boundary, so setting this to 2 can speed up 32-bit-platforms.
 */




/** ETHARP_SUPPORT_STATIC_ENTRIES==1: enable code to support static ARP table
 * entries (using etharp_add_static_entry/etharp_remove_static_entry).
 */





/*
   --------------------------------
   ---------- IP options ----------
   --------------------------------
*/
/**
 * IP_FORWARD==1: Enables the ability to forward IP packets across network
 * interfaces. If you are going to run lwIP on a device with only one network
 * interface, define this to 0.
 */




/**
 * IP_OPTIONS_ALLOWED: Defines the behavior for IP options.
 *      IP_OPTIONS_ALLOWED==0: All packets with IP options are dropped.
 *      IP_OPTIONS_ALLOWED==1: IP options are allowed (but not parsed).
 */




/**
 * IP_REASSEMBLY==1: Reassemble incoming fragmented IP packets. Note that
 * this option does not affect outgoing packet sizes, which can be controlled
 * via IP_FRAG.
 */




/**
 * IP_FRAG==1: Fragment outgoing IP packets if their size exceeds MTU. Note
 * that this option does not affect incoming packet sizes, which can be
 * controlled via IP_REASSEMBLY.
 */




/**
 * IP_REASS_MAXAGE: Maximum time (in multiples of IP_TMR_INTERVAL - so seconds, normally)
 * a fragmented IP packet waits for all fragments to arrive. If not all fragments arrived
 * in this time, the whole packet is discarded.
 */




/**
 * IP_REASS_MAX_PBUFS: Total maximum amount of pbufs waiting to be reassembled.
 * Since the received pbufs are enqueued, be sure to configure
 * PBUF_POOL_SIZE > IP_REASS_MAX_PBUFS so that the stack is still able to receive
 * packets even if the maximum amount of fragments is enqueued for reassembly!
 */




/**
 * IP_FRAG_USES_STATIC_BUF==1: Use a static MTU-sized buffer for IP
 * fragmentation. Otherwise pbufs are allocated and reference the original
 * packet data to be fragmented (or with LWIP_NETIF_TX_SINGLE_PBUF==1,
 * new PBUF_RAM pbufs are used for fragments).
 * ATTENTION: IP_FRAG_USES_STATIC_BUF==1 may not be used for DMA-enabled MACs!
 */




/**
 * IP_FRAG_MAX_MTU: Assumed max MTU on any interface for IP frag buffer
 * (requires IP_FRAG_USES_STATIC_BUF==1)
 */




/**
 * IP_DEFAULT_TTL: Default value for Time-To-Live used by transport layers.
 */




/**
 * IP_SOF_BROADCAST=1: Use the SOF_BROADCAST field to enable broadcast
 * filter per pcb on udp and raw send operations. To enable broadcast filter
 * on recv operations, you also have to set IP_SOF_BROADCAST_RECV=1.
 */




/**
 * IP_SOF_BROADCAST_RECV (requires IP_SOF_BROADCAST=1) enable the broadcast
 * filter on recv operations.
 */




/**
 * IP_FORWARD_ALLOW_TX_ON_RX_NETIF==1: allow ip_forward() to send packets back
 * out on the netif where it was received. This should only be used for
 * wireless networks.
 * ATTENTION: When this is 1, make sure your netif driver correctly marks incoming
 * link-layer-broadcast/multicast packets as such using the corresponding pbuf flags!
 */




/**
 * LWIP_RANDOMIZE_INITIAL_LOCAL_PORTS==1: randomize the local port for the first
 * local TCP/UDP pcb (default==0). This can prevent creating predictable port
 * numbers after booting a device.
 */




/*
   ----------------------------------
   ---------- ICMP options ----------
   ----------------------------------
*/
/**
 * LWIP_ICMP==1: Enable ICMP module inside the IP stack.
 * Be careful, disable that make your product non-compliant to RFC1122
 */




/**
 * ICMP_TTL: Default value for Time-To-Live used by ICMP packets.
 */




/**
 * LWIP_BROADCAST_PING==1: respond to broadcast pings (default is unicast only)
 */




/**
 * LWIP_MULTICAST_PING==1: respond to multicast pings (default is unicast only)
 */




/*
   ---------------------------------
   ---------- RAW options ----------
   ---------------------------------
*/
/**
 * LWIP_RAW==1: Enable application layer to hook into the IP layer itself.
 */




/**
 * LWIP_RAW==1: Enable application layer to hook into the IP layer itself.
 */




/*
   ----------------------------------
   ---------- DHCP options ----------
   ----------------------------------
*/
/**
 * LWIP_DHCP==1: Enable DHCP module.
 */




/**
 * DHCP_DOES_ARP_CHECK==1: Do an ARP check on the offered address.
 */




/*
   ------------------------------------
   ---------- AUTOIP options ----------
   ------------------------------------
*/
/**
 * LWIP_AUTOIP==1: Enable AUTOIP module.
 */




/**
 * LWIP_DHCP_AUTOIP_COOP==1: Allow DHCP and AUTOIP to be both enabled on
 * the same interface at the same time.
 */




/**
 * LWIP_DHCP_AUTOIP_COOP_TRIES: Set to the number of DHCP DISCOVER probes
 * that should be sent before falling back on AUTOIP. This can be set
 * as low as 1 to get an AutoIP address very quickly, but you should
 * be prepared to handle a changing IP address when DHCP overrides
 * AutoIP.
 */




/*
   ----------------------------------
   ---------- SNMP options ----------
   ----------------------------------
*/
/**
 * LWIP_SNMP==1: Turn on SNMP module. UDP must be available for SNMP
 * transport.
 */




/**
 * SNMP_CONCURRENT_REQUESTS: Number of concurrent requests the module will
 * allow. At least one request buffer is required.
 * Does not have to be changed unless external MIBs answer request asynchronously
 */




/**
 * SNMP_TRAP_DESTINATIONS: Number of trap destinations. At least one trap
 * destination is required
 */




/**
 * SNMP_PRIVATE_MIB: 
 * When using a private MIB, you have to create a file 'private_mib.h' that contains
 * a 'struct mib_array_node mib_private' which contains your MIB.
 */




/**
 * Only allow SNMP write actions that are 'safe' (e.g. disabeling netifs is not
 * a safe action and disabled when SNMP_SAFE_REQUESTS = 1).
 * Unsafe requests are disabled by default!
 */




/**
 * The maximum length of strings used. This affects the size of
 * MEMP_SNMP_VALUE elements.
 */




/**
 * The maximum depth of the SNMP tree.
 * With private MIBs enabled, this depends on your MIB!
 * This affects the size of MEMP_SNMP_VALUE elements.
 */




/**
 * The size of the MEMP_SNMP_VALUE elements, normally calculated from
 * SNMP_MAX_OCTET_STRING_LEN and SNMP_MAX_TREE_DEPTH.
 */




/*
   ----------------------------------
   ---------- IGMP options ----------
   ----------------------------------
*/
/**
 * LWIP_IGMP==1: Turn on IGMP module. 
 */




/*
   ----------------------------------
   ---------- DNS options -----------
   ----------------------------------
*/
/**
 * LWIP_DNS==1: Turn on DNS module. UDP must be available for DNS
 * transport.
 */




/** DNS maximum number of entries to maintain locally. */




/** DNS maximum host name length supported in the name table. */




/** The maximum of DNS servers */




/** DNS do a name checking between the query and the response. */




/** DNS message max. size. Default value is RFC compliant. */




/** DNS_LOCAL_HOSTLIST: Implements a local host-to-address list. If enabled,
 *  you have to define
 *    #define DNS_LOCAL_HOSTLIST_INIT {{"host1", 0x123}, {"host2", 0x234}}
 *  (an array of structs name/address, where address is an u32_t in network
 *  byte order).
 *
 *  Instead, you can also use an external function:
 *  #define DNS_LOOKUP_LOCAL_EXTERN(x) extern u32_t my_lookup_function(const char *name)
 *  that returns the IP address or INADDR_NONE if not found.
 */




/** If this is turned on, the local host-list can be dynamically changed
 *  at runtime. */




/*
   ---------------------------------
   ---------- UDP options ----------
   ---------------------------------
*/
/**
 * LWIP_UDP==1: Turn on UDP.
 */




/**
 * LWIP_UDPLITE==1: Turn on UDP-Lite. (Requires LWIP_UDP)
 */




/**
 * UDP_TTL: Default Time-To-Live value.
 */




/**
 * LWIP_NETBUF_RECVINFO==1: append destination addr and port to every netbuf.
 */




/*
   ---------------------------------
   ---------- TCP options ----------
   ---------------------------------
*/
/**
 * LWIP_TCP==1: Turn on TCP.
 */




/**
 * TCP_TTL: Default Time-To-Live value.
 */




/**
 * TCP_WND: The size of a TCP window.  This must be at least 
 * (2 * TCP_MSS) for things to work well
 */




/**
 * TCP_MAXRTX: Maximum number of retransmissions of data segments.
 */




/**
 * TCP_SYNMAXRTX: Maximum number of retransmissions of SYN segments.
 */




/**
 * TCP_QUEUE_OOSEQ==1: TCP will queue segments that arrive out of order.
 * Define to 0 if your device is low on memory.
 */




/**
 * TCP_MSS: TCP Maximum segment size. (default is 536, a conservative default,
 * you might want to increase this.)
 * For the receive side, this MSS is advertised to the remote side
 * when opening a connection. For the transmit size, this MSS sets
 * an upper limit on the MSS advertised by the remote host.
 */




/**
 * TCP_CALCULATE_EFF_SEND_MSS: "The maximum size of a segment that TCP really
 * sends, the 'effective send MSS,' MUST be the smaller of the send MSS (which
 * reflects the available reassembly buffer size at the remote host) and the
 * largest size permitted by the IP layer" (RFC 1122)
 * Setting this to 1 enables code that checks TCP_MSS against the MTU of the
 * netif used for a connection and limits the MSS if it would be too big otherwise.
 */





/**
 * TCP_SND_BUF: TCP sender buffer space (bytes).
 * To achieve good performance, this should be at least 2 * TCP_MSS.
 */




/**
 * TCP_SND_QUEUELEN: TCP sender buffer space (pbufs). This must be at least
 * as much as (2 * TCP_SND_BUF/TCP_MSS) for things to work.
 */




/**
 * TCP_SNDLOWAT: TCP writable space (bytes). This must be less than
 * TCP_SND_BUF. It is the amount of space which must be available in the
 * TCP snd_buf for select to return writable (combined with TCP_SNDQUEUELOWAT).
 */




/**
 * TCP_SNDQUEUELOWAT: TCP writable bufs (pbuf count). This must be less
 * than TCP_SND_QUEUELEN. If the number of pbufs queued on a pcb drops below
 * this number, select returns writable (combined with TCP_SNDLOWAT).
 */




/**
 * TCP_OOSEQ_MAX_BYTES: The maximum number of bytes queued on ooseq per pcb.
 * Default is 0 (no limit). Only valid for TCP_QUEUE_OOSEQ==0.
 */




/**
 * TCP_OOSEQ_MAX_PBUFS: The maximum number of pbufs queued on ooseq per pcb.
 * Default is 0 (no limit). Only valid for TCP_QUEUE_OOSEQ==0.
 */




/**
 * TCP_LISTEN_BACKLOG: Enable the backlog option for tcp listen pcb.
 */




/**
 * The maximum allowed backlog for TCP listen netconns.
 * This backlog is used unless another is explicitly specified.
 * 0xff is the maximum (u8_t).
 */




/**
 * TCP_OVERSIZE: The maximum number of bytes that tcp_write may
 * allocate ahead of time in an attempt to create shorter pbuf chains
 * for transmission. The meaningful range is 0 to TCP_MSS. Some
 * suggested values are:
 *
 * 0:         Disable oversized allocation. Each tcp_write() allocates a new
              pbuf (old behaviour).
 * 1:         Allocate size-aligned pbufs with minimal excess. Use this if your
 *            scatter-gather DMA requires aligned fragments.
 * 128:       Limit the pbuf/memory overhead to 20%.
 * TCP_MSS:   Try to create unfragmented TCP packets.
 * TCP_MSS/4: Try to create 4 fragments or less per TCP packet.
 */




/**
 * LWIP_TCP_TIMESTAMPS==1: support the TCP timestamp option.
 */




/**
 * TCP_WND_UPDATE_THRESHOLD: difference in window to trigger an
 * explicit window update
 */




/**
 * LWIP_EVENT_API and LWIP_CALLBACK_API: Only one of these should be set to 1.
 *     LWIP_EVENT_API==1: The user defines lwip_tcp_event() to receive all
 *         events (accept, sent, etc) that happen in the system.
 *     LWIP_CALLBACK_API==1: The PCB callback function is called directly
 *         for the event. This is the default.
 */






/*
   ----------------------------------
   ---------- Pbuf options ----------
   ----------------------------------
*/
/**
 * PBUF_LINK_HLEN: the number of bytes that should be allocated for a
 * link level header. The default is 14, the standard value for
 * Ethernet.
 */




/**
 * PBUF_POOL_BUFSIZE: the size of each pbuf in the pbuf pool. The default is
 * designed to accomodate single full size TCP frame in one pbuf, including
 * TCP_MSS, IP header, and link header.
 */




/*
   ------------------------------------------------
   ---------- Network Interfaces options ----------
   ------------------------------------------------
*/
/**
 * LWIP_NETIF_HOSTNAME==1: use DHCP_OPTION_HOSTNAME with netif's hostname
 * field.
 */




/**
 * LWIP_NETIF_API==1: Support netif api (in netifapi.c)
 */




/**
 * LWIP_NETIF_STATUS_CALLBACK==1: Support a callback function whenever an interface
 * changes its up/down status (i.e., due to DHCP IP acquistion)
 */




/**
 * LWIP_NETIF_LINK_CALLBACK==1: Support a callback function from an interface
 * whenever the link changes (i.e., link down)
 */




/**
 * LWIP_NETIF_REMOVE_CALLBACK==1: Support a callback function that is called
 * when a netif has been removed
 */




/**
 * LWIP_NETIF_HWADDRHINT==1: Cache link-layer-address hints (e.g. table
 * indices) in struct netif. TCP and UDP can make use of this to prevent
 * scanning the ARP table for every sent packet. While this is faster for big
 * ARP tables or many concurrent connections, it might be counterproductive
 * if you have a tiny ARP table or if there never are concurrent connections.
 */




/**
 * LWIP_NETIF_LOOPBACK==1: Support sending packets with a destination IP
 * address equal to the netif IP address, looping them back up the stack.
 */




/**
 * LWIP_LOOPBACK_MAX_PBUFS: Maximum number of pbufs on queue for loopback
 * sending for each netif (0 = disabled)
 */




/**
 * LWIP_NETIF_LOOPBACK_MULTITHREADING: Indicates whether threading is enabled in
 * the system, as netifs must change how they behave depending on this setting
 * for the LWIP_NETIF_LOOPBACK option to work.
 * Setting this is needed to avoid reentering non-reentrant functions like
 * tcp_input().
 *    LWIP_NETIF_LOOPBACK_MULTITHREADING==1: Indicates that the user is using a
 *       multithreaded environment like tcpip.c. In this case, netif->input()
 *       is called directly.
 *    LWIP_NETIF_LOOPBACK_MULTITHREADING==0: Indicates a polling (or NO_SYS) setup.
 *       The packets are put on a list and netif_poll() must be called in
 *       the main application loop.
 */




/**
 * LWIP_NETIF_TX_SINGLE_PBUF: if this is set to 1, lwIP tries to put all data
 * to be sent into one single pbuf. This is for compatibility with DMA-enabled
 * MACs that do not support scatter-gather.
 * Beware that this might involve CPU-memcpy before transmitting that would not
 * be needed without this flag! Use this only if you need to!
 *
 * @todo: TCP and IP-frag do not work with this, yet:
 */




/*
   ------------------------------------
   ---------- LOOPIF options ----------
   ------------------------------------
*/
/**
 * LWIP_HAVE_LOOPIF==1: Support loop interface (127.0.0.1) and loopif.c
 */




/*
   ------------------------------------
   ---------- SLIPIF options ----------
   ------------------------------------
*/
/**
 * LWIP_HAVE_SLIPIF==1: Support slip interface and slipif.c
 */




/*
   ------------------------------------
   ---------- Thread options ----------
   ------------------------------------
*/
/**
 * TCPIP_THREAD_NAME: The name assigned to the main tcpip thread.
 */




/**
 * TCPIP_THREAD_STACKSIZE: The stack size used by the main tcpip thread.
 * The stack size value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * TCPIP_THREAD_PRIO: The priority assigned to the main tcpip thread.
 * The priority value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * TCPIP_MBOX_SIZE: The mailbox size for the tcpip thread messages
 * The queue size value itself is platform-dependent, but is passed to
 * sys_mbox_new() when tcpip_init is called.
 */




/**
 * SLIPIF_THREAD_NAME: The name assigned to the slipif_loop thread.
 */




/**
 * SLIP_THREAD_STACKSIZE: The stack size used by the slipif_loop thread.
 * The stack size value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * SLIPIF_THREAD_PRIO: The priority assigned to the slipif_loop thread.
 * The priority value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * PPP_THREAD_NAME: The name assigned to the pppInputThread.
 */




/**
 * PPP_THREAD_STACKSIZE: The stack size used by the pppInputThread.
 * The stack size value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * PPP_THREAD_PRIO: The priority assigned to the pppInputThread.
 * The priority value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * DEFAULT_THREAD_NAME: The name assigned to any other lwIP thread.
 */




/**
 * DEFAULT_THREAD_STACKSIZE: The stack size used by any other lwIP thread.
 * The stack size value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * DEFAULT_THREAD_PRIO: The priority assigned to any other lwIP thread.
 * The priority value itself is platform-dependent, but is passed to
 * sys_thread_new() when the thread is created.
 */




/**
 * DEFAULT_RAW_RECVMBOX_SIZE: The mailbox size for the incoming packets on a
 * NETCONN_RAW. The queue size value itself is platform-dependent, but is passed
 * to sys_mbox_new() when the recvmbox is created.
 */




/**
 * DEFAULT_UDP_RECVMBOX_SIZE: The mailbox size for the incoming packets on a
 * NETCONN_UDP. The queue size value itself is platform-dependent, but is passed
 * to sys_mbox_new() when the recvmbox is created.
 */




/**
 * DEFAULT_TCP_RECVMBOX_SIZE: The mailbox size for the incoming packets on a
 * NETCONN_TCP. The queue size value itself is platform-dependent, but is passed
 * to sys_mbox_new() when the recvmbox is created.
 */




/**
 * DEFAULT_ACCEPTMBOX_SIZE: The mailbox size for the incoming connections.
 * The queue size value itself is platform-dependent, but is passed to
 * sys_mbox_new() when the acceptmbox is created.
 */




/*
   ----------------------------------------------
   ---------- Sequential layer options ----------
   ----------------------------------------------
*/
/**
 * LWIP_TCPIP_CORE_LOCKING: (EXPERIMENTAL!)
 * Don't use it if you're not an active lwIP project member
 */




/**
 * LWIP_TCPIP_CORE_LOCKING_INPUT: (EXPERIMENTAL!)
 * Don't use it if you're not an active lwIP project member
 */




/**
 * LWIP_NETCONN==1: Enable Netconn API (require to use api_lib.c)
 */




/** LWIP_TCPIP_TIMEOUT==1: Enable tcpip_timeout/tcpip_untimeout tod create
 * timers running in tcpip_thread from another thread.
 */




/*
   ------------------------------------
   ---------- Socket options ----------
   ------------------------------------
*/
/**
 * LWIP_SOCKET==1: Enable Socket API (require to use sockets.c)
 */




/**
 * LWIP_COMPAT_SOCKETS==1: Enable BSD-style sockets functions names.
 * (only used if you use sockets.c)
 */




/**
 * LWIP_POSIX_SOCKETS_IO_NAMES==1: Enable POSIX-style sockets functions names.
 * Disable this option if you use a POSIX operating system that uses the same
 * names (read, write & close). (only used if you use sockets.c)
 */
#line 1449 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"

/**
 * LWIP_TCP_KEEPALIVE==1: Enable TCP_KEEPIDLE, TCP_KEEPINTVL and TCP_KEEPCNT
 * options processing. Note that TCP_KEEPIDLE and TCP_KEEPINTVL have to be set
 * in seconds. (does not require sockets.c, and will affect tcp.c)
 */




/**
 * LWIP_SO_SNDTIMEO==1: Enable send timeout for sockets/netconns and
 * SO_SNDTIMEO processing.
 */




/**
 * LWIP_SO_RCVTIMEO==1: Enable receive timeout for sockets/netconns and
 * SO_RCVTIMEO processing.
 */




/**
 * LWIP_SO_RCVBUF==1: Enable SO_RCVBUF processing.
 */




/**
 * If LWIP_SO_RCVBUF is used, this is the default value for recv_bufsize.
 */




/**
 * SO_REUSE==1: Enable SO_REUSEADDR option.
 */




/**
 * SO_REUSE_RXTOALL==1: Pass a copy of incoming broadcast/multicast packets
 * to all local matches if SO_REUSEADDR is turned on.
 * WARNING: Adds a memcpy for every packet if passing to more than one pcb!
 */




/*
   ----------------------------------------
   ---------- Statistics options ----------
   ----------------------------------------
*/
/**
 * LWIP_STATS==1: Enable statistics collection in lwip_stats.
 */




#line 1607 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"

#line 1619 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"



/*
   ---------------------------------
   ---------- PPP options ----------
   ---------------------------------
*/
/**
 * PPP_SUPPORT==1: Enable PPP.
 */




/**
 * PPPOE_SUPPORT==1: Enable PPP Over Ethernet
 */




/**
 * PPPOS_SUPPORT==1: Enable PPP Over Serial
 */




#line 1785 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/opt.h"

/*
   --------------------------------------
   ---------- Checksum options ----------
   --------------------------------------
*/
/**
 * CHECKSUM_GEN_IP==1: Generate checksums in software for outgoing IP packets.
 */



 
/**
 * CHECKSUM_GEN_UDP==1: Generate checksums in software for outgoing UDP packets.
 */



 
/**
 * CHECKSUM_GEN_TCP==1: Generate checksums in software for outgoing TCP packets.
 */




/**
 * CHECKSUM_GEN_ICMP==1: Generate checksums in software for outgoing ICMP packets.
 */



 
/**
 * CHECKSUM_CHECK_IP==1: Check checksums in software for incoming IP packets.
 */



 
/**
 * CHECKSUM_CHECK_UDP==1: Check checksums in software for incoming UDP packets.
 */




/**
 * CHECKSUM_CHECK_TCP==1: Check checksums in software for incoming TCP packets.
 */




/**
 * LWIP_CHECKSUM_ON_COPY==1: Calculate checksum when copying data from
 * application buffers to pbufs.
 */




/*
   ---------------------------------------
   ---------- Hook options ---------------
   ---------------------------------------
*/

/* Hooks are undefined by default, define them to a function if you need them. */

/**
 * LWIP_HOOK_IP4_INPUT(pbuf, input_netif):
 * - called from ip_input() (IPv4)
 * - pbuf: received struct pbuf passed to ip_input()
 * - input_netif: struct netif on which the packet has been received
 * Return values:
 * - 0: Hook has not consumed the packet, packet is processed as normal
 * - != 0: Hook has consumed the packet.
 * If the hook consumed the packet, 'pbuf' is in the responsibility of the hook
 * (i.e. free it when done).
 */

/**
 * LWIP_HOOK_IP4_ROUTE(dest):
 * - called from ip_route() (IPv4)
 * - dest: destination IPv4 address
 * Returns the destination netif or NULL if no destination netif is found. In
 * that case, ip_route() continues as normal.
 */

/*
   ---------------------------------------
   ---------- Debugging options ----------
   ---------------------------------------
*/
/**
 * LWIP_DBG_MIN_LEVEL: After masking, the value of the debug is
 * compared against this value. If it is smaller, then debugging
 * messages are written.
 */




/**
 * LWIP_DBG_TYPES_ON: A mask that can be used to globally enable/disable
 * debug messages of certain types.
 */




/**
 * ETHARP_DEBUG: Enable debugging in etharp.c.
 */




/**
 * NETIF_DEBUG: Enable debugging in netif.c.
 */




/**
 * PBUF_DEBUG: Enable debugging in pbuf.c.
 */




/**
 * API_LIB_DEBUG: Enable debugging in api_lib.c.
 */




/**
 * API_MSG_DEBUG: Enable debugging in api_msg.c.
 */




/**
 * SOCKETS_DEBUG: Enable debugging in sockets.c.
 */




/**
 * ICMP_DEBUG: Enable debugging in icmp.c.
 */




/**
 * IGMP_DEBUG: Enable debugging in igmp.c.
 */




/**
 * INET_DEBUG: Enable debugging in inet.c.
 */




/**
 * IP_DEBUG: Enable debugging for IP.
 */




/**
 * IP_REASS_DEBUG: Enable debugging in ip_frag.c for both frag & reass.
 */




/**
 * RAW_DEBUG: Enable debugging in raw.c.
 */




/**
 * MEM_DEBUG: Enable debugging in mem.c.
 */




/**
 * MEMP_DEBUG: Enable debugging in memp.c.
 */




/**
 * SYS_DEBUG: Enable debugging in sys.c.
 */




/**
 * TIMERS_DEBUG: Enable debugging in timers.c.
 */




/**
 * TCP_DEBUG: Enable debugging for TCP.
 */




/**
 * TCP_INPUT_DEBUG: Enable debugging in tcp_in.c for incoming debug.
 */




/**
 * TCP_FR_DEBUG: Enable debugging in tcp_in.c for fast retransmit.
 */




/**
 * TCP_RTO_DEBUG: Enable debugging in TCP for retransmit
 * timeout.
 */




/**
 * TCP_CWND_DEBUG: Enable debugging for TCP congestion window.
 */




/**
 * TCP_WND_DEBUG: Enable debugging in tcp_in.c for window updating.
 */




/**
 * TCP_OUTPUT_DEBUG: Enable debugging in tcp_out.c output functions.
 */




/**
 * TCP_RST_DEBUG: Enable debugging for TCP with the RST message.
 */




/**
 * TCP_QLEN_DEBUG: Enable debugging for TCP queue lengths.
 */




/**
 * UDP_DEBUG: Enable debugging in UDP.
 */




/**
 * TCPIP_DEBUG: Enable debugging in tcpip.c.
 */




/**
 * PPP_DEBUG: Enable debugging for PPP.
 */




/**
 * SLIP_DEBUG: Enable debugging in slipif.c.
 */




/**
 * DHCP_DEBUG: Enable debugging in dhcp.c.
 */




/**
 * AUTOIP_DEBUG: Enable debugging in autoip.c.
 */




/**
 * SNMP_MSG_DEBUG: Enable debugging for SNMP messages.
 */




/**
 * SNMP_MIB_DEBUG: Enable debugging for SNMP MIBs.
 */




/**
 * DNS_DEBUG: Enable debugging for DNS.
 */




#line 45 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"



#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */







#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */







#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/mem.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */









#line 68 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/mem.h"

/* MEM_SIZE would have to be aligned, but using 64000 here instead of
 * 65535 leaves some room for alignment...
 */




typedef u16_t mem_size_t;



#line 87 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/mem.h"
/* lwIP alternative malloc */
void  mem_init(void);
void *mem_trim(void *mem, mem_size_t size);

void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void  mem_free(void *mem);


/** Calculate memory size for an aligned buffer - returns the next highest
 * multiple of MEM_ALIGNMENT (e.g. LWIP_MEM_ALIGN_SIZE(3) and
 * LWIP_MEM_ALIGN_SIZE(4) will both yield 4 for MEM_ALIGNMENT == 4).
 */




/** Calculate safe memory size for an aligned buffer when using an unaligned
 * type as storage. This includes a safety-margin on (MEM_ALIGNMENT - 1) at the
 * start (e.g. if buffer is u8_t[] and actual data will be u32_t*)
 */




/** Align a memory pointer to the alignment defined by MEM_ALIGNMENT
 * so that ADDR % MEM_ALIGNMENT == 0
 */








#line 40 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/pbuf.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */




#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/err.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */










/** Define LWIP_ERR_T in cc.h if you want to use
 *  a different type for your platform (must be signed). */



typedef s8_t err_t;


/* Definitions for error constants. */

#line 62 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/err.h"














extern const char *lwip_strerr(err_t err);








#line 38 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/pbuf.h"





/** Currently, the pbuf_custom code is only needed for one specific configuration
 * of IP_FRAG */





typedef enum {
  PBUF_TRANSPORT,
  PBUF_IP,
  PBUF_LINK,
  PBUF_RAW
} pbuf_layer;

typedef enum {
  PBUF_RAM, /* pbuf data is stored in RAM */
  PBUF_ROM, /* pbuf data is stored in ROM */
  PBUF_REF, /* pbuf comes from the pbuf pool */
  PBUF_POOL /* pbuf payload refers to RAM */
} pbuf_type;


/** indicates this packet's data should be immediately passed to the application */

/** indicates this is a custom pbuf: pbuf_free and pbuf_header handle such a
    a pbuf differently */

/** indicates this pbuf is UDP multicast to be looped back */

/** indicates this pbuf was received as link-level broadcast */

/** indicates this pbuf was received as link-level multicast */

/** indicates this pbuf includes a TCP FIN flag */


struct pbuf {
  /** next pbuf in singly linked pbuf chain */
  struct pbuf *next;

  /** pointer to the actual data in the buffer */
  void *payload;

  /**
   * total length of this buffer and all next buffers in chain
   * belonging to the same packet.
   *
   * For non-queue packet chains this is the invariant:
   * p->tot_len == p->len + (p->next? p->next->tot_len: 0)
   */
  u16_t tot_len;

  /** length of this buffer */
  u16_t len;

  /** pbuf_type as u8_t instead of enum to save space */
  u8_t /*pbuf_type*/ type;

  /** misc flags */
  u8_t flags;

  /**
   * the reference count always equals the number of pointers
   * that refer to this pbuf. This can be pointers from an application,
   * the stack itself, or pbuf->next pointers from a chain.
   */
  u16_t ref;
};


/** Prototype for a function to free a custom pbuf */
typedef void (*pbuf_free_custom_fn)(struct pbuf *p);

/** A custom pbuf: like a pbuf, but following a function pointer to free it. */
struct pbuf_custom {
  /** The actual pbuf */
  struct pbuf pbuf;
  /** This function is called when pbuf_free deallocates this pbuf(_custom) */
  pbuf_free_custom_fn custom_free_function;
};


#line 142 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/pbuf.h"

/* Initializes the pbuf module. This call is empty for now, but may not be in future. */


struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);

struct pbuf *pbuf_alloced_custom(pbuf_layer l, u16_t length, pbuf_type type,
                                 struct pbuf_custom *p, void *payload_mem,
                                 u16_t payload_mem_len);

void pbuf_realloc(struct pbuf *p, u16_t size); 
u8_t pbuf_header(struct pbuf *p, s16_t header_size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u8_t pbuf_clen(struct pbuf *p);  
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, struct pbuf *p_from);
u16_t pbuf_copy_partial(struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);





u8_t pbuf_get_at(struct pbuf* p, u16_t offset);
u16_t pbuf_memcmp(struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(struct pbuf* p, const char* substr);





#line 41 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */





#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/def.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */



/* arch.h might define NULL already */














/* Endianess-optimized shifting of two u8_t to create one u16_t */











/* workaround for naming collisions on some platforms */

#line 76 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/def.h"







#line 99 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);


/* These macros should be calculated by the preprocessor and are used
   with compile-time constants only (so that there is no little-endian
   overhead at runtime). */
#line 115 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/def.h"









#line 38 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */










/* This is the aligned version of ip_addr_t,
   used as local variable, on the stack, etc. */
struct ip_addr {
  u32_t addr;
};

/* This is the packed version of ip_addr_t,
   used in network headers that are itself packed */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/bpstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack(1)
#line 52 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"


struct ip_addr_packed {
  u32_t addr;
} ;

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/epstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack()
#line 60 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"


/** ip_addr_t uses a struct for convenience only, so that the same defines can
 * operate both on ip_addr_t as well as on ip_addr_p_t. */
typedef struct ip_addr ip_addr_t;
typedef struct ip_addr_packed ip_addr_p_t;

/*
 * struct ipaddr2 is used in the definition of the ARP packet format in
 * order to support compilers that don't have structure packing.
 */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/bpstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack(1)
#line 73 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"


struct ip_addr2 {
  u16_t addrw[2];
} ;

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/epstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack()
#line 81 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"


/* Forward declaration to not include netif.h */
struct netif;

extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;

/** IP_ADDR_ can be used as a fixed IP address
 *  for the wildcard and the broadcast address
 */



/** 255.255.255.255 */

/** 127.0.0.1 */

/** 0.0.0.0 */

/** 255.255.255.255 */


/* Definitions of the bits in an Internet address integer.

   On subnets, host and network parts are found according to
   the subnet mask, not these masks.  */





























#line 145 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"
/** Set an IP address given by the four byte-parts.
    Little-endian version that prevents the use of htonl. */
#line 153 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"

/** MEMCPY-like copying of IP addresses where addresses are known to be
 * 16-bit-aligned if the port is correctly configured (so a port could define
 * this to copying 2 u16_t's) - no NULL-pointer-checking needed. */




/** Copy IP address - faster than ip_addr_set: no NULL check */

/** Safely copy one IP address to another (src may be NULL) */



/** Set complete address to zero */

/** Set address to IPADDR_ANY (no need for htonl()) */

/** Set address to loopback address */

/** Safely copy one IP address to another and change byte order
 * from host- to network-order. */



/** IPv4 only: set the IP address given as an u32_t */

/** IPv4 only: get the IP address as an u32_t */


/** Get the network address by combining host address with netmask */


/**
 * Determine if two address are on the same network.
 *
 * @arg addr1 IP address 1
 * @arg addr2 IP address 2
 * @arg mask network identifier mask
 * @return !0 if the network identifiers of both address match
 */









u8_t ip4_addr_isbroadcast(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);





#line 218 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip_addr.h"

/* Get one byte from the 4-byte address */




/* These are cast to u16_t, with the intent that they are often arguments
 * to printf using the U16_F format from cc.h. */





/** For backwards compatibility */


u32_t ipaddr_addr(const char *cp);
int ipaddr_aton(const char *cp, ip_addr_t *addr);
/** returns ptr to static buffer; not reentrant! */
char *ipaddr_ntoa(const ip_addr_t *addr);
char *ipaddr_ntoa_r(const ip_addr_t *addr, char *buf, int buflen);





#line 40 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/netif.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */














struct dhcp;









/* Throughout this file, IP addresses are expected to be in
 * the same byte order as in IP_PCB. */

/** must be the maximum of all used hardware address lengths
    across all types of interfaces in use */


/** Whether the network interface is 'up'. This is
 * a software flag used to control whether this network
 * interface is enabled and processes traffic.
 * It is set by the startup code (for static IP configuration) or
 * by dhcp/autoip when an address has been assigned.
 */

/** If set, the netif has broadcast capability.
 * Set by the netif driver in its init function. */

/** If set, the netif is one end of a point-to-point connection.
 * Set by the netif driver in its init function. */

/** If set, the interface is configured using DHCP.
 * Set by the DHCP code when starting or stopping DHCP. */

/** If set, the interface has an active link
 *  (set by the network interface driver).
 * Either set by the netif driver in its init function (if the link
 * is up at that time) or at a later point once the link comes up
 * (if link detection is supported by the hardware). */

/** If set, the netif is an ethernet device using ARP.
 * Set by the netif driver in its init function.
 * Used to check input packet types and use of DHCP. */

/** If set, the netif is an ethernet device. It might not use
 * ARP or TCP/IP if it is used for PPPoE only.
 */

/** If set, the netif has IGMP capability.
 * Set by the netif driver in its init function. */


/** Function prototype for netif init functions. Set up flags and output/linkoutput
 * callback functions in this function.
 *
 * @param netif The netif to initialize
 */
typedef err_t (*netif_init_fn)(struct netif *netif);
/** Function prototype for netif->input functions. This function is saved as 'input'
 * callback function in the netif struct. Call it when a packet has been received.
 *
 * @param p The received packet, copied into a pbuf
 * @param inp The netif which received the packet
 */
typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
/** Function prototype for netif->output functions. Called by lwIP when a packet
 * shall be sent. For ethernet netif, set this to 'etharp_output' and set
 * 'linkoutput'.
 *
 * @param netif The netif which shall send a packet
 * @param p The packet to send (p->payload points to IP header)
 * @param ipaddr The IP address to which the packet shall be sent
 */
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       ip_addr_t *ipaddr);
/** Function prototype for netif->linkoutput functions. Only used for ethernet
 * netifs. This function is called by ARP when a packet shall be sent.
 *
 * @param netif The netif which shall send a packet
 * @param p The packet to send (raw ethernet packet)
 */
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);
/** Function prototype for netif status- or link-callback functions. */
typedef void (*netif_status_callback_fn)(struct netif *netif);
/** Function prototype for netif igmp_mac_filter functions */
typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       ip_addr_t *group, u8_t action);

/** Generic data structure used for all lwIP network interfaces.
 *  The following fields should be filled in by the initialization
 *  function for the device driver: hwaddr_len, hwaddr[], mtu, flags */
struct netif {
  /** pointer to next in linked list */
  struct netif *next;

  /** IP address configuration in network byte order */
  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;

  /** This function is called by the network device driver
   *  to pass a packet up the TCP/IP stack. */
  netif_input_fn input;
  /** This function is called by the IP module when it wants
   *  to send a packet on the interface. This function typically
   *  first resolves the hardware address, then sends the packet. */
  netif_output_fn output;
  /** This function is called by the ARP module when it wants
   *  to send a packet on the interface. This function outputs
   *  the pbuf as-is on the link medium. */
  netif_linkoutput_fn linkoutput;
#line 170 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/netif.h"
  /** This field can be set by the device driver and could point
   *  to state information for the device. */
  void *state;

  /** the DHCP client state information for this netif */
  struct dhcp *dhcp;
#line 185 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/netif.h"
  /** maximum transfer unit (in bytes) */
  u16_t mtu;
  /** number of bytes used in hwaddr */
  u8_t hwaddr_len;
  /** link level hardware address of this interface */
  u8_t hwaddr[6U];
  /** flags (see NETIF_FLAG_ above) */
  u8_t flags;
  /** descriptive abbreviation */
  char name[2];
  /** number of this interface */
  u8_t num;
#line 230 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/netif.h"
};

#line 250 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/netif.h"


/** The list of network interfaces. */
extern struct netif *netif_list;
/** The default network interface. */
extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
      ip_addr_t *gw, void *state, netif_init_fn init, netif_input_fn input);

void
netif_set_addr(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
      ip_addr_t *gw);
void netif_remove(struct netif * netif);

/* Returns a network interface given its name. The name is of the form
   "et0", where the first two letters are the "name" field in the
   netif structure, and the digit is in the num field in the same
   structure. */
struct netif *netif_find(char *name);

void netif_set_default(struct netif *netif);

void netif_set_ipaddr(struct netif *netif, ip_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, ip_addr_t *netmask);
void netif_set_gw(struct netif *netif, ip_addr_t *gw);

void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);
/** Ask if an interface is up */


#line 290 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/netif.h"

void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
/** Ask if a link is up */ 
















#line 317 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/netif.h"











#line 42 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"





/** Currently, the function ip_output_if_opt() is only used with IGMP */










/* This is passed as the destination address to ip_output_if (not
   to ip_output), meaning that an IP header already is constructed
   in the pbuf. This is used when TCP retransmits. */











/* This is the common part of all PCB types. It needs to be at the
   beginning of a PCB type definition. It is located here so that
   changes to this common part are made in one location instead of
   having to change all PCB structs. */
#line 88 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"

struct ip_pcb {
/* Common members of all PCB types */
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
};

/*
 * Option flags per-socket. These are the same like SO_XXX.
 */
/*#define SOF_DEBUG       0x01U     Unimplemented: turn on debugging info recording */



/*#define SOF_DONTROUTE   0x10U     Unimplemented: just use interface addresses */

/*#define SOF_USELOOPBACK 0x40U     Unimplemented: bypass hardware when possible */

/*#define SOF_OOBINLINE   0x0100U   Unimplemented: leave received OOB data in line */
/*#define SOF_REUSEPORT   0x0200U   Unimplemented: allow local address & port reuse */

/* These flags are inherited (e.g. from a listen-pcb to a connection-pcb): */



#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/bpstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack(1)
#line 114 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"


struct ip_hdr {
  /* version / header length */
  u8_t _v_hl;
  /* type of service */
  u8_t _tos;
  /* total length */
  u16_t _len;
  /* identification */
  u16_t _id;
  /* fragment offset field */
  u16_t _offset;




  /* time to live */
  u8_t _ttl;
  /* protocol*/
  u8_t _proto;
  /* checksum */
  u16_t _chksum;
  /* source and destination IP addresses */
  ip_addr_p_t src;
  ip_addr_p_t dest; 
} ;

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/epstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack()
#line 144 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"


#line 155 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"

#line 164 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"

/** The interface that provided the packet for the current callback invocation. */
extern struct netif *current_netif;
/** Header of the input packet currently being processed. */
extern const struct ip_hdr *current_header;
/** Source IP address of current_header */
extern ip_addr_t current_iphdr_src;
/** Destination IP address of current_header */
extern ip_addr_t current_iphdr_dest;


struct netif *ip_route(ip_addr_t *dest);
err_t ip_input(struct pbuf *p, struct netif *inp);
err_t ip_output(struct pbuf *p, ip_addr_t *src, ip_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto);
err_t ip_output_if(struct pbuf *p, ip_addr_t *src, ip_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto,
       struct netif *netif);
#line 191 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/ip.h"
/** Get the interface that received the current packet.
 * This function must only be called from a receive callback (udp_recv,
 * raw_recv, tcp_accept). It will return NULL otherwise. */

/** Get the IP header of the current packet.
 * This function must only be called from a receive callback (udp_recv,
 * raw_recv, tcp_accept). It will return NULL otherwise. */

/** Source IP address of current_header */

/** Destination IP address of current_header */


/** Gets an IP pcb option (SOF_* flags) */

/** Sets an IP pcb option (SOF_* flags) */

/** Resets an IP pcb option (SOF_* flags) */















#line 42 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/icmp.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */












#line 55 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/icmp.h"

enum icmp_dur_type {
  ICMP_DUR_NET   = 0,  /* net unreachable */
  ICMP_DUR_HOST  = 1,  /* host unreachable */
  ICMP_DUR_PROTO = 2,  /* protocol unreachable */
  ICMP_DUR_PORT  = 3,  /* port unreachable */
  ICMP_DUR_FRAG  = 4,  /* fragmentation needed and DF set */
  ICMP_DUR_SR    = 5   /* source route failed */
};

enum icmp_te_type {
  ICMP_TE_TTL  = 0,    /* time to live exceeded in transit */
  ICMP_TE_FRAG = 1     /* fragment reassembly time exceeded */
};

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/bpstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack(1)
#line 72 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/icmp.h"

/** This is the standard ICMP header only that the u32_t data
 *  is splitted to two u16_t like ICMP echo needs it.
 *  This header is also used for other ICMP types that do not
 *  use the data part.
 */

struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} ;

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/epstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack()
#line 89 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/icmp.h"





/** Combines type and code to an u16_t */






void icmp_input(struct pbuf *p, struct netif *inp);
void icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t);
void icmp_time_exceeded(struct pbuf *p, enum icmp_te_type t);







#line 43 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"






struct tcp_pcb;

/** Function prototype for tcp accept callback functions. Called when a new
 * connection can be accepted on a listening pcb.
 *
 * @param arg Additional argument to pass to the callback function (@see tcp_arg())
 * @param newpcb The new connection pcb
 * @param err An error code if there has been an error accepting.
 *            Only return ERR_ABRT if you have called tcp_abort from within the
 *            callback function!
 */
typedef err_t (*tcp_accept_fn)(void *arg, struct tcp_pcb *newpcb, err_t err);

/** Function prototype for tcp receive callback functions. Called when data has
 * been received.
 *
 * @param arg Additional argument to pass to the callback function (@see tcp_arg())
 * @param tpcb The connection pcb which received data
 * @param p The received data (or NULL when the connection has been closed!)
 * @param err An error code if there has been an error receiving
 *            Only return ERR_ABRT if you have called tcp_abort from within the
 *            callback function!
 */
typedef err_t (*tcp_recv_fn)(void *arg, struct tcp_pcb *tpcb,
                             struct pbuf *p, err_t err);

/** Function prototype for tcp sent callback functions. Called when sent data has
 * been acknowledged by the remote side. Use it to free corresponding resources.
 * This also means that the pcb has now space available to send new data.
 *
 * @param arg Additional argument to pass to the callback function (@see tcp_arg())
 * @param tpcb The connection pcb for which data has been acknowledged
 * @param len The amount of bytes acknowledged
 * @return ERR_OK: try to send some data by calling tcp_output
 *            Only return ERR_ABRT if you have called tcp_abort from within the
 *            callback function!
 */
typedef err_t (*tcp_sent_fn)(void *arg, struct tcp_pcb *tpcb,
                              u16_t len);

/** Function prototype for tcp poll callback functions. Called periodically as
 * specified by @see tcp_poll.
 *
 * @param arg Additional argument to pass to the callback function (@see tcp_arg())
 * @param tpcb tcp pcb
 * @return ERR_OK: try to send some data by calling tcp_output
 *            Only return ERR_ABRT if you have called tcp_abort from within the
 *            callback function!
 */
typedef err_t (*tcp_poll_fn)(void *arg, struct tcp_pcb *tpcb);

/** Function prototype for tcp error callback functions. Called when the pcb
 * receives a RST or is unexpectedly closed for any other reason.
 *
 * @note The corresponding pcb is already freed when this callback is called!
 *
 * @param arg Additional argument to pass to the callback function (@see tcp_arg())
 * @param err Error code to indicate why the pcb has been closed
 *            ERR_ABRT: aborted through tcp_abort or by a TCP timer
 *            ERR_RST: the connection was reset by the remote host
 */
typedef void  (*tcp_err_fn)(void *arg, err_t err);

/** Function prototype for tcp connected callback functions. Called when a pcb
 * is connected to the remote side after initiating a connection attempt by
 * calling tcp_connect().
 *
 * @param arg Additional argument to pass to the callback function (@see tcp_arg())
 * @param tpcb The connection pcb which is connected
 * @param err An unused error code, always ERR_OK currently ;-) TODO!
 *            Only return ERR_ABRT if you have called tcp_abort from within the
 *            callback function!
 *
 * @note When a connection attempt fails, the error callback is currently called!
 */
typedef err_t (*tcp_connected_fn)(void *arg, struct tcp_pcb *tpcb, err_t err);

enum tcp_state {
  CLOSED      = 0,
  LISTEN      = 1,
  SYN_SENT    = 2,
  SYN_RCVD    = 3,
  ESTABLISHED = 4,
  FIN_WAIT_1  = 5,
  FIN_WAIT_2  = 6,
  CLOSE_WAIT  = 7,
  CLOSING     = 8,
  LAST_ACK    = 9,
  TIME_WAIT   = 10
};


  /* Function to call when a listener has been connected.
   * @param arg user-supplied argument (tcp_pcb.callback_arg)
   * @param pcb a new tcp_pcb that now is connected
   * @param err an error argument (TODO: that is current always ERR_OK?)
   * @return ERR_OK: accept the new connection,
   *                 any other err_t abortsthe new connection
   */





/**
 * members common to struct tcp_pcb and struct tcp_listen_pcb
 */
#line 165 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"


/* the TCP protocol control block */
struct tcp_pcb {
/** common PCB members */
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
/** protocol specific PCB members */
  struct tcp_pcb *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;

  /* ports are in host byte order */
  u16_t remote_port;
  
  u8_t flags;
#line 186 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"

  /* the rest of the fields are in host byte order
     as we have to do some math with them */

  /* Timers */
  u8_t polltmr, pollinterval;
  u8_t last_timer;
  u32_t tmr;

  /* receiver variables */
  u32_t rcv_nxt;   /* next seqno expected */
  u16_t rcv_wnd;   /* receiver window available */
  u16_t rcv_ann_wnd; /* receiver window to announce */
  u32_t rcv_ann_right_edge; /* announced right edge of window */

  /* Retransmission timer. */
  s16_t rtime;

  u16_t mss;   /* maximum segment size */

  /* RTT (round trip time) estimation variables */
  u32_t rttest; /* RTT estimate in 500ms ticks */
  u32_t rtseq;  /* sequence number being timed */
  s16_t sa, sv; /* @todo document this */

  s16_t rto;    /* retransmission time-out */
  u8_t nrtx;    /* number of retransmissions */

  /* fast retransmit/recovery */
  u8_t dupacks;
  u32_t lastack; /* Highest acknowledged seqno. */

  /* congestion avoidance/control variables */
  u16_t cwnd;
  u16_t ssthresh;

  /* sender variables */
  u32_t snd_nxt;   /* next new seqno to be sent */
  u32_t snd_wl1, snd_wl2; /* Sequence and acknowledgement numbers of last
                             window update. */
  u32_t snd_lbb;       /* Sequence number of next byte to be buffered. */
  u16_t snd_wnd;   /* sender window */
  u16_t snd_wnd_max; /* the maximum sender window announced by the remote host */

  u16_t acked;

  u16_t snd_buf;   /* Available buffer space for sending (in bytes). */

  u16_t snd_queuelen; /* Available buffer space for sending (in tcp_segs). */


  /* Extra bytes available at the end of the last pbuf in unsent. */
  u16_t unsent_oversize;


  /* These are ordered by sequence number: */
  struct tcp_seg *unsent;   /* Unsent (queued) segments. */
  struct tcp_seg *unacked;  /* Sent but unacknowledged segments. */




  struct pbuf *refused_data; /* Data previously received but not yet taken by upper layer */


  /* Function to be called when more send buffer space is available. */
  tcp_sent_fn sent;
  /* Function to be called when (in-sequence) data has arrived. */
  tcp_recv_fn recv;
  /* Function to be called when a connection has been set up. */
  tcp_connected_fn connected;
  /* Function which is called periodically. */
  tcp_poll_fn poll;
  /* Function to be called whenever a fatal error occurs. */
  tcp_err_fn errf;







  /* idle time before KEEPALIVE is sent */
  u32_t keep_idle;




  
  /* Persist timer counter */
  u8_t persist_cnt;
  /* Persist timer back-off */
  u8_t persist_backoff;

  /* KEEPALIVE counter */
  u8_t keep_cnt_sent;
};

struct tcp_pcb_listen {  
/* Common members of all PCB types */
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
/* Protocol specific PCB members */
  struct tcp_pcb_listen *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;





};

#line 314 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"

/* Application program's interface: */
struct tcp_pcb * tcp_new     (void);

void             tcp_arg     (struct tcp_pcb *pcb, void *arg);
void             tcp_accept  (struct tcp_pcb *pcb, tcp_accept_fn accept);
void             tcp_recv    (struct tcp_pcb *pcb, tcp_recv_fn recv);
void             tcp_sent    (struct tcp_pcb *pcb, tcp_sent_fn sent);
void             tcp_poll    (struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval);
void             tcp_err     (struct tcp_pcb *pcb, tcp_err_fn err);

#line 331 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"

#line 340 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp.h"

void             tcp_recved  (struct tcp_pcb *pcb, u16_t len);
err_t            tcp_bind    (struct tcp_pcb *pcb, ip_addr_t *ipaddr,
                              u16_t port);
err_t            tcp_connect (struct tcp_pcb *pcb, ip_addr_t *ipaddr,
                              u16_t port, tcp_connected_fn connected);

struct tcp_pcb * tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog);


void             tcp_abort (struct tcp_pcb *pcb);
err_t            tcp_close   (struct tcp_pcb *pcb);
err_t            tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx);

/* Flags for "apiflags" parameter in tcp_write */



err_t            tcp_write   (struct tcp_pcb *pcb, const void *dataptr, u16_t len,
                              u8_t apiflags);

void             tcp_setprio (struct tcp_pcb *pcb, u8_t prio);





err_t            tcp_output  (struct tcp_pcb *pcb);


const char* tcp_debug_state_str(enum tcp_state s);








#line 40 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"










/* Functions for interfacing with TCP: */

/* Lower layer interface to TCP: */
void             tcp_init    (void);  /* Initialize this module. */
void             tcp_tmr     (void);  /* Must be called every
                                         TCP_TMR_INTERVAL
                                         ms. (Typically 250 ms). */
/* It is also possible to call these two functions at the right
   intervals (instead of calling tcp_tmr()). */
void             tcp_slowtmr (void);
void             tcp_fasttmr (void);


/* Only used by IP to pass a TCP segment to TCP: */
void             tcp_input   (struct pbuf *p, struct netif *inp);
/* Used within the TCP code only: */
struct tcp_pcb * tcp_alloc   (u8_t prio);
void             tcp_abandon (struct tcp_pcb *pcb, int reset);
err_t            tcp_send_empty_ack(struct tcp_pcb *pcb);
void             tcp_rexmit  (struct tcp_pcb *pcb);
void             tcp_rexmit_rto  (struct tcp_pcb *pcb);
void             tcp_rexmit_fast (struct tcp_pcb *pcb);
u32_t            tcp_update_rcv_ann_wnd(struct tcp_pcb *pcb);
err_t            tcp_process_refused_data(struct tcp_pcb *pcb);

/**
 * This is the Nagle algorithm: try to combine user data to send as few TCP
 * segments as possible. Only send if
 * - no previously transmitted data on the connection remains unacknowledged or
 * - the TF_NODELAY flag is set (nagle algorithm turned off for this pcb) or
 * - the only unsent segment is at least pcb->mss bytes long (or there is more
 *   than one unsent segment - with lwIP, this can happen although unsent->len < mss)
 * - or if we are in fast-retransmit (TF_INFR)
 */
#line 91 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"






/* is b<=a<=c? */
#line 110 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"



/* Length of the TCP header, excluding options. */























/* Keepalive values, compliant with RFC 1122. Don't change this unless you know what you're doing */














/* Fields are (of course) in network byte order.
 * Some fields are converted to host byte order in tcp_input().
 */
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/bpstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack(1)
#line 157 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"


struct tcp_hdr {
  u16_t src;
  u16_t dest;
  u32_t seqno;
  u32_t ackno;
  u16_t _hdrlen_rsvd_flags;
  u16_t wnd;
  u16_t chksum;
  u16_t urgp;
} ;

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/epstruct.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#pragma pack()
#line 172 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"














/** Flags used on input processing, not on pcb->flags
*/





#line 211 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 218 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 225 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 234 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 243 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 250 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 257 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"









/** Enabled extra-check for TCP_OVERSIZE if LWIP_DEBUG is enabled */






/** Don't generate checksum on copy if CHECKSUM_GEN_TCP is disabled */


/* This structure represents a TCP segment on the unsent, unacked and ooseq queues */
struct tcp_seg {
  struct tcp_seg *next;    /* used when putting segements on a queue */
  struct pbuf *p;          /* buffer containing data + TCP header */
  u16_t len;               /* the TCP length of this segment */

  u16_t oversize_left;     /* Extra bytes available at the end of the last
                              pbuf in unsent (used for asserting vs.
                              tcp_pcb.unsent_oversized only) */





  u8_t  flags;




  struct tcp_hdr *tcphdr;  /* the TCP header */
};





/** This returns a TCP header option for MSS in an u32_t */


/* Global variables: */
extern struct tcp_pcb *tcp_input_pcb;
extern u32_t tcp_ticks;
extern u8_t tcp_active_pcbs_changed;

/* The TCP PCB lists. */
union tcp_listen_pcbs_t { /* List of all TCP PCBs in LISTEN state. */
  struct tcp_pcb_listen *listen_pcbs; 
  struct tcp_pcb *pcbs;
};
extern struct tcp_pcb *tcp_bound_pcbs;
extern union tcp_listen_pcbs_t tcp_listen_pcbs;
extern struct tcp_pcb *tcp_active_pcbs;  /* List of all TCP PCBs that are in a
              state in which they accept or send
              data. */
extern struct tcp_pcb *tcp_tw_pcbs;      /* List of all TCP PCBs in TIME-WAIT. */

extern struct tcp_pcb *tcp_tmp_pcb;      /* Only used for temporary storage. */

/* Axioms about the above lists:   
   1) Every TCP PCB that is not CLOSED is in one of the lists.
   2) A PCB is only in one of the lists.
   3) All PCBs in the tcp_listen_pcbs list is in LISTEN state.
   4) All PCBs in the tcp_tw_pcbs list is in TIME-WAIT state.
*/
/* Define two macros, TCP_REG and TCP_RMV that registers a TCP PCB
   with a PCB list or removes a PCB from a list, respectively. */
#line 367 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 374 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

#line 392 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"






















/* Internal functions: */
struct tcp_pcb *tcp_pcb_copy(struct tcp_pcb *pcb);
void tcp_pcb_purge(struct tcp_pcb *pcb);
void tcp_pcb_remove(struct tcp_pcb **pcblist, struct tcp_pcb *pcb);

void tcp_segs_free(struct tcp_seg *seg);
void tcp_seg_free(struct tcp_seg *seg);
struct tcp_seg *tcp_seg_copy(struct tcp_seg *seg);

#line 433 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"






err_t tcp_send_fin(struct tcp_pcb *pcb);
err_t tcp_enqueue_flags(struct tcp_pcb *pcb, u8_t flags);

void tcp_rexmit_seg(struct tcp_pcb *pcb, struct tcp_seg *seg);

void tcp_rst(u32_t seqno, u32_t ackno,
       ip_addr_t *local_ip, ip_addr_t *remote_ip,
       u16_t local_port, u16_t remote_port);

u32_t tcp_next_iss(void);

void tcp_keepalive(struct tcp_pcb *pcb);
void tcp_zero_window_probe(struct tcp_pcb *pcb);


u16_t tcp_eff_send_mss(u16_t sendmss, ip_addr_t *addr);



err_t tcp_recv_null(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err);



void tcp_debug_print(struct tcp_hdr *tcphdr);
void tcp_debug_print_flags(u8_t flags);
void tcp_debug_print_state(enum tcp_state s);
void tcp_debug_print_pcbs(void);
s16_t tcp_pcbs_sane(void);
#line 474 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/tcp_impl.h"

/** External function (implemented in timers.c), called when TCP detects
 * that a timer is needed (i.e. active- or time-wait-pcb found). */
void tcp_timer_needed(void);








#line 49 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */










/* Create the list of all memory pools managed by memp. MEMP_MAX represents a NULL pool at the end */
typedef enum {
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp_std.h"
/*
 * SETUP: Make sure we define everything we will need.
 *
 * We have create three types of pools:
 *   1) MEMPOOL - standard pools
 *   2) MALLOC_MEMPOOL - to be used by mem_malloc in mem.c
 *   3) PBUF_MEMPOOL - a mempool of pbuf's, so include space for the pbuf struct
 *
 * If the include'r doesn't require any special treatment of each of the types
 * above, then will declare #2 & #3 to be just standard mempools.
 */

/* This treats "malloc pools" just like any other pool.
   The pools are a little bigger to provide 'size' as the amount of user data. */






/* This treats "pbuf pools" just like any other pool.
 * Allocates buffers for a pbuf struct AND a payload size */




/*
 * A list of internal pools used by LWIP.
 *
 * LWIP_MEMPOOL(pool_name, number_elements, element_size, pool_description)
 *     creates a pool name MEMP_pool_name. description is used in stats.c
 */

MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,



MEMP_REASSDATA,


MEMP_FRAG_PBUF,



MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,

MEMP_TCPIP_MSG_INPKT,












MEMP_SYS_TIMEOUT,


#line 85 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp_std.h"
MEMP_NETDB,
#line 93 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp_std.h"

/*
 * A list of pools of pbuf's used by LWIP.
 *
 * LWIP_PBUF_MEMPOOL(pool_name, number_elements, pbuf_payload_size, pool_description)
 *     creates a pool name MEMP_pool_name. description is used in stats.c
 *     This allocates enough space for the pbuf struct and a payload.
 *     (Example: pbuf_payload_size=0 allocates only size for the struct)
 */
MEMP_PBUF,
MEMP_PBUF_POOL,


/*
 * Allow for user-defined pools; this must be explicitly set in lwipopts.h
 * since the default is to NOT look for lwippools.h
 */




/*
 * REQUIRED CLEANUP: Clear up so we don't get "multiply defined" error later
 * (#undef is ignored for something that is not defined)
 */
#line 46 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp.h"
  MEMP_MAX
} memp_t;

#line 77 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp.h"





#line 91 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp.h"

#line 99 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/memp.h"

void  memp_init(void);





void *memp_malloc(memp_t type);

void  memp_free(memp_t type, void *mem);







#line 54 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/inet_chksum.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */








/** Swap the bytes in an u16_t: much like htons() for little-endian */





/* can't use htons on big endian (or PLATFORM_BYTESWAP not defined)... */




/** Split an u32_t in two u16_ts and add them up */




#line 68 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\ipv4\\lwip/inet_chksum.h"





u16_t inet_chksum(void *dataptr, u16_t len);
u16_t inet_chksum_pbuf(struct pbuf *p);
u16_t inet_chksum_pseudo(struct pbuf *p,
       ip_addr_t *src, ip_addr_t *dest,
       u8_t proto, u16_t proto_len);
u16_t inet_chksum_pseudo_partial(struct pbuf *p,
       ip_addr_t *src, ip_addr_t *dest,
       u8_t proto, u16_t proto_len, u16_t chksum_len);










#line 55 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"
/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */












#line 166 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 174 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 182 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 190 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 198 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 206 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 214 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 222 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 230 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 244 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 258 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

#line 270 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"

/* Display of statistics */
#line 287 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/stats.h"





#line 56 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"
/*
 * Copyright (c) 2001, 2002 Leon Woestenberg <leon.woestenberg@axon.tv>
 * Copyright (c) 2001, 2002 Axon Digital Design B.V., The Netherlands.
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Leon Woestenberg <leon.woestenberg@axon.tv>
 *
 */











struct udp_pcb;
struct netif;

/**
 * @see RFC1213, "MIB-II, 6. Definitions"
 */
enum snmp_ifType {
  snmp_ifType_other=1,                /* none of the following */
  snmp_ifType_regular1822,
  snmp_ifType_hdh1822,
  snmp_ifType_ddn_x25,
  snmp_ifType_rfc877_x25,
  snmp_ifType_ethernet_csmacd,
  snmp_ifType_iso88023_csmacd,
  snmp_ifType_iso88024_tokenBus,
  snmp_ifType_iso88025_tokenRing,
  snmp_ifType_iso88026_man,
  snmp_ifType_starLan,
  snmp_ifType_proteon_10Mbit,
  snmp_ifType_proteon_80Mbit,
  snmp_ifType_hyperchannel,
  snmp_ifType_fddi,
  snmp_ifType_lapb,
  snmp_ifType_sdlc,
  snmp_ifType_ds1,                    /* T-1 */
  snmp_ifType_e1,                     /* european equiv. of T-1 */
  snmp_ifType_basicISDN,
  snmp_ifType_primaryISDN,            /* proprietary serial */
  snmp_ifType_propPointToPointSerial,
  snmp_ifType_ppp,
  snmp_ifType_softwareLoopback,
  snmp_ifType_eon,                    /* CLNP over IP [11] */
  snmp_ifType_ethernet_3Mbit,
  snmp_ifType_nsip,                   /* XNS over IP */
  snmp_ifType_slip,                   /* generic SLIP */
  snmp_ifType_ultra,                  /* ULTRA technologies */
  snmp_ifType_ds3,                    /* T-3 */
  snmp_ifType_sip,                    /* SMDS */
  snmp_ifType_frame_relay
};

#line 232 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"

/* system */
#line 243 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"

/* network interface */
#line 255 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"

/* ARP */



/* IP */
#line 282 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"

/* ICMP */
#line 310 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"
/* TCP */
#line 320 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"

/* UDP */
#line 328 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"

/* SNMP */
#line 360 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\include\\lwip/snmp.h"







#line 57 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\arch/perf.h"
/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved. 
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission. 
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED 
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY 
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 * 
 * Author: Adam Dunkels <adam@sics.se>
 *
 */






#line 58 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"

/* These variables are global to all functions involved in the input
   processing of TCP segments. They are set by the tcp_input()
   function. */
static struct tcp_seg inseg;
static struct tcp_hdr *tcphdr;
static struct ip_hdr *iphdr;
static u32_t seqno, ackno;
static u8_t flags;
static u16_t tcplen;

static u8_t recv_flags;
static struct pbuf *recv_data;

struct tcp_pcb *tcp_input_pcb;

/* Forward declarations. */
static err_t tcp_process(struct tcp_pcb *pcb);
static void tcp_receive(struct tcp_pcb *pcb);
static void tcp_parseopt(struct tcp_pcb *pcb);

static err_t tcp_listen_input(struct tcp_pcb_listen *pcb);
static err_t tcp_timewait_input(struct tcp_pcb *pcb);

/**
 * The initial input processing of TCP. It verifies the TCP header, demultiplexes
 * the segment between the PCBs and passes it on to tcp_process(), which implements
 * the TCP finite state machine. This function is called by the IP layer (in
 * ip_input()).
 *
 * @param p received TCP segment to process (p->payload pointing to the IP header)
 * @param inp network interface on which this segment was received
 */
void
tcp_input(struct pbuf *p, struct netif *inp)
{
  struct tcp_pcb *pcb, *prev;
  struct tcp_pcb_listen *lpcb;




  u8_t hdrlen;
  err_t err;

  ;

  ;
  ;

  iphdr = (struct ip_hdr *)p->payload;
  tcphdr = (struct tcp_hdr *)((u8_t *)p->payload + ((iphdr)->_v_hl & 0x0f) * 4);





  /* remove header from payload */
  if (pbuf_header(p, -((s16_t)(((iphdr)->_v_hl & 0x0f) * 4))) || (p->tot_len < sizeof(struct tcp_hdr))) {
    /* drop short packets */
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_input: short packet (%" "4d" " bytes) discarded\n", p->tot_len);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    goto dropped;
  }

  /* Don't even process incoming broadcasts/multicasts. */
  if (ip4_addr_isbroadcast((&current_iphdr_dest)->addr, (inp)) ||
      (((&current_iphdr_dest)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
    ;
    goto dropped;
  }


  /* Verify TCP checksum. */
  if (inet_chksum_pseudo(p, (&current_iphdr_src), (&current_iphdr_dest),
      6, p->tot_len) != 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_input: packet discarded due to failing checksum 0x%04" "4x" "\n", inet_chksum_pseudo(p, (&current_iphdr_src), (&current_iphdr_dest), 6, p->tot_len));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);



    tcp_debug_print(tcphdr);

    ;
    goto dropped;
  }


  /* Move the payload pointer in the pbuf so that it points to the
     TCP data instead of the TCP header. */
  hdrlen = (lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12);
  if(pbuf_header(p, -(hdrlen * 4))){
    /* drop short packets */
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_input: short packet\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    goto dropped;
  }

  /* Convert fields in TCP header to host byte order. */
  tcphdr->src = lwip_ntohs(tcphdr->src);
  tcphdr->dest = lwip_ntohs(tcphdr->dest);
  seqno = tcphdr->seqno = lwip_ntohl(tcphdr->seqno);
  ackno = tcphdr->ackno = lwip_ntohl(tcphdr->ackno);
  tcphdr->wnd = lwip_ntohs(tcphdr->wnd);

  flags = (lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU);
  tcplen = p->tot_len + ((flags & (0x01U | 0x02U)) ? 1 : 0);

  /* Demultiplex an incoming segment. First, we check if it is destined
     for an active connection. */
  prev = 0;

  
  for(pcb = tcp_active_pcbs; pcb != 0; pcb = pcb->next) {
    do { if(!(pcb->state != CLOSED)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: active pcb->state != CLOSED", 171, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
    do { if(!(pcb->state != TIME_WAIT)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: active pcb->state != TIME-WAIT", 172, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
    do { if(!(pcb->state != LISTEN)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: active pcb->state != LISTEN", 173, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
    if (pcb->remote_port == tcphdr->src &&
       pcb->local_port == tcphdr->dest &&
       ((&(pcb->remote_ip))->addr == (&current_iphdr_src)->addr) &&
       ((&(pcb->local_ip))->addr == (&current_iphdr_dest)->addr)) {

      /* Move this PCB to the front of the list so that subsequent
         lookups will be faster (we exploit locality in TCP segment
         arrivals). */
      do { if(!(pcb->next != pcb)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: pcb->next != pcb (before cache)", 182, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      if (prev != 0) {
        prev->next = pcb->next;
        pcb->next = tcp_active_pcbs;
        tcp_active_pcbs = pcb;
      }
      do { if(!(pcb->next != pcb)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: pcb->next != pcb (after cache)", 188, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      break;
    }
    prev = pcb;
  }

  if (pcb == 0) {
    /* If it did not go to an active connection, we check the connections
       in the TIME-WAIT state. */
    for(pcb = tcp_tw_pcbs; pcb != 0; pcb = pcb->next) {
      do { if(!(pcb->state == TIME_WAIT)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: TIME-WAIT pcb->state == TIME-WAIT", 198, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      if (pcb->remote_port == tcphdr->src &&
         pcb->local_port == tcphdr->dest &&
         ((&(pcb->remote_ip))->addr == (&current_iphdr_src)->addr) &&
         ((&(pcb->local_ip))->addr == (&current_iphdr_dest)->addr)) {
        /* We don't really care enough to move this PCB to the front
           of the list since we are not very likely to receive that
           many segments for connections in TIME-WAIT. */
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_input: packed for TIME_WAITing connection.\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        tcp_timewait_input(pcb);
        pbuf_free(p);
        return;
      }
    }

    /* Finally, if we still did not get a match, we check all PCBs that
       are LISTENing for incoming connections. */
    prev = 0;
    for(lpcb = tcp_listen_pcbs.listen_pcbs; lpcb != 0; lpcb = lpcb->next) {
      if (lpcb->local_port == tcphdr->dest) {
#line 228 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
        if (((&(lpcb->local_ip))->addr == (&current_iphdr_dest)->addr) ||
            ((&(lpcb->local_ip)) == 0 || (&(lpcb->local_ip))->addr == ((u32_t)0x00000000UL))) {
          /* found a match */
          break;
        }

      }
      prev = (struct tcp_pcb *)lpcb;
    }
#line 245 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
    if (lpcb != 0) {
      /* Move this PCB to the front of the list so that subsequent
         lookups will be faster (we exploit locality in TCP segment
         arrivals). */
      if (prev != 0) {
        ((struct tcp_pcb_listen *)prev)->next = lpcb->next;
              /* our successor is the remainder of the listening list */
        lpcb->next = tcp_listen_pcbs.listen_pcbs;
              /* put this listening pcb at the head of the listening list */
        tcp_listen_pcbs.listen_pcbs = lpcb;
      }
    
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_input: packed for LISTENing connection.\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_listen_input(lpcb);
      pbuf_free(p);
      return;
    }
  }








  if (pcb != 0) {
    /* The incoming segment belongs to a connection. */






    /* Set up a tcp_seg structure. */
    inseg.next = 0;
    inseg.len = p->tot_len;
    inseg.p = p;
    inseg.tcphdr = tcphdr;

    recv_data = 0;
    recv_flags = 0;

    if (flags & 0x08U) {
      p->flags |= 0x01U;
    }

    /* If there is data which was previously "refused" by upper layer */
    if (pcb->refused_data != 0) {
      if ((tcp_process_refused_data(pcb) == -10) ||
        ((pcb->refused_data != 0) && (tcplen > 0))) {
        /* pcb has been aborted or refused data is still refused and the new
           segment contains data */
        ;
        ;
        goto aborted;
      }
    }
    tcp_input_pcb = pcb;
    err = tcp_process(pcb);
    /* A return value of ERR_ABRT means that tcp_abort() was called
       and that the pcb has been freed. If so, we don't do anything. */
    if (err != -10) {
      if (recv_flags & (u8_t)0x08U) {
        /* TF_RESET means that the connection was reset by the other
           end. We then call the error callback to inform the
           application that the connection is dead before we
           deallocate the PCB. */
        do { if((pcb->errf) != 0) (pcb->errf)((pcb->callback_arg),(-11)); } while (0);
        tcp_pcb_remove(&tcp_active_pcbs, pcb);
        memp_free(MEMP_TCP_PCB, pcb);
      } else if (recv_flags & (u8_t)0x10U) {
        /* The connection has been closed and we will deallocate the
           PCB. */
        if (!(pcb->flags & ((u8_t)0x10U))) {
          /* Connection closed although the application has only shut down the
             tx side: call the PCB's err callback and indicate the closure to
             ensure the application doesn't continue using the PCB. */
          do { if((pcb->errf) != 0) (pcb->errf)((pcb->callback_arg),(-12)); } while (0);
        }
        tcp_pcb_remove(&tcp_active_pcbs, pcb);
        memp_free(MEMP_TCP_PCB, pcb);
      } else {
        err = 0;
        /* If the application has registered a "sent" function to be
           called when new send buffer space is available, we call it
           now. */
        if (pcb->acked > 0) {
          do { if((pcb)->sent != 0) (err) = (pcb)->sent((pcb)->callback_arg,(pcb),(pcb->acked)); else (err) = 0; } while (0);
          if (err == -10) {
            goto aborted;
          }
        }

        if (recv_data != 0) {
          do { if(!(pcb->refused_data == 0)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pcb->refused_data == NULL", 340, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
          if (pcb->flags & ((u8_t)0x10U)) {
            /* received data although already closed -> abort (send RST) to
               notify the remote host that not all data has been processed */
            pbuf_free(recv_data);
            tcp_abort(pcb);
            goto aborted;
          }

          /* Notify application that data has been received. */
          do { if((pcb)->recv != 0) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),(recv_data),(0)); } else { (err) = tcp_recv_null(0, (pcb), (recv_data), (0)); } } while (0);
          if (err == -10) {
            goto aborted;
          }

          /* If the upper layer can't receive this data, store it */
          if (err != 0) {
            pcb->refused_data = recv_data;
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_input: keep incoming packet, because pcb is \"full\"\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          }
        }

        /* If a FIN segment was received, we call the callback
           function with a NULL buffer to indicate EOF. */
        if (recv_flags & (u8_t)0x20U) {
          if (pcb->refused_data != 0) {
            /* Delay this if we have refused data. */
            pcb->refused_data->flags |= 0x20U;
          } else {
            /* correct rcv_wnd as the application won't call tcp_recved()
               for the FIN's seqno */
            if (pcb->rcv_wnd != (2*(1500 - 40))) {
              pcb->rcv_wnd++;
            }
            do { if(((pcb)->recv != 0)) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),0,0); } else { (err) = 0; } } while (0);
            if (err == -10) {
              goto aborted;
            }
          }
        }

        tcp_input_pcb = 0;
        /* Try to send something out. */
        tcp_output(pcb);





      }
    }
    /* Jump target if pcb has been aborted in a callback (by calling tcp_abort()).
       Below this line, 'pcb' may not be dereferenced! */
aborted:
    tcp_input_pcb = 0;
    recv_data = 0;

    /* give up our reference to inseg.p */
    if (inseg.p != 0)
    {
      pbuf_free(inseg.p);
      inseg.p = 0;
    }
  } else {

    /* If no matching PCB was found, send a TCP RST (reset) to the
       sender. */
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_input: no PCB match found, resetting.\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if (!((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x04U)) {
      ;
      ;
      tcp_rst(ackno, seqno + tcplen,
        (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
    }
    pbuf_free(p);
  }

  do { if(!(tcp_pcbs_sane())) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: tcp_pcbs_sane()", 418, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
  ;
  return;
dropped:
  ;
  ;
  pbuf_free(p);
}

/**
 * Called by tcp_input() when a segment arrives for a listening
 * connection (from tcp_input()).
 *
 * @param pcb the tcp_pcb_listen for which a segment arrived
 * @return ERR_OK if the segment was processed
 *         another err_t on error
 *
 * @note the return value is not (yet?) used in tcp_input()
 * @note the segment which arrived is saved in global variables, therefore only the pcb
 *       involved is passed as a parameter to this function
 */
static err_t
tcp_listen_input(struct tcp_pcb_listen *pcb)
{
  struct tcp_pcb *npcb;
  err_t rc;

  if (flags & 0x04U) {
    /* An incoming RST should be ignored. Return. */
    return 0;
  }

  /* In the LISTEN state, we check for incoming SYN segments,
     creates a new PCB, and responds with a SYN|ACK. */
  if (flags & 0x10U) {
    /* For incoming segments with the ACK flag set, respond with a
       RST. */
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_listen_input: ACK in LISTEN, sending reset\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest),
      (&current_iphdr_src), tcphdr->dest, tcphdr->src);
  } else if (flags & 0x02U) {
    do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("TCP connection request %" "4d" " -> %" "4d" ".\n", tcphdr->src, tcphdr->dest);} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);
#line 466 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
    npcb = tcp_alloc(pcb->prio);
    /* If a new PCB could not be created (probably due to lack of memory),
       we don't do anything, but rely on the sender will retransmit the
       SYN at a time when we have more memory available. */
    if (npcb == 0) {
      do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("tcp_listen_input: could not allocate PCB\n");} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);
      ;
      return -1;
    }



    /* Set up the new PCB. */
    ((npcb->local_ip). addr = (current_iphdr_dest). addr);
    npcb->local_port = pcb->local_port;
    ((npcb->remote_ip). addr = (current_iphdr_src). addr);
    npcb->remote_port = tcphdr->src;
    npcb->state = SYN_RCVD;
    npcb->rcv_nxt = seqno + 1;
    npcb->rcv_ann_right_edge = npcb->rcv_nxt;
    npcb->snd_wnd = tcphdr->wnd;
    npcb->snd_wnd_max = tcphdr->wnd;
    npcb->ssthresh = npcb->snd_wnd;
    npcb->snd_wl1 = seqno - 1;/* initialise to seqno-1 to force window update */
    npcb->callback_arg = pcb->callback_arg;

    npcb->accept = pcb->accept;

    /* inherit socket options */
    npcb->so_options = pcb->so_options & (0x04U|0x08U|0x80U );
    /* Register the new PCB so that we can begin receiving segments
       for it. */
    do { do { (npcb)->next = * &tcp_active_pcbs; *(&tcp_active_pcbs) = (npcb); tcp_timer_needed(); } while (0); tcp_active_pcbs_changed = 1; } while (0);

    /* Parse any options in the SYN. */
    tcp_parseopt(npcb);

    npcb->mss = tcp_eff_send_mss(npcb->mss, &(npcb->remote_ip));


    ;

    /* Send a SYN|ACK together with the MSS option. */
    rc = tcp_enqueue_flags(npcb, 0x02U | 0x10U);
    if (rc != 0) {
      tcp_abandon(npcb, 0);
      return rc;
    }
    return tcp_output(npcb);
  }
  return 0;
}

/**
 * Called by tcp_input() when a segment arrives for a connection in
 * TIME_WAIT.
 *
 * @param pcb the tcp_pcb for which a segment arrived
 *
 * @note the segment which arrived is saved in global variables, therefore only the pcb
 *       involved is passed as a parameter to this function
 */
static err_t
tcp_timewait_input(struct tcp_pcb *pcb)
{
  /* RFC 1337: in TIME_WAIT, ignore RST and ACK FINs + any 'acceptable' segments */
  /* RFC 793 3.9 Event Processing - Segment Arrives:
   * - first check sequence number - we skip that one in TIME_WAIT (always
   *   acceptable since we only send ACKs)
   * - second check the RST bit (... return) */
  if (flags & 0x04U)  {
    return 0;
  }
  /* - fourth, check the SYN bit, */
  if (flags & 0x02U) {
    /* If an incoming segment is not acceptable, an acknowledgment
       should be sent in reply */
    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt+pcb->rcv_wnd)) <= 0))) {
      /* If the SYN is in the window it is an error, send a reset */
      tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
      return 0;
    }
  } else if (flags & 0x01U) {
    /* - eighth, check the FIN bit: Remain in the TIME-WAIT state.
         Restart the 2 MSL time-wait timeout.*/
    pcb->tmr = tcp_ticks;
  }

  if ((tcplen > 0))  {
    /* Acknowledge data, FIN or out-of-window SYN */
    pcb->flags |= ((u8_t)0x02U);
    return tcp_output(pcb);
  }
  return 0;
}

/**
 * Implements the TCP state machine. Called by tcp_input. In some
 * states tcp_receive() is called to receive data. The tcp_seg
 * argument will be freed by the caller (tcp_input()) unless the
 * recv_data pointer in the pcb is set.
 *
 * @param pcb the tcp_pcb for which a segment arrived
 *
 * @note the segment which arrived is saved in global variables, therefore only the pcb
 *       involved is passed as a parameter to this function
 */
static err_t
tcp_process(struct tcp_pcb *pcb)
{
  struct tcp_seg *rseg;
  u8_t acceptable = 0;
  err_t err;

  err = 0;

  /* Process incoming RST segments. */
  if (flags & 0x04U) {
    /* First, determine if the reset is acceptable. */
    if (pcb->state == SYN_SENT) {
      if (ackno == pcb->snd_nxt) {
        acceptable = 1;
      }
    } else {
      if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt+pcb->rcv_wnd)) <= 0))) {

        acceptable = 1;
      }
    }

    if (acceptable) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_process: Connection RESET\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { if(!(pcb->state != CLOSED)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_input: pcb->state != CLOSED", 599, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      recv_flags |= (u8_t)0x08U;
      pcb->flags &= ~((u8_t)0x01U);
      return -11;
    } else {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_process: unacceptable reset seqno %" "8ld" " rcv_nxt %" "8ld" "\n", seqno, pcb->rcv_nxt);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

      do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("tcp_process: unacceptable reset seqno %" "8ld" " rcv_nxt %" "8ld" "\n", seqno, pcb->rcv_nxt);} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);

      return 0;
    }
  }

  if ((flags & 0x02U) && (pcb->state != SYN_SENT && pcb->state != SYN_RCVD)) { 
    /* Cope with new connection attempt after remote end crashed */
    do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    return 0;
  }
  
  if ((pcb->flags & ((u8_t)0x10U)) == 0) {
    /* Update the PCB (in)activity timer unless rx is closed (see tcp_shutdown) */
    pcb->tmr = tcp_ticks;
  }
  pcb->keep_cnt_sent = 0;

  tcp_parseopt(pcb);

  /* Do different things depending on the TCP state. */
  switch (pcb->state) {
  case SYN_SENT:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("SYN-SENT: ackno %" "8ld" " pcb->snd_nxt %" "8ld" " unacked %" "8ld" "\n", ackno, pcb->snd_nxt, lwip_ntohl(pcb->unacked->tcphdr->seqno));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

    /* received SYN ACK with expected sequence number? */
    if ((flags & 0x10U) && (flags & 0x02U)
        && ackno == lwip_ntohl(pcb->unacked->tcphdr->seqno) + 1) {
      pcb->snd_buf++;
      pcb->rcv_nxt = seqno + 1;
      pcb->rcv_ann_right_edge = pcb->rcv_nxt;
      pcb->lastack = ackno;
      pcb->snd_wnd = tcphdr->wnd;
      pcb->snd_wnd_max = tcphdr->wnd;
      pcb->snd_wl1 = seqno - 1; /* initialise to seqno - 1 to force window update */
      pcb->state = ESTABLISHED;


      pcb->mss = tcp_eff_send_mss(pcb->mss, &(pcb->remote_ip));


      /* Set ssthresh again after changing pcb->mss (already set in tcp_connect
       * but for the default value of pcb->mss) */
      pcb->ssthresh = pcb->mss * 10;

      pcb->cwnd = ((pcb->cwnd == 1) ? (pcb->mss * 2) : pcb->mss);
      do { if(!((pcb->snd_queuelen > 0))) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pcb->snd_queuelen > 0", 652, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      --pcb->snd_queuelen;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_process: SYN-SENT --queuelen %" "4d" "\n", (u16_t)pcb->snd_queuelen);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      rseg = pcb->unacked;
      pcb->unacked = rseg->next;
      tcp_seg_free(rseg);

      /* If there's nothing left to acknowledge, stop the retransmit
         timer, otherwise reset it to start again */
      if(pcb->unacked == 0)
        pcb->rtime = -1;
      else {
        pcb->rtime = 0;
        pcb->nrtx = 0;
      }

      /* Call the user specified function to call when sucessfully
       * connected. */
      do { if((pcb)->connected != 0) (err) = (pcb)->connected((pcb)->callback_arg,(pcb),(0)); else (err) = 0; } while (0);
      if (err == -10) {
        return -10;
      }
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    }
    /* received ACK? possibly a half-open connection */
    else if (flags & 0x10U) {
      /* send a RST to bring the other side in a non-synchronized state. */
      tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
    }
    break;
  case SYN_RCVD:
    if (flags & 0x10U) {
      /* expected ACK number? */
      if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))) {
        u16_t old_cwnd;
        pcb->state = ESTABLISHED;
        do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("TCP connection established %" "4d" " -> %" "4d" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);

        do { if(!(pcb->accept != 0)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pcb->accept != NULL", 691, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);

        /* Call the accept function. */
        do { if((pcb)->accept != 0) (err) = (pcb)->accept((pcb)->callback_arg,(pcb),(0)); else (err) = -14; } while (0);
        if (err != 0) {
          /* If the accept function returns with an error, we abort
           * the connection. */
          /* Already aborted? */
          if (err != -10) {
            tcp_abort(pcb);
          }
          return -10;
        }
        old_cwnd = pcb->cwnd;
        /* If there was any data contained within this ACK,
         * we'd better pass it on to the application as well. */
        tcp_receive(pcb);

        /* Prevent ACK for SYN to generate a sent event */
        if (pcb->acked != 0) {
          pcb->acked--;
        }

        pcb->cwnd = ((old_cwnd == 1) ? (pcb->mss * 2) : pcb->mss);

        if (recv_flags & (u8_t)0x20U) {
          do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
          pcb->state = CLOSE_WAIT;
        }
      } else {
        /* incorrect ACK number, send RST */
        tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
                tcphdr->dest, tcphdr->src);
      }
    } else if ((flags & 0x02U) && (seqno == pcb->rcv_nxt - 1)) {
      /* Looks like another copy of the SYN - retransmit our SYN-ACK */
      tcp_rexmit(pcb);
    }
    break;
  case CLOSE_WAIT:
    /* FALLTHROUGH */
  case ESTABLISHED:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) { /* passive close */
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      pcb->state = CLOSE_WAIT;
    }
    break;
  case FIN_WAIT_1:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      if ((flags & 0x10U) && (ackno == pcb->snd_nxt)) {
        do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("TCP connection closed: FIN_WAIT_1 %" "4d" " -> %" "4d" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);

        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
        tcp_pcb_purge(pcb);
        do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (* &tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = * &tcp_active_pcbs; tcp_tmp_pcb != 0; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 0; } while(0); tcp_active_pcbs_changed = 1; } while (0);
        pcb->state = TIME_WAIT;
        do { (pcb)->next = * &tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
      } else {
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
        pcb->state = CLOSING;
      }
    } else if ((flags & 0x10U) && (ackno == pcb->snd_nxt)) {
      pcb->state = FIN_WAIT_2;
    }
    break;
  case FIN_WAIT_2:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("TCP connection closed: FIN_WAIT_2 %" "4d" " -> %" "4d" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (* &tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = * &tcp_active_pcbs; tcp_tmp_pcb != 0; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 0; } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = * &tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case CLOSING:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt) {
      do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("TCP connection closed: CLOSING %" "4d" " -> %" "4d" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (* &tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = * &tcp_active_pcbs; tcp_tmp_pcb != 0; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 0; } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = * &tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case LAST_ACK:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt) {
      do { if ( ((0x80U) & 0x80U) && ((0x80U) & 0x80U) && ((s16_t)((0x80U) & 0x03) >= 0x00)) { do {printf ("TCP connection closed: LAST_ACK %" "4d" " -> %" "4d" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);} while(0); if ((0x80U) & 0x08U) { while(1); } } } while(0);
      /* bugfix #21699: don't set pcb->state to CLOSED here or we risk leaking segments */
      recv_flags |= (u8_t)0x10U;
    }
    break;
  default:
    break;
  }
  return 0;
}

#line 833 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"

/**
 * Called by tcp_process. Checks if the given segment is an ACK for outstanding
 * data, and if so frees the memory of the buffered data. Next, is places the
 * segment on any of the receive queues (pcb->recved or pcb->ooseq). If the segment
 * is buffered, the pbuf is referenced by pbuf_ref so that it will not be freed until
 * it has been removed from the buffer.
 *
 * If the incoming segment constitutes an ACK for a segment that was used for RTT
 * estimation, the RTT is estimated here as well.
 *
 * Called from tcp_process().
 */
static void
tcp_receive(struct tcp_pcb *pcb)
{
  struct tcp_seg *next;



  struct pbuf *p;
  s32_t off;
  s16_t m;
  u32_t right_wnd_edge;
  u16_t new_tot_len;
  int found_dupack = 0;





  do { if(!(pcb->state >= ESTABLISHED)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_receive: wrong state", 864, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);

  if (flags & 0x10U) {
    right_wnd_edge = pcb->snd_wnd + pcb->snd_wl2;

    /* Update window. */
    if (((s32_t)((u32_t)(pcb->snd_wl1) - (u32_t)(seqno)) < 0) ||
       (pcb->snd_wl1 == seqno && ((s32_t)((u32_t)(pcb->snd_wl2) - (u32_t)(ackno)) < 0)) ||
       (pcb->snd_wl2 == ackno && tcphdr->wnd > pcb->snd_wnd)) {
      pcb->snd_wnd = tcphdr->wnd;
      /* keep track of the biggest window announced by the remote host to calculate
         the maximum segment size */
      if (pcb->snd_wnd_max < tcphdr->wnd) {
        pcb->snd_wnd_max = tcphdr->wnd;
      }
      pcb->snd_wl1 = seqno;
      pcb->snd_wl2 = ackno;
      if (pcb->snd_wnd == 0) {
        if (pcb->persist_backoff == 0) {
          /* start persist timer */
          pcb->persist_cnt = 0;
          pcb->persist_backoff = 1;
        }
      } else if (pcb->persist_backoff > 0) {
        /* stop persist timer */
          pcb->persist_backoff = 0;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: window update %" "4d" "\n", pcb->snd_wnd);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
#line 901 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
    }

    /* (From Stevens TCP/IP Illustrated Vol II, p970.) Its only a
     * duplicate ack if:
     * 1) It doesn't ACK new data 
     * 2) length of received packet is zero (i.e. no payload) 
     * 3) the advertised window hasn't changed 
     * 4) There is outstanding unacknowledged data (retransmission timer running)
     * 5) The ACK is == biggest ACK sequence number so far seen (snd_una)
     * 
     * If it passes all five, should process as a dupack: 
     * a) dupacks < 3: do nothing 
     * b) dupacks == 3: fast retransmit 
     * c) dupacks > 3: increase cwnd 
     * 
     * If it only passes 1-3, should reset dupack counter (and add to
     * stats, which we don't do in lwIP)
     *
     * If it only passes 1, should reset dupack counter
     *
     */

    /* Clause 1 */
    if (((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack)) <= 0)) {
      pcb->acked = 0;
      /* Clause 2 */
      if (tcplen == 0) {
        /* Clause 3 */
        if (pcb->snd_wl2 + pcb->snd_wnd == right_wnd_edge){
          /* Clause 4 */
          if (pcb->rtime >= 0) {
            /* Clause 5 */
            if (pcb->lastack == ackno) {
              found_dupack = 1;
              if ((u8_t)(pcb->dupacks + 1) > pcb->dupacks) {
                ++pcb->dupacks;
              }
              if (pcb->dupacks > 3) {
                /* Inflate the congestion window, but not if it means that
                   the value overflows. */
                if ((u16_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
                  pcb->cwnd += pcb->mss;
                }
              } else if (pcb->dupacks == 3) {
                /* Do fast retransmit */
                tcp_rexmit_fast(pcb);
              }
            }
          }
        }
      }
      /* If Clause (1) or more is true, but not a duplicate ack, reset
       * count of consecutive duplicate acks */
      if (!found_dupack) {
        pcb->dupacks = 0;
      }
    } else if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))){
      /* We come here when the ACK acknowledges new data. */

      /* Reset the "IN Fast Retransmit" flag, since we are no longer
         in fast retransmit. Also reset the congestion window to the
         slow start threshold. */
      if (pcb->flags & ((u8_t)0x04U)) {
        pcb->flags &= ~((u8_t)0x04U);
        pcb->cwnd = pcb->ssthresh;
      }

      /* Reset the number of retransmissions. */
      pcb->nrtx = 0;

      /* Reset the retransmission time-out. */
      pcb->rto = (pcb->sa >> 3) + pcb->sv;

      /* Update the send buffer space. Diff between the two can never exceed 64K? */
      pcb->acked = (u16_t)(ackno - pcb->lastack);

      pcb->snd_buf += pcb->acked;

      /* Reset the fast retransmit variables. */
      pcb->dupacks = 0;
      pcb->lastack = ackno;

      /* Update the congestion control variables (cwnd and
         ssthresh). */
      if (pcb->state >= ESTABLISHED) {
        if (pcb->cwnd < pcb->ssthresh) {
          if ((u16_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
            pcb->cwnd += pcb->mss;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: slow start cwnd %" "4d" "\n", pcb->cwnd);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        } else {
          u16_t new_cwnd = (pcb->cwnd + pcb->mss * pcb->mss / pcb->cwnd);
          if (new_cwnd > pcb->cwnd) {
            pcb->cwnd = new_cwnd;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: congestion avoidance cwnd %" "4d" "\n", pcb->cwnd);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        }
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: ACK for %" "8ld" ", unacked->seqno %" "8ld" ":%" "8ld" "\n", ackno, pcb->unacked != 0? lwip_ntohl(pcb->unacked->tcphdr->seqno): 0, pcb->unacked != 0? lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)): 0);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);






      /* Remove segment from the unacknowledged list if the incoming
         ACK acknowlegdes them. */
      while (pcb->unacked != 0 &&
             ((s32_t)((u32_t)(lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0))) - (u32_t)(ackno)) <= 0)) {

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: removing %" "8ld" ":%" "8ld" " from pcb->unacked\n", lwip_ntohl(pcb->unacked->tcphdr->seqno), lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);




        next = pcb->unacked;
        pcb->unacked = pcb->unacked->next;

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: queuelen %" "4d" " ... ", (u16_t)pcb->snd_queuelen);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { if(!((pcb->snd_queuelen >= pbuf_clen(next->p)))) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pcb->snd_queuelen >= pbuf_clen(next->p)", 1020, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
        /* Prevent ACK for FIN to generate a sent event */
        if ((pcb->acked != 0) && (((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0)) {
          pcb->acked--;
        }

        pcb->snd_queuelen -= pbuf_clen(next->p);
        tcp_seg_free(next);

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "4d" " (after freeing unacked)\n", (u16_t)pcb->snd_queuelen);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (pcb->snd_queuelen != 0) {
          do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_receive: valid queue length", 1032, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);

        }
      }

      /* If there's nothing left to acknowledge, stop the retransmit
         timer, otherwise reset it to start again */
      if(pcb->unacked == 0)
        pcb->rtime = -1;
      else
        pcb->rtime = 0;

      pcb->polltmr = 0;
    } else {
      /* Fix bug bug #21582: out of sequence ACK, didn't really ack anything */
      pcb->acked = 0;
    }

    /* We go through the ->unsent list to see if any of the segments
       on the list are acknowledged by the ACK. This may seem
       strange since an "unsent" segment shouldn't be acked. The
       rationale is that lwIP puts all outstanding segments on the
       ->unsent list after a retransmission, so these segments may
       in fact have been sent once. */
    while (pcb->unsent != 0 &&
           (((s32_t)((u32_t)(ackno) - (u32_t)(lwip_ntohl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((lwip_ntohs(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)))) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))) {

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: removing %" "8ld" ":%" "8ld" " from pcb->unsent\n", lwip_ntohl(pcb->unsent->tcphdr->seqno), lwip_ntohl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((lwip_ntohs(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);



      next = pcb->unsent;
      pcb->unsent = pcb->unsent->next;

      if (pcb->unsent == 0) {
        pcb->unsent_oversize = 0;
      }

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: queuelen %" "4d" " ... ", (u16_t)pcb->snd_queuelen);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { if(!((pcb->snd_queuelen >= pbuf_clen(next->p)))) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pcb->snd_queuelen >= pbuf_clen(next->p)", 1070, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      /* Prevent ACK for FIN to generate a sent event */
      if ((pcb->acked != 0) && (((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0)) {
        pcb->acked--;
      }
      pcb->snd_queuelen -= pbuf_clen(next->p);
      tcp_seg_free(next);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("%" "4d" " (after freeing unsent)\n", (u16_t)pcb->snd_queuelen);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      if (pcb->snd_queuelen != 0) {
        do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_receive: valid queue length", 1080, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);

      }
    }
    /* End of ACK for new data processing. */

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: pcb->rttest %" "8ld" " rtseq %" "8ld" " ackno %" "8ld" "\n", pcb->rttest, pcb->rtseq, ackno);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);


    /* RTT estimation calculations. This is done by checking if the
       incoming segment acknowledges the segment we use to take a
       round-trip time measurement. */
    if (pcb->rttest && ((s32_t)((u32_t)(pcb->rtseq) - (u32_t)(ackno)) < 0)) {
      /* diff between this shouldn't exceed 32K since this are tcp timer ticks
         and a round-trip shouldn't be that long... */
      m = (s16_t)(tcp_ticks - pcb->rttest);

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: experienced rtt %" "4d" " ticks (%" "4d" " msec).\n", m, m * (2*250));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);


      /* This is taken directly from VJs original code in his paper */
      m = m - (pcb->sa >> 3);
      pcb->sa += m;
      if (m < 0) {
        m = -m;
      }
      m = m - (pcb->sv >> 2);
      pcb->sv += m;
      pcb->rto = (pcb->sa >> 3) + pcb->sv;

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: RTO %" "4d" " (%" "4d" " milliseconds)\n", pcb->rto, pcb->rto * (2*250));} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);


      pcb->rttest = 0;
    }
  }

  /* If the incoming segment contains data, we must process it
     further unless the pcb already received a FIN.
     (RFC 793, chapeter 3.9, "SEGMENT ARRIVES" in states CLOSE-WAIT, CLOSING,
     LAST-ACK and TIME-WAIT: "Ignore the segment text.") */
  if ((tcplen > 0) && (pcb->state < CLOSE_WAIT)) {
    /* This code basically does three things:

    +) If the incoming segment contains data that is the next
    in-sequence data, this data is passed to the application. This
    might involve trimming the first edge of the data. The rcv_nxt
    variable and the advertised window are adjusted.

    +) If the incoming segment has data that is above the next
    sequence number expected (->rcv_nxt), the segment is placed on
    the ->ooseq queue. This is done by finding the appropriate
    place in the ->ooseq queue (which is ordered by sequence
    number) and trim the segment in both ends if needed. An
    immediate ACK is sent to indicate that we received an
    out-of-sequence segment.

    +) Finally, we check if the first segment on the ->ooseq queue
    now is in sequence (i.e., if rcv_nxt >= ooseq->seqno). If
    rcv_nxt > ooseq->seqno, we must trim the first edge of the
    segment on ->ooseq before we adjust rcv_nxt. The data in the
    segments that are now on sequence are chained onto the
    incoming segment so that we only need to call the application
    once.
    */

    /* First, we check if we must trim the first edge. We have to do
       this if the sequence number of the incoming segment is less
       than rcv_nxt, and the sequence number plus the length of the
       segment is larger than rcv_nxt. */
    /*    if (TCP_SEQ_LT(seqno, pcb->rcv_nxt)){
          if (TCP_SEQ_LT(pcb->rcv_nxt, seqno + tcplen)) {*/
    if ((((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + 1)) >= 0) && ((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + tcplen - 1)) <= 0))){
      /* Trimming the first edge is done by pushing the payload
         pointer in the pbuf downwards. This is somewhat tricky since
         we do not want to discard the full contents of the pbuf up to
         the new starting point of the data since we have to keep the
         TCP header which is present in the first pbuf in the chain.

         What is done is really quite a nasty hack: the first pbuf in
         the pbuf chain is pointed to by inseg.p. Since we need to be
         able to deallocate the whole pbuf, we cannot change this
         inseg.p pointer to point to any of the later pbufs in the
         chain. Instead, we point the ->payload pointer in the first
         pbuf to data in one of the later pbufs. We also set the
         inseg.data pointer to point to the right place. This way, the
         ->p pointer will still point to the first pbuf, but the
         ->p->payload pointer will point to data in another pbuf.

         After we are done with adjusting the pbuf pointers we must
         adjust the ->data pointer in the seg and the segment
         length.*/

      off = pcb->rcv_nxt - seqno;
      p = inseg.p;
      do { if(!(inseg . p)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "inseg.p != NULL", 1174, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      do { if(!((off < 0x7fff))) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "insane offset!", 1175, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
      if (inseg.p->len < off) {
        do { if(!((((s32_t)inseg . p->tot_len) >= off))) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pbuf too short!", 1177, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
        new_tot_len = (u16_t)(inseg.p->tot_len - off);
        while (p->len < off) {
          off -= p->len;
          /* KJM following line changed (with addition of new_tot_len var)
             to fix bug #9076
             inseg.p->tot_len -= p->len; */
          p->tot_len = new_tot_len;
          p->len = 0;
          p = p->next;
        }
        if(pbuf_header(p, (s16_t)-off)) {
          /* Do we need to cope with this failing?  Assert for now */
          do { if(!(0)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pbuf_header failed", 1190, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
        }
      } else {
        if(pbuf_header(inseg.p, (s16_t)-off)) {
          /* Do we need to cope with this failing?  Assert for now */
          do { if(!(0)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "pbuf_header failed", 1195, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
        }
      }
      inseg.len -= (u16_t)(pcb->rcv_nxt - seqno);
      inseg.tcphdr->seqno = seqno = pcb->rcv_nxt;
    }
    else {
      if (((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) < 0)){
        /* the whole segment is < rcv_nxt */
        /* must be a duplicate of a packet that has already been correctly handled */

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: duplicate seqno %" "8ld" "\n", seqno);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      }
    }

    /* The sequence number must be within the window (above rcv_nxt
       and below rcv_nxt + rcv_wnd) in order to be further
       processed. */
    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd - 1)) <= 0))){

      if (pcb->rcv_nxt == seqno) {
        /* The incoming segment is the next in sequence. We check if
           we have to trim the end of the segment and update rcv_nxt
           and pass the data to the application. */
        tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));

        if (tcplen > pcb->rcv_wnd) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: other end overran receive window" "seqno %" "8ld" " len %" "4d" " right edge %" "8ld" "\n", seqno, tcplen, pcb->rcv_nxt + pcb->rcv_wnd);} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);



          if ((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
            /* Must remove the FIN from the header as we're trimming 
             * that byte of sequence-space from the packet */
            (inseg . tcphdr)->_hdrlen_rsvd_flags = (((inseg . tcphdr)->_hdrlen_rsvd_flags & (((((u16_t)(~(u16_t)(0x3fU))) & 0xff) << 8) | ((((u16_t)(~(u16_t)(0x3fU))) & 0xff00) >> 8))) | lwip_htons((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) &~ 0x01U));
          }
          /* Adjust length of segment to fit in the window. */
          inseg.len = pcb->rcv_wnd;
          if ((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x02U) {
            inseg.len -= 1;
          }
          pbuf_realloc(inseg.p, inseg.len);
          tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
          do { if(!((seqno + tcplen) == (pcb->rcv_nxt + pcb->rcv_wnd))) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_receive: segment not trimmed correctly to rcv_wnd\n", 1240, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);

        }
#line 1294 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"

        pcb->rcv_nxt = seqno + tcplen;

        /* Update the receiver's (our) window. */
        do { if(!(pcb->rcv_wnd >= tcplen)) do { printf("Assertion \"%s\" failed at line %d in %s\r\n", "tcp_receive: tcplen > rcv_wnd\n", 1298, "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"); } while(0); } while(0);
        pcb->rcv_wnd -= tcplen;

        tcp_update_rcv_ann_wnd(pcb);

        /* If there is data in the segment, we make preparations to
           pass this up to the application. The ->recv_data variable
           is used for holding the pbuf that goes to the
           application. The code for reassembling out-of-sequence data
           chains its data on this pbuf as well.

           If the segment was a FIN, we set the TF_GOT_FIN flag that will
           be used to indicate to the application that the remote side has
           closed its end of the connection. */
        if (inseg.p->tot_len > 0) {
          recv_data = inseg.p;
          /* Since this pbuf now is the responsibility of the
             application, we delete our reference to it so that we won't
             (mistakingly) deallocate it. */
          inseg.p = 0;
        }
        if ((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_receive: received FIN.\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          recv_flags |= (u8_t)0x20U;
        }

#line 1362 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"


        /* Acknowledge the segment(s). */
        do { if((pcb)->flags & ((u8_t)0x01U)) { (pcb)->flags &= ~((u8_t)0x01U); (pcb)->flags |= ((u8_t)0x02U); } else { (pcb)->flags |= ((u8_t)0x01U); } } while (0);

      } else {
        /* We get here if the incoming segment is out-of-sequence. */
        tcp_send_empty_ack(pcb);
#line 1517 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
      }
    } else {
      /* The incoming segment is not withing the window. */
      tcp_send_empty_ack(pcb);
    }
  } else {
    /* Segments with length 0 is taken care of here. Segments that
       fall out of the window are ACKed. */
    /*if (TCP_SEQ_GT(pcb->rcv_nxt, seqno) ||
      TCP_SEQ_GEQ(seqno, pcb->rcv_nxt + pcb->rcv_wnd)) {*/
    if(!(((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd-1)) <= 0))){
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    }
  }
}

/**
 * Parses the options contained in the incoming segment. 
 *
 * Called from tcp_listen_input() and tcp_process().
 * Currently, only the MSS option is supported!
 *
 * @param pcb the tcp_pcb for which a segment arrived
 */
static void
tcp_parseopt(struct tcp_pcb *pcb)
{
  u16_t c, max_c;
  u16_t mss;
  u8_t *opts, opt;




  opts = (u8_t *)tcphdr + 20;

  /* Parse the TCP MSS option, if present. */
  if((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12) > 0x5) {
    max_c = ((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12) - 5) << 2;
    for (c = 0; c < max_c; ) {
      opt = opts[c];
      switch (opt) {
      case 0x00:
        /* End of options. */
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_parseopt: EOL\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        return;
      case 0x01:
        /* NOP option. */
        ++c;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_parseopt: NOP\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        break;
      case 0x02:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_parseopt: MSS\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (opts[c + 1] != 0x04 || c + 0x04 > max_c) {
          /* Bad length */
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_parseopt: bad length\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          return;
        }
        /* An MSS option with the right option length. */
        mss = (opts[c + 2] << 8) | opts[c + 3];
        /* Limit the mss to the configured TCP_MSS and prevent division by zero */
        pcb->mss = ((mss > (1500 - 40)) || (mss == 0)) ? (1500 - 40) : mss;
        /* Advance to next option */
        c += 0x04;
        break;
#line 1603 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\lwip\\lwip-1.4.1\\core\\tcp_in.c"
      default:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_parseopt: other\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (opts[c + 1] == 0) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {printf ("tcp_parseopt: bad length\n");} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          /* If the length field is zero, the options are malformed
             and we don't process them further. */
          return;
        }
        /* All other options have a length field, so that we easily
           can skip past them. */
        c += opts[c + 1];
      }
    }
  }
}

