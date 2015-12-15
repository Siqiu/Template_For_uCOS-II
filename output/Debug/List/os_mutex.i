#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_mutex.c"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*                                  MUTUAL EXCLUSION SEMAPHORE MANAGEMENT
*
*                              (c) Copyright 1992-2010, Micrium, Weston, FL
*                                           All Rights Reserved
*
* File    : OS_MUTEX.C
* By      : Jean J. Labrosse
* Version : V2.92
*
* LICENSING TERMS:
* ---------------
*   uC/OS-II is provided in source form for FREE evaluation, for educational use or for peaceful research.
* If you plan on using  uC/OS-II  in a commercial product you need to contact Micriµm to properly license
* its use in your product. We provide ALL the source code for your convenience and to help you experience
* uC/OS-II.   The fact that the  source is provided does  NOT  mean that you can use it without  paying a
* licensing fee.
*********************************************************************************************************
*/

#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*
*                              (c) Copyright 1992-2010, Micrium, Weston, FL
*                                           All Rights Reserved
*
* File    : uCOS_II.H
* By      : Jean J. Labrosse
* Version : V2.92
*
* LICENSING TERMS:
* ---------------
*   uC/OS-II is provided in source form for FREE evaluation, for educational use or for peaceful research.
* If you plan on using  uC/OS-II  in a commercial product you need to contact Micriµm to properly license
* its use in your product. We provide ALL the source code for your convenience and to help you experience
* uC/OS-II.   The fact that the  source is provided does  NOT  mean that you can use it without  paying a
* licensing fee.
*********************************************************************************************************
*/








/*
*********************************************************************************************************
*                                          uC/OS-II VERSION NUMBER
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                           INCLUDE HEADER FILES
*********************************************************************************************************
*/

//#include <app_cfg.h>
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*                                  uC/OS-II Configuration File for V2.8x
*
*                               (c) Copyright 2005-2009, Micrium, Weston, FL
*                                          All Rights Reserved
*
*
* File    : OS_CFG.H
* By      : Jean J. Labrosse
* Version : V2.90
*
* LICENSING TERMS:
* ---------------
*   uC/OS-II is provided in source form for FREE evaluation, for educational use or for peaceful research.
* If you plan on using  uC/OS-II  in a commercial product you need to contact Micriç¥„ to properly license
* its use in your product. We provide ALL the source code for your convenience and to help you experience
* uC/OS-II.   The fact that the  source is provided does  NOT  mean that you can use it without  paying a
* licensing fee.
*********************************************************************************************************
*/





                                       /* ---------------------- MISCELLANEOUS ----------------------- */














                                       /* ... MUST NEVER be higher than 254!                           */













                                       /* --------------------- TASK STACK SIZE ---------------------- */





                                       /* --------------------- TASK MANAGEMENT ---------------------- */
#line 77 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* ----------------------- EVENT FLAGS ------------------------ */
#line 87 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* -------------------- MESSAGE MAILBOXES --------------------- */
#line 97 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* --------------------- MEMORY MANAGEMENT -------------------- */





                                       /* ---------------- MUTUAL EXCLUSION SEMAPHORES --------------- */






                                       /* ---------------------- MESSAGE QUEUES ---------------------- */
#line 122 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* ------------------------ SEMAPHORES ------------------------ */
#line 131 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\config\\os_cfg.h"


                                       /* --------------------- TIME MANAGEMENT ---------------------- */






                                       /* --------------------- TIMER MANAGEMENT --------------------- */
#line 46 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"
#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\port\\os_cpu.h"
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

#line 47 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*
*********************************************************************************************************
*                                             MISCELLANEOUS
*********************************************************************************************************
*/





























#line 89 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"









/*$PAGE*/
/*
*********************************************************************************************************
*                              TASK STATUS (Bit definition for OSTCBStat)
*********************************************************************************************************
*/
#line 112 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"



/*
*********************************************************************************************************
*                           TASK PEND STATUS (Status codes for OSTCBStatPend)
*********************************************************************************************************
*/




/*
*********************************************************************************************************
*                                        OS_EVENT types
*********************************************************************************************************
*/
#line 135 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


                                            /* ... (Must be different value than OS_EVENT_TYPE_xxx)    */

/*
*********************************************************************************************************
*                                         EVENT FLAGS
*********************************************************************************************************
*/



















/*
*********************************************************************************************************
*                                   Values for OSTickStepState
*
* Note(s): This feature is used by uC/OS-View.
*********************************************************************************************************
*/







/*
*********************************************************************************************************
*       Possible values for 'opt' argument of OSSemDel(), OSMboxDel(), OSQDel() and OSMutexDel()
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                        OS???Pend() OPTIONS
*
* These #defines are used to establish the options for OS???PendAbort().
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                     OS???PostOpt() OPTIONS
*
* These #defines are used to establish the options for OSMboxPostOpt() and OSQPostOpt().
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                                 TASK OPTIONS (see OSTaskCreateExt())
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                            TIMER OPTIONS (see OSTmrStart() and OSTmrStop())
*********************************************************************************************************
*/








/*
*********************************************************************************************************
*                                            TIMER STATES
*********************************************************************************************************
*/





/*
*********************************************************************************************************
*                                             ERROR CODES
*********************************************************************************************************
*/


#line 256 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 267 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"













#line 294 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 301 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 312 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"



#line 321 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"



#line 338 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*$PAGE*/
/*
*********************************************************************************************************
*                                          EVENT CONTROL BLOCK
*********************************************************************************************************
*/


typedef  INT8U    OS_PRIO;





typedef struct os_event {
    INT8U    OSEventType;                    /* Type of event control block (see OS_EVENT_TYPE_xxxx)    */
    void    *OSEventPtr;                     /* Pointer to message or queue structure                   */
    INT16U   OSEventCnt;                     /* Semaphore Count (not used if other EVENT type)          */
    OS_PRIO  OSEventGrp;                     /* Group corresponding to tasks waiting for event to occur */
    OS_PRIO  OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur                */


    INT8U   *OSEventName;

} OS_EVENT;



/*
*********************************************************************************************************
*                                       EVENT FLAGS CONTROL BLOCK
*********************************************************************************************************
*/








typedef  INT16U   OS_FLAGS;







typedef struct os_flag_grp {                /* Event Flag Group                                        */
    INT8U         OSFlagType;               /* Should be set to OS_EVENT_TYPE_FLAG                     */
    void         *OSFlagWaitList;           /* Pointer to first NODE of task waiting on event flag     */
    OS_FLAGS      OSFlagFlags;              /* 8, 16 or 32 bit flags                                   */

    INT8U        *OSFlagName;

} OS_FLAG_GRP;



typedef struct os_flag_node {               /* Event Flag Wait List Node                               */
    void         *OSFlagNodeNext;           /* Pointer to next     NODE in wait list                   */
    void         *OSFlagNodePrev;           /* Pointer to previous NODE in wait list                   */
    void         *OSFlagNodeTCB;            /* Pointer to TCB of waiting task                          */
    void         *OSFlagNodeFlagGrp;        /* Pointer to Event Flag Group                             */
    OS_FLAGS      OSFlagNodeFlags;          /* Event flag to wait on                                   */
    INT8U         OSFlagNodeWaitType;       /* Type of wait:                                           */
                                            /*      OS_FLAG_WAIT_AND                                   */
                                            /*      OS_FLAG_WAIT_ALL                                   */
                                            /*      OS_FLAG_WAIT_OR                                    */
                                            /*      OS_FLAG_WAIT_ANY                                   */
} OS_FLAG_NODE;


/*$PAGE*/
/*
*********************************************************************************************************
*                                          MESSAGE MAILBOX DATA
*********************************************************************************************************
*/


typedef struct os_mbox_data {
    void   *OSMsg;                         /* Pointer to message in mailbox                            */
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)]; /* List of tasks waiting for event to occur                 */
    OS_PRIO OSEventGrp;                    /* Group corresponding to tasks waiting for event to occur  */
} OS_MBOX_DATA;


/*
*********************************************************************************************************
*                                     MEMORY PARTITION DATA STRUCTURES
*********************************************************************************************************
*/


typedef struct os_mem {                   /* MEMORY CONTROL BLOCK                                      */
    void   *OSMemAddr;                    /* Pointer to beginning of memory partition                  */
    void   *OSMemFreeList;                /* Pointer to list of free memory blocks                     */
    INT32U  OSMemBlkSize;                 /* Size (in bytes) of each block of memory                   */
    INT32U  OSMemNBlks;                   /* Total number of blocks in this partition                  */
    INT32U  OSMemNFree;                   /* Number of memory blocks remaining in this partition       */

    INT8U  *OSMemName;                    /* Memory partition name                                     */

} OS_MEM;


typedef struct os_mem_data {
    void   *OSAddr;                    /* Pointer to the beginning address of the memory partition     */
    void   *OSFreeList;                /* Pointer to the beginning of the free list of memory blocks   */
    INT32U  OSBlkSize;                 /* Size (in bytes) of each memory block                         */
    INT32U  OSNBlks;                   /* Total number of blocks in the partition                      */
    INT32U  OSNFree;                   /* Number of memory blocks free                                 */
    INT32U  OSNUsed;                   /* Number of memory blocks used                                 */
} OS_MEM_DATA;


/*$PAGE*/
/*
*********************************************************************************************************
*                                    MUTUAL EXCLUSION SEMAPHORE DATA
*********************************************************************************************************
*/


typedef struct os_mutex_data {
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur                */
    OS_PRIO OSEventGrp;                     /* Group corresponding to tasks waiting for event to occur */
    BOOLEAN OSValue;                        /* Mutex value (OS_FALSE = used, OS_TRUE = available)      */
    INT8U   OSOwnerPrio;                    /* Mutex owner's task priority or 0xFF if no owner         */
    INT8U   OSMutexPCP;                     /* Priority Ceiling Priority or 0xFF if PCP disabled       */
} OS_MUTEX_DATA;


/*
*********************************************************************************************************
*                                          MESSAGE QUEUE DATA
*********************************************************************************************************
*/


typedef struct os_q {                   /* QUEUE CONTROL BLOCK                                         */
    struct os_q   *OSQPtr;              /* Link to next queue control block in list of free blocks     */
    void         **OSQStart;            /* Pointer to start of queue data                              */
    void         **OSQEnd;              /* Pointer to end   of queue data                              */
    void         **OSQIn;               /* Pointer to where next message will be inserted  in   the Q  */
    void         **OSQOut;              /* Pointer to where next message will be extracted from the Q  */
    INT16U         OSQSize;             /* Size of queue (maximum number of entries)                   */
    INT16U         OSQEntries;          /* Current number of entries in the queue                      */
} OS_Q;


typedef struct os_q_data {
    void          *OSMsg;               /* Pointer to next message to be extracted from queue          */
    INT16U         OSNMsgs;             /* Number of messages in message queue                         */
    INT16U         OSQSize;             /* Size of message queue                                       */
    OS_PRIO        OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur         */
    OS_PRIO        OSEventGrp;          /* Group corresponding to tasks waiting for event to occur     */
} OS_Q_DATA;


/*
*********************************************************************************************************
*                                           SEMAPHORE DATA
*********************************************************************************************************
*/


typedef struct os_sem_data {
    INT16U  OSCnt;                          /* Semaphore count                                         */
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  /* List of tasks waiting for event to occur                */
    OS_PRIO OSEventGrp;                     /* Group corresponding to tasks waiting for event to occur */
} OS_SEM_DATA;


/*
*********************************************************************************************************
*                                            TASK STACK DATA
*********************************************************************************************************
*/


typedef struct os_stk_data {
    INT32U  OSFree;                    /* Number of free entries on the stack                          */
    INT32U  OSUsed;                    /* Number of entries used on the stack                          */
} OS_STK_DATA;


/*$PAGE*/
/*
*********************************************************************************************************
*                                          TASK CONTROL BLOCK
*********************************************************************************************************
*/

typedef struct os_tcb {
    OS_STK          *OSTCBStkPtr;           /* Pointer to current top of stack                         */


    void            *OSTCBExtPtr;           /* Pointer to user definable data for TCB extension        */
    OS_STK          *OSTCBStkBottom;        /* Pointer to bottom of stack                              */
    INT32U           OSTCBStkSize;          /* Size of task stack (in number of stack elements)        */
    INT16U           OSTCBOpt;              /* Task options as passed by OSTaskCreateExt()             */
    INT16U           OSTCBId;               /* Task ID (0..65535)                                      */


    struct os_tcb   *OSTCBNext;             /* Pointer to next     TCB in the TCB list                 */
    struct os_tcb   *OSTCBPrev;             /* Pointer to previous TCB in the TCB list                 */


    OS_EVENT        *OSTCBEventPtr;         /* Pointer to          event control block                 */



    OS_EVENT       **OSTCBEventMultiPtr;    /* Pointer to multiple event control blocks                */



    void            *OSTCBMsg;              /* Message received from OSMboxPost() or OSQPost()         */




    OS_FLAG_NODE    *OSTCBFlagNode;         /* Pointer to event flag node                              */

    OS_FLAGS         OSTCBFlagsRdy;         /* Event flags that made task ready to run                 */


    INT32U           OSTCBDly;              /* Nbr ticks to delay task or, timeout waiting for event   */
    INT8U            OSTCBStat;             /* Task      status                                        */
    INT8U            OSTCBStatPend;         /* Task PEND status                                        */
    INT8U            OSTCBPrio;             /* Task priority (0 == highest)                            */

    INT8U            OSTCBX;                /* Bit position in group  corresponding to task priority   */
    INT8U            OSTCBY;                /* Index into ready table corresponding to task priority   */
    OS_PRIO          OSTCBBitX;             /* Bit mask to access bit position in ready table          */
    OS_PRIO          OSTCBBitY;             /* Bit mask to access bit position in ready group          */


    INT8U            OSTCBDelReq;           /* Indicates whether a task needs to delete itself         */



    INT32U           OSTCBCtxSwCtr;         /* Number of time the task was switched in                 */
    INT32U           OSTCBCyclesTot;        /* Total number of clock cycles the task has been running  */
    INT32U           OSTCBCyclesStart;      /* Snapshot of cycle counter at start of task resumption   */
    OS_STK          *OSTCBStkBase;          /* Pointer to the beginning of the task stack              */
    INT32U           OSTCBStkUsed;          /* Number of bytes used from the stack                     */



    INT8U           *OSTCBTaskName;



    INT32U           OSTCBRegTbl[1u];

} OS_TCB;

/*$PAGE*/
/*
************************************************************************************************************************
*                                                   TIMER DATA TYPES
************************************************************************************************************************
*/


typedef  void (*OS_TMR_CALLBACK)(void *ptmr, void *parg);



typedef  struct  os_tmr {
    INT8U            OSTmrType;                       /* Should be set to OS_TMR_TYPE                                  */
    OS_TMR_CALLBACK  OSTmrCallback;                   /* Function to call when timer expires                           */
    void            *OSTmrCallbackArg;                /* Argument to pass to function when timer expires               */
    void            *OSTmrNext;                       /* Double link list pointers                                     */
    void            *OSTmrPrev;
    INT32U           OSTmrMatch;                      /* Timer expires when OSTmrTime == OSTmrMatch                    */
    INT32U           OSTmrDly;                        /* Delay time before periodic update starts                      */
    INT32U           OSTmrPeriod;                     /* Period to repeat timer                                        */

    INT8U           *OSTmrName;                       /* Name to give the timer                                        */

    INT8U            OSTmrOpt;                        /* Options (see OS_TMR_OPT_xxx)                                  */
    INT8U            OSTmrState;                      /* Indicates the state of the timer:                             */
                                                      /*     OS_TMR_STATE_UNUSED                                       */
                                                      /*     OS_TMR_STATE_RUNNING                                      */
                                                      /*     OS_TMR_STATE_STOPPED                                      */
} OS_TMR;



typedef  struct  os_tmr_wheel {
    OS_TMR          *OSTmrFirst;                      /* Pointer to first timer in linked list                         */
    INT16U           OSTmrEntries;
} OS_TMR_WHEEL;


/*$PAGE*/
/*
*********************************************************************************************************
*                                            GLOBAL VARIABLES
*********************************************************************************************************
*/

extern  INT32U            OSCtxSwCtr;               /* Counter of number of context switches           */


extern  OS_EVENT         *OSEventFreeList;          /* Pointer to list of free EVENT control blocks    */
extern  OS_EVENT          OSEventTbl[10u];/* Table of EVENT control blocks                   */



extern  OS_FLAG_GRP       OSFlagTbl[5u];  /* Table containing event flag groups              */
extern  OS_FLAG_GRP      *OSFlagFreeList;           /* Pointer to free list of event flag groups       */



extern  INT8U             OSCPUUsage;               /* Percentage of CPU used                          */
extern  INT32U            OSIdleCtrMax;             /* Max. value that idle ctr can take in 1 sec.     */
extern  INT32U            OSIdleCtrRun;             /* Val. reached by idle ctr at run time in 1 sec.  */
extern  BOOLEAN           OSStatRdy;                /* Flag indicating that the statistic task is rdy  */
extern  OS_STK            OSTaskStatStk[128u];      /* Statistics task stack          */


extern  INT8U             OSIntNesting;             /* Interrupt nesting level                         */

extern  INT8U             OSLockNesting;            /* Multitasking lock nesting level                 */

extern  INT8U             OSPrioCur;                /* Priority of current task                        */
extern  INT8U             OSPrioHighRdy;            /* Priority of highest priority task               */

extern  OS_PRIO           OSRdyGrp;                        /* Ready list group                         */
extern  OS_PRIO           OSRdyTbl[((63u) / 8u + 1u)];       /* Table of tasks which are ready to run    */

extern  BOOLEAN           OSRunning;                       /* Flag indicating that kernel is running   */

extern  INT8U             OSTaskCtr;                       /* Number of tasks created                  */

extern  volatile  INT32U  OSIdleCtr;                                 /* Idle counter                   */





extern  OS_STK            OSTaskIdleStk[128u];      /* Idle task stack                */


extern  OS_TCB           *OSTCBCur;                        /* Pointer to currently running TCB         */
extern  OS_TCB           *OSTCBFreeList;                   /* Pointer to list of free TCBs             */
extern  OS_TCB           *OSTCBHighRdy;                    /* Pointer to highest priority TCB R-to-R   */
extern  OS_TCB           *OSTCBList;                       /* Pointer to doubly linked list of TCBs    */
extern  OS_TCB           *OSTCBPrioTbl[63u + 1u];    /* Table of pointers to created TCBs   */
extern  OS_TCB            OSTCBTbl[20u + 2u];   /* Table of TCBs                  */


extern  INT8U             OSTickStepState;          /* Indicates the state of the tick step feature    */



extern  OS_MEM           *OSMemFreeList;            /* Pointer to free list of memory partitions       */
extern  OS_MEM            OSMemTbl[5u];/* Storage for memory partition manager            */



extern  OS_Q             *OSQFreeList;              /* Pointer to list of free QUEUE control blocks    */
extern  OS_Q              OSQTbl[4u];        /* Table of QUEUE control blocks                   */



extern  volatile  INT32U  OSTime;                   /* Current value of system time (in ticks)         */



extern  INT16U            OSTmrFree;                /* Number of free entries in the timer pool        */
extern  INT16U            OSTmrUsed;                /* Number of timers used                           */
extern  INT32U            OSTmrTime;                /* Current timer time                              */

extern  OS_EVENT         *OSTmrSem;                 /* Sem. used to gain exclusive access to timers    */
extern  OS_EVENT         *OSTmrSemSignal;           /* Sem. used to signal the update of timers        */

extern  OS_TMR            OSTmrTbl[16u]; /* Table containing pool of timers                 */
extern  OS_TMR           *OSTmrFreeList;            /* Pointer to free list of timers                  */
extern  OS_STK            OSTmrTaskStk[128u];

extern  OS_TMR_WHEEL      OSTmrWheelTbl[8u];


extern  INT8U   const     OSUnMapTbl[256];          /* Priority->Index    lookup table                 */

/*$PAGE*/
/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*                                     (Target Independent Functions)
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            MISCELLANEOUS
*********************************************************************************************************
*/




INT8U         OSEventNameGet          (OS_EVENT        *pevent,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSEventNameSet          (OS_EVENT        *pevent,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT16U        OSEventPendMulti        (OS_EVENT       **pevents_pend,
                                       OS_EVENT       **pevents_rdy,
                                       void           **pmsgs_rdy,
                                       INT32U           timeout,
                                       INT8U           *perr);




/*
*********************************************************************************************************
*                                         EVENT FLAGS MANAGEMENT
*********************************************************************************************************
*/




OS_FLAGS      OSFlagAccept            (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagCreate            (OS_FLAGS         flags,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagDel               (OS_FLAG_GRP     *pgrp,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSFlagNameGet           (OS_FLAG_GRP     *pgrp,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSFlagNameSet           (OS_FLAG_GRP     *pgrp,
                                       INT8U           *pname,
                                       INT8U           *perr);


OS_FLAGS      OSFlagPend              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT32U           timeout,
                                       INT8U           *perr);

OS_FLAGS      OSFlagPendGetFlagsRdy   (void);
OS_FLAGS      OSFlagPost              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            opt,
                                       INT8U           *perr);


OS_FLAGS      OSFlagQuery             (OS_FLAG_GRP     *pgrp,
                                       INT8U           *perr);



/*
*********************************************************************************************************
*                                        MESSAGE MAILBOX MANAGEMENT
*********************************************************************************************************
*/




void         *OSMboxAccept            (OS_EVENT        *pevent);


OS_EVENT     *OSMboxCreate            (void            *pmsg);


OS_EVENT     *OSMboxDel               (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void         *OSMboxPend              (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSMboxPendAbort         (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSMboxPost              (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSMboxPostOpt           (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSMboxQuery             (OS_EVENT        *pevent,
                                       OS_MBOX_DATA    *p_mbox_data);



/*
*********************************************************************************************************
*                                           MEMORY MANAGEMENT
*********************************************************************************************************
*/



OS_MEM       *OSMemCreate             (void            *addr,
                                       INT32U           nblks,
                                       INT32U           blksize,
                                       INT8U           *perr);

void         *OSMemGet                (OS_MEM          *pmem,
                                       INT8U           *perr);

INT8U         OSMemNameGet            (OS_MEM          *pmem,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSMemNameSet            (OS_MEM          *pmem,
                                       INT8U           *pname,
                                       INT8U           *perr);

INT8U         OSMemPut                (OS_MEM          *pmem,
                                       void            *pblk);


INT8U         OSMemQuery              (OS_MEM          *pmem,
                                       OS_MEM_DATA     *p_mem_data);




/*
*********************************************************************************************************
*                                MUTUAL EXCLUSION SEMAPHORE MANAGEMENT
*********************************************************************************************************
*/




BOOLEAN       OSMutexAccept           (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSMutexCreate           (INT8U            prio,
                                       INT8U           *perr);


OS_EVENT     *OSMutexDel              (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSMutexPend             (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);

INT8U         OSMutexPost             (OS_EVENT        *pevent);


INT8U         OSMutexQuery            (OS_EVENT        *pevent,
                                       OS_MUTEX_DATA   *p_mutex_data);




/*$PAGE*/
/*
*********************************************************************************************************
*                                         MESSAGE QUEUE MANAGEMENT
*********************************************************************************************************
*/




void         *OSQAccept               (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSQCreate               (void           **start,
                                       INT16U           size);


OS_EVENT     *OSQDel                  (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQFlush                (OS_EVENT        *pevent);


void         *OSQPend                 (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSQPendAbort            (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQPost                 (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostFront            (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostOpt              (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSQQuery                (OS_EVENT        *pevent,
                                       OS_Q_DATA       *p_q_data);




/*$PAGE*/
/*
*********************************************************************************************************
*                                          SEMAPHORE MANAGEMENT
*********************************************************************************************************
*/



INT16U        OSSemAccept             (OS_EVENT        *pevent);


OS_EVENT     *OSSemCreate             (INT16U           cnt);


OS_EVENT     *OSSemDel                (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSSemPend               (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSSemPendAbort          (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


INT8U         OSSemPost               (OS_EVENT        *pevent);


INT8U         OSSemQuery              (OS_EVENT        *pevent,
                                       OS_SEM_DATA     *p_sem_data);



void          OSSemSet                (OS_EVENT        *pevent,
                                       INT16U           cnt,
                                       INT8U           *perr);




/*$PAGE*/
/*
*********************************************************************************************************
*                                            TASK MANAGEMENT
*********************************************************************************************************
*/

INT8U         OSTaskChangePrio        (INT8U            oldprio,
                                       INT8U            newprio);



INT8U         OSTaskCreate            (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio);



INT8U         OSTaskCreateExt         (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio,
                                       INT16U           id,
                                       OS_STK          *pbos,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);



INT8U         OSTaskDel               (INT8U            prio);
INT8U         OSTaskDelReq            (INT8U            prio);



INT8U         OSTaskNameGet           (INT8U            prio,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSTaskNameSet           (INT8U            prio,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT8U         OSTaskResume            (INT8U            prio);
INT8U         OSTaskSuspend           (INT8U            prio);



INT8U         OSTaskStkChk            (INT8U            prio,
                                       OS_STK_DATA     *p_stk_data);



INT8U         OSTaskQuery             (INT8U            prio,
                                       OS_TCB          *p_task_data);





INT32U        OSTaskRegGet            (INT8U            prio,
                                       INT8U            id,
                                       INT8U           *perr);

void          OSTaskRegSet            (INT8U            prio,
                                       INT8U            id,
                                       INT32U           value,
                                       INT8U           *perr);


/*$PAGE*/
/*
*********************************************************************************************************
*                                            TIME MANAGEMENT
*********************************************************************************************************
*/

void          OSTimeDly               (INT32U           ticks);


INT8U         OSTimeDlyHMSM           (INT8U            hours,
                                       INT8U            minutes,
                                       INT8U            seconds,
                                       INT16U           ms);



INT8U         OSTimeDlyResume         (INT8U            prio);



INT32U        OSTimeGet               (void);
void          OSTimeSet               (INT32U           ticks);


void          OSTimeTick              (void);

/*
*********************************************************************************************************
*                                            TIMER MANAGEMENT
*********************************************************************************************************
*/


OS_TMR      *OSTmrCreate              (INT32U           dly,
                                       INT32U           period,
                                       INT8U            opt,
                                       OS_TMR_CALLBACK  callback,
                                       void            *callback_arg,
                                       INT8U           *pname,
                                       INT8U           *perr);

BOOLEAN      OSTmrDel                 (OS_TMR          *ptmr,
                                       INT8U           *perr);


INT8U        OSTmrNameGet             (OS_TMR          *ptmr,
                                       INT8U          **pdest,
                                       INT8U           *perr);

INT32U       OSTmrRemainGet           (OS_TMR          *ptmr,
                                       INT8U           *perr);

INT8U        OSTmrStateGet            (OS_TMR          *ptmr,
                                       INT8U           *perr);

BOOLEAN      OSTmrStart               (OS_TMR          *ptmr,
                                       INT8U           *perr);

BOOLEAN      OSTmrStop                (OS_TMR          *ptmr,
                                       INT8U            opt,
                                       void            *callback_arg,
                                       INT8U           *perr);

INT8U        OSTmrSignal              (void);


/*
*********************************************************************************************************
*                                             MISCELLANEOUS
*********************************************************************************************************
*/

void          OSInit                  (void);

void          OSIntEnter              (void);
void          OSIntExit               (void);






void          OSSchedLock             (void);
void          OSSchedUnlock           (void);


void          OSStart                 (void);

void          OSStatInit              (void);

INT16U        OSVersion               (void);

/*$PAGE*/
/*
*********************************************************************************************************
*                                      INTERNAL FUNCTION PROTOTYPES
*                            (Your application MUST NOT call these functions)
*********************************************************************************************************
*/


void          OS_Dummy                (void);



INT8U         OS_EventTaskRdy         (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            msk,
                                       INT8U            pend_stat);

void          OS_EventTaskWait        (OS_EVENT        *pevent);

void          OS_EventTaskRemove      (OS_TCB          *ptcb,
                                       OS_EVENT        *pevent);


void          OS_EventTaskWaitMulti   (OS_EVENT       **pevents_wait);

void          OS_EventTaskRemoveMulti (OS_TCB          *ptcb,
                                       OS_EVENT       **pevents_multi);


void          OS_EventWaitListInit    (OS_EVENT        *pevent);



void          OS_FlagInit             (void);
void          OS_FlagUnlink           (OS_FLAG_NODE    *pnode);


void          OS_MemClr               (INT8U           *pdest,
                                       INT16U           size);

void          OS_MemCopy              (INT8U           *pdest,
                                       INT8U           *psrc,
                                       INT16U           size);


void          OS_MemInit              (void);



void          OS_QInit                (void);


void          OS_Sched                (void);


INT8U         OS_StrLen               (INT8U           *psrc);


void          OS_TaskIdle             (void            *p_arg);

void          OS_TaskReturn           (void);


void          OS_TaskStat             (void            *p_arg);



void          OS_TaskStkClr           (OS_STK          *pbos,
                                       INT32U           size,
                                       INT16U           opt);



void          OS_TaskStatStkChk       (void);


INT8U         OS_TCBInit              (INT8U            prio,
                                       OS_STK          *ptos,
                                       OS_STK          *pbos,
                                       INT16U           id,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);


void          OSTmr_Init              (void);


/*$PAGE*/
/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*                                      (Target Specific Functions)
*********************************************************************************************************
*/


void          OSDebugInit             (void);


void          OSInitHookBegin         (void);
void          OSInitHookEnd           (void);

void          OSTaskCreateHook        (OS_TCB          *ptcb);
void          OSTaskDelHook           (OS_TCB          *ptcb);

void          OSTaskIdleHook          (void);

void          OSTaskReturnHook        (OS_TCB          *ptcb);

void          OSTaskStatHook          (void);
OS_STK       *OSTaskStkInit           (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT16U           opt);


void          OSTaskSwHook            (void);


void          OSTCBInitHook           (OS_TCB          *ptcb);


void          OSTimeTickHook          (void);


/*$PAGE*/
/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*                                   (Application Specific Functions)
*********************************************************************************************************
*/

#line 1359 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*
*********************************************************************************************************
*                                          FUNCTION PROTOTYPES
*
* IMPORTANT: These prototypes MUST be placed in OS_CPU.H
*********************************************************************************************************
*/







/*$PAGE*/
/*
*********************************************************************************************************
*                                   LOOK FOR MISSING #define CONSTANTS
*
* This section is used to generate ERROR messages at compile time if certain #define constants are
* MISSING in OS_CFG.H.  This allows you to quickly determine the source of the error.
*
* You SHOULD NOT change this section UNLESS you would like to add more comments as to the source of the
* compile time error.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            EVENT FLAGS
*********************************************************************************************************
*/

#line 1403 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


























/*
*********************************************************************************************************
*                                           MESSAGE MAILBOXES
*********************************************************************************************************
*/

#line 1441 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"






















/*
*********************************************************************************************************
*                                           MEMORY MANAGEMENT
*********************************************************************************************************
*/

#line 1479 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"










/*
*********************************************************************************************************
*                                       MUTUAL EXCLUSION SEMAPHORES
*********************************************************************************************************
*/

#line 1501 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"










/*
*********************************************************************************************************
*                                              MESSAGE QUEUES
*********************************************************************************************************
*/

#line 1527 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


































/*
*********************************************************************************************************
*                                              SEMAPHORES
*********************************************************************************************************
*/

#line 1573 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"


















/*
*********************************************************************************************************
*                                             TASK MANAGEMENT
*********************************************************************************************************
*/

#line 1603 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"























































#line 1665 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

/*
*********************************************************************************************************
*                                             TIME MANAGEMENT
*********************************************************************************************************
*/

















/*
*********************************************************************************************************
*                                             TIMER MANAGEMENT
*********************************************************************************************************
*/

#line 1701 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"

#line 1708 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"






#line 1720 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"




















/*
*********************************************************************************************************
*                                            MISCELLANEOUS
*********************************************************************************************************
*/


























#line 1778 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"































/*
*********************************************************************************************************
*                                         SAFETY CRITICAL USE
*********************************************************************************************************
*/

#line 1890 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\ucos_ii.h"





#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_mutex.c"




/*
*********************************************************************************************************
*                                            LOCAL CONSTANTS
*********************************************************************************************************
*/






/*
*********************************************************************************************************
*                                            LOCAL CONSTANTS
*********************************************************************************************************
*/

static  void  OSMutex_RdyAtPrio(OS_TCB *ptcb, INT8U prio);

/*$PAGE*/
/*
*********************************************************************************************************
*                                   ACCEPT MUTUAL EXCLUSION SEMAPHORE
*
* Description: This  function checks the mutual exclusion semaphore to see if a resource is available.
*              Unlike OSMutexPend(), OSMutexAccept() does not suspend the calling task if the resource is
*              not available or the event did not occur.
*
* Arguments  : pevent     is a pointer to the event control block
*
*              perr       is a pointer to an error code which will be returned to your application:
*                            OS_ERR_NONE         if the call was successful.
*                            OS_ERR_EVENT_TYPE   if 'pevent' is not a pointer to a mutex
*                            OS_ERR_PEVENT_NULL  'pevent' is a NULL pointer
*                            OS_ERR_PEND_ISR     if you called this function from an ISR
*                            OS_ERR_PCP_LOWER    If the priority of the task that owns the Mutex is
*                                                HIGHER (i.e. a lower number) than the PCP.  This error
*                                                indicates that you did not set the PCP higher (lower
*                                                number) than ALL the tasks that compete for the Mutex.
*                                                Unfortunately, this is something that could not be
*                                                detected when the Mutex is created because we don't know
*                                                what tasks will be using the Mutex.
*
* Returns    : == OS_TRUE    if the resource is available, the mutual exclusion semaphore is acquired
*              == OS_FALSE   a) if the resource is not available
*                            b) you didn't pass a pointer to a mutual exclusion semaphore
*                            c) you called this function from an ISR
*
* Warning(s) : This function CANNOT be called from an ISR because mutual exclusion semaphores are
*              intended to be used by tasks only.
*********************************************************************************************************
*/


BOOLEAN  OSMutexAccept (OS_EVENT  *pevent,
                        INT8U     *perr)
{
    INT8U      pcp;                                    /* Priority Ceiling Priority (PCP)              */

    OS_CPU_SR  cpu_sr = 0u;




#line 100 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_mutex.c"


    if (pevent == (OS_EVENT *)0) {                     /* Validate 'pevent'                            */
        *perr = 4u;
        return (0u);
    }

    if (pevent->OSEventType != 4u) {  /* Validate event block type                    */
        *perr = 1u;
        return (0u);
    }
    if (OSIntNesting > 0u) {                           /* Make sure it's not called from an ISR        */
        *perr = 2u;
        return (0u);
    }
    {cpu_sr = OS_CPU_SR_Save();};                               /* Get value (0 or 1) of Mutex                  */
    pcp = (INT8U)(pevent->OSEventCnt >> 8u);           /* Get PCP from mutex                           */
    if ((pevent->OSEventCnt & ((INT16U)0x00FFu)) == ((INT16U)0x00FFu)) {
        pevent->OSEventCnt &= ((INT16U)0xFF00u);   /*      Mask off LSByte (Acquire Mutex)         */
        pevent->OSEventCnt |= OSTCBCur->OSTCBPrio;     /*      Save current task priority in LSByte    */
        pevent->OSEventPtr  = (void *)OSTCBCur;        /*      Link TCB of task owning Mutex           */
        if ((pcp != 0xFFu) &&
            (OSTCBCur->OSTCBPrio <= pcp)) {            /*      PCP 'must' have a SMALLER prio ...      */
             {OS_CPU_SR_Restore(cpu_sr);};                       /*      ... than current task!                  */
            *perr = 120u;
        } else {
             {OS_CPU_SR_Restore(cpu_sr);};
            *perr = 0u;
        }
        return (1u);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;
    return (0u);
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                  CREATE A MUTUAL EXCLUSION SEMAPHORE
*
* Description: This function creates a mutual exclusion semaphore.
*
* Arguments  : prio          is the priority to use when accessing the mutual exclusion semaphore.  In
*                            other words, when the semaphore is acquired and a higher priority task
*                            attempts to obtain the semaphore then the priority of the task owning the
*                            semaphore is raised to this priority.  It is assumed that you will specify
*                            a priority that is LOWER in value than ANY of the tasks competing for the
*                            mutex. If the priority is specified as OS_PRIO_MUTEX_CEIL_DIS, then the
*                            priority ceiling promotion is disabled. This way, the tasks accessing the
*                            semaphore do not have their priority promoted.
*
*              perr          is a pointer to an error code which will be returned to your application:
*                               OS_ERR_NONE         if the call was successful.
*                               OS_ERR_CREATE_ISR   if you attempted to create a MUTEX from an ISR
*                               OS_ERR_PRIO_EXIST   if a task at the priority ceiling priority
*                                                   already exist.
*                               OS_ERR_PEVENT_NULL  No more event control blocks available.
*                               OS_ERR_PRIO_INVALID if the priority you specify is higher that the
*                                                   maximum allowed (i.e. > OS_LOWEST_PRIO)
*
* Returns    : != (void *)0  is a pointer to the event control clock (OS_EVENT) associated with the
*                            created mutex.
*              == (void *)0  if an error is detected.
*
* Note(s)    : 1) The LEAST significant 8 bits of '.OSEventCnt' hold the priority number of the task
*                 owning the mutex or 0xFF if no task owns the mutex.
*
*              2) The MOST  significant 8 bits of '.OSEventCnt' hold the priority number used to
*                 reduce priority inversion or 0xFF (OS_PRIO_MUTEX_CEIL_DIS) if priority ceiling
*                 promotion is disabled.
*********************************************************************************************************
*/

OS_EVENT  *OSMutexCreate (INT8U   prio,
                          INT8U  *perr)
{
    OS_EVENT  *pevent;

    OS_CPU_SR  cpu_sr = 0u;




#line 191 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_mutex.c"

#line 198 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_mutex.c"


    if (prio != 0xFFu) {
        if (prio >= 63u) {                      /* Validate PCP                             */
           *perr = 42u;
            return ((OS_EVENT *)0);
        }
    }

    if (OSIntNesting > 0u) {                               /* See if called from ISR ...               */
        *perr = 16u;                         /* ... can't CREATE mutex from an ISR       */
        return ((OS_EVENT *)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio != 0xFFu) {
        if (OSTCBPrioTbl[prio] != (OS_TCB *)0) {           /* Mutex priority must not already exist    */
            {OS_CPU_SR_Restore(cpu_sr);};                            /* Task already exist at priority ...       */
           *perr = 40u;                      /* ... ceiling priority                     */
            return ((OS_EVENT *)0);
        }
        OSTCBPrioTbl[prio] = ((OS_TCB *)1);              /* Reserve the table entry                  */
    }

    pevent = OSEventFreeList;                              /* Get next free event control block        */
    if (pevent == (OS_EVENT *)0) {                         /* See if an ECB was available              */
        if (prio != 0xFFu) {
            OSTCBPrioTbl[prio] = (OS_TCB *)0;              /* No, Release the table entry              */
        }
        {OS_CPU_SR_Restore(cpu_sr);};
       *perr = 4u;                         /* No more event control blocks             */
        return (pevent);
    }
    OSEventFreeList     = (OS_EVENT *)OSEventFreeList->OSEventPtr; /* Adjust the free list             */
    {OS_CPU_SR_Restore(cpu_sr);};
    pevent->OSEventType = 4u;
    pevent->OSEventCnt  = (INT16U)((INT16U)prio << 8u) | ((INT16U)0x00FFu); /* Resource is avail.     */
    pevent->OSEventPtr  = (void *)0;                       /* No task owning the mutex                 */

    pevent->OSEventName = (INT8U *)(void *)"?";

    OS_EventWaitListInit(pevent);
   *perr = 0u;
    return (pevent);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                          DELETE A MUTEX
*
* Description: This function deletes a mutual exclusion semaphore and readies all tasks pending on the it.
*
* Arguments  : pevent        is a pointer to the event control block associated with the desired mutex.
*
*              opt           determines delete options as follows:
*                            opt == OS_DEL_NO_PEND   Delete mutex ONLY if no task pending
*                            opt == OS_DEL_ALWAYS    Deletes the mutex even if tasks are waiting.
*                                                    In this case, all the tasks pending will be readied.
*
*              perr          is a pointer to an error code that can contain one of the following values:
*                            OS_ERR_NONE             The call was successful and the mutex was deleted
*                            OS_ERR_DEL_ISR          If you attempted to delete the MUTEX from an ISR
*                            OS_ERR_INVALID_OPT      An invalid option was specified
*                            OS_ERR_TASK_WAITING     One or more tasks were waiting on the mutex
*                            OS_ERR_EVENT_TYPE       If you didn't pass a pointer to a mutex
*                            OS_ERR_PEVENT_NULL      If 'pevent' is a NULL pointer.
*
* Returns    : pevent        upon error
*              (OS_EVENT *)0 if the mutex was successfully deleted.
*
* Note(s)    : 1) This function must be used with care.  Tasks that would normally expect the presence of
*                 the mutex MUST check the return code of OSMutexPend().
*
*              2) This call can potentially disable interrupts for a long time.  The interrupt disable
*                 time is directly proportional to the number of tasks waiting on the mutex.
*
*              3) Because ALL tasks pending on the mutex will be readied, you MUST be careful because the
*                 resource(s) will no longer be guarded by the mutex.
*
*              4) IMPORTANT: In the 'OS_DEL_ALWAYS' case, we assume that the owner of the Mutex (if there
*                            is one) is ready-to-run and is thus NOT pending on another kernel object or
*                            has delayed itself.  In other words, if a task owns the mutex being deleted,
*                            that task will be made ready-to-run at its original priority.
*********************************************************************************************************
*/


OS_EVENT  *OSMutexDel (OS_EVENT  *pevent,
                       INT8U      opt,
                       INT8U     *perr)
{
    BOOLEAN    tasks_waiting;
    OS_EVENT  *pevent_return;
    INT8U      pcp;                                        /* Priority ceiling priority                */
    INT8U      prio;
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;




#line 306 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_mutex.c"


    if (pevent == (OS_EVENT *)0) {                         /* Validate 'pevent'                        */
        *perr = 4u;
        return (pevent);
    }

    if (pevent->OSEventType != 4u) {      /* Validate event block type                */
        *perr = 1u;
        return (pevent);
    }
    if (OSIntNesting > 0u) {                               /* See if called from ISR ...               */
        *perr = 15u;                             /* ... can't DELETE from an ISR             */
        return (pevent);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pevent->OSEventGrp != 0u) {                        /* See if any tasks waiting on mutex        */
        tasks_waiting = 1u;                           /* Yes                                      */
    } else {
        tasks_waiting = 0u;                          /* No                                       */
    }
    switch (opt) {
        case 0u:                               /* DELETE MUTEX ONLY IF NO TASK WAITING --- */
             if (tasks_waiting == 0u) {

                 pevent->OSEventName   = (INT8U *)(void *)"?";

                 pcp                   = (INT8U)(pevent->OSEventCnt >> 8u);
                 if (pcp != 0xFFu) {
                     OSTCBPrioTbl[pcp] = (OS_TCB *)0;      /* Free up the PCP                          */
                 }
                 pevent->OSEventType   = 0u;
                 pevent->OSEventPtr    = OSEventFreeList;  /* Return Event Control Block to free list  */
                 pevent->OSEventCnt    = 0u;
                 OSEventFreeList       = pevent;
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                 = 0u;
                 pevent_return         = (OS_EVENT *)0;    /* Mutex has been deleted                   */
             } else {
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                 = 73u;
                 pevent_return         = pevent;
             }
             break;

        case 1u:                                /* ALWAYS DELETE THE MUTEX ---------------- */
             pcp  = (INT8U)(pevent->OSEventCnt >> 8u);                       /* Get PCP of mutex       */
             if (pcp != 0xFFu) {
                 prio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu)); /* Get owner's orig prio  */
                 ptcb = (OS_TCB *)pevent->OSEventPtr;
                 if (ptcb != (OS_TCB *)0) {                /* See if any task owns the mutex           */
                     if (ptcb->OSTCBPrio == pcp) {         /* See if original prio was changed         */
                         OSMutex_RdyAtPrio(ptcb, prio);    /* Yes, Restore the task's original prio    */
                     }
                 }
             }
             while (pevent->OSEventGrp != 0u) {            /* Ready ALL tasks waiting for mutex        */
                 (void)OS_EventTaskRdy(pevent, (void *)0, 0x10u, 0u);
             }

             pevent->OSEventName   = (INT8U *)(void *)"?";

             pcp                   = (INT8U)(pevent->OSEventCnt >> 8u);
             if (pcp != 0xFFu) {
                 OSTCBPrioTbl[pcp] = (OS_TCB *)0;          /* Free up the PCP                          */
             }
             pevent->OSEventType   = 0u;
             pevent->OSEventPtr    = OSEventFreeList;      /* Return Event Control Block to free list  */
             pevent->OSEventCnt    = 0u;
             OSEventFreeList       = pevent;               /* Get next free event control block        */
             {OS_CPU_SR_Restore(cpu_sr);};
             if (tasks_waiting == 1u) {               /* Reschedule only if task(s) were waiting  */
                 OS_Sched();                               /* Find highest priority task ready to run  */
             }
             *perr         = 0u;
             pevent_return = (OS_EVENT *)0;                /* Mutex has been deleted                   */
             break;

        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             *perr         = 7u;
             pevent_return = pevent;
             break;
    }
    return (pevent_return);
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                  PEND ON MUTUAL EXCLUSION SEMAPHORE
*
* Description: This function waits for a mutual exclusion semaphore.
*
* Arguments  : pevent        is a pointer to the event control block associated with the desired
*                            mutex.
*
*              timeout       is an optional timeout period (in clock ticks).  If non-zero, your task will
*                            wait for the resource up to the amount of time specified by this argument.
*                            If you specify 0, however, your task will wait forever at the specified
*                            mutex or, until the resource becomes available.
*
*              perr          is a pointer to where an error message will be deposited.  Possible error
*                            messages are:
*                               OS_ERR_NONE        The call was successful and your task owns the mutex
*                               OS_ERR_TIMEOUT     The mutex was not available within the specified 'timeout'.
*                               OS_ERR_PEND_ABORT  The wait on the mutex was aborted.
*                               OS_ERR_EVENT_TYPE  If you didn't pass a pointer to a mutex
*                               OS_ERR_PEVENT_NULL 'pevent' is a NULL pointer
*                               OS_ERR_PEND_ISR    If you called this function from an ISR and the result
*                                                  would lead to a suspension.
*                               OS_ERR_PCP_LOWER   If the priority of the task that owns the Mutex is
*                                                  HIGHER (i.e. a lower number) than the PCP.  This error
*                                                  indicates that you did not set the PCP higher (lower
*                                                  number) than ALL the tasks that compete for the Mutex.
*                                                  Unfortunately, this is something that could not be
*                                                  detected when the Mutex is created because we don't know
*                                                  what tasks will be using the Mutex.
*                               OS_ERR_PEND_LOCKED If you called this function when the scheduler is locked
*
* Returns    : none
*
* Note(s)    : 1) The task that owns the Mutex MUST NOT pend on any other event while it owns the mutex.
*
*              2) You MUST NOT change the priority of the task that owns the mutex
*********************************************************************************************************
*/

void  OSMutexPend (OS_EVENT  *pevent,
                   INT32U     timeout,
                   INT8U     *perr)
{
    INT8U      pcp;                                        /* Priority Ceiling Priority (PCP)          */
    INT8U      mprio;                                      /* Mutex owner priority                     */
    BOOLEAN    rdy;                                        /* Flag indicating task was ready           */
    OS_TCB    *ptcb;
    OS_EVENT  *pevent2;
    INT8U      y;

    OS_CPU_SR  cpu_sr = 0u;




#line 457 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_mutex.c"


    if (pevent == (OS_EVENT *)0) {                         /* Validate 'pevent'                        */
        *perr = 4u;
        return;
    }

    if (pevent->OSEventType != 4u) {      /* Validate event block type                */
        *perr = 1u;
        return;
    }
    if (OSIntNesting > 0u) {                               /* See if called from ISR ...               */
        *perr = 2u;                           /* ... can't PEND from an ISR               */
        return;
    }
    if (OSLockNesting > 0u) {                              /* See if called with scheduler locked ...  */
        *perr = 13u;                        /* ... can't PEND when locked               */
        return;
    }
/*$PAGE*/
    {cpu_sr = OS_CPU_SR_Save();};
    pcp = (INT8U)(pevent->OSEventCnt >> 8u);               /* Get PCP from mutex                       */
                                                           /* Is Mutex available?                      */
    if ((INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu)) == ((INT16U)0x00FFu)) {
        pevent->OSEventCnt &= ((INT16U)0xFF00u);       /* Yes, Acquire the resource                */
        pevent->OSEventCnt |= OSTCBCur->OSTCBPrio;         /*      Save priority of owning task        */
        pevent->OSEventPtr  = (void *)OSTCBCur;            /*      Point to owning task's OS_TCB       */
        if ((pcp != 0xFFu) &&
            (OSTCBCur->OSTCBPrio <= pcp)) {                /*      PCP 'must' have a SMALLER prio ...  */
             {OS_CPU_SR_Restore(cpu_sr);};                           /*      ... than current task!              */
            *perr = 120u;
        } else {
             {OS_CPU_SR_Restore(cpu_sr);};
            *perr = 0u;
        }
        return;
    }
    if (pcp != 0xFFu) {
        mprio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu)); /*  Get priority of mutex owner   */
        ptcb  = (OS_TCB *)(pevent->OSEventPtr);                   /*     Point to TCB of mutex owner   */
        if (ptcb->OSTCBPrio > pcp) {                              /*     Need to promote prio of owner?*/
            if (mprio > OSTCBCur->OSTCBPrio) {
                y = ptcb->OSTCBY;
                if ((OSRdyTbl[y] & ptcb->OSTCBBitX) != 0u) {      /*     See if mutex owner is ready   */
                    OSRdyTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;     /*     Yes, Remove owner from Rdy ...*/
                    if (OSRdyTbl[y] == 0u) {                      /*          ... list at current prio */
                        OSRdyGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
                    }
                    rdy = 1u;
                } else {
                    pevent2 = ptcb->OSTCBEventPtr;
                    if (pevent2 != (OS_EVENT *)0) {               /* Remove from event wait list       */
                        y = ptcb->OSTCBY;
                        pevent2->OSEventTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;
                        if (pevent2->OSEventTbl[y] == 0u) {
                            pevent2->OSEventGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
                        }
                    }
                    rdy = 0u;                        /* No                                       */
                }
                ptcb->OSTCBPrio = pcp;                     /* Change owner task prio to PCP            */

                ptcb->OSTCBY    = (INT8U)( ptcb->OSTCBPrio >> 3u);
                ptcb->OSTCBX    = (INT8U)( ptcb->OSTCBPrio & 0x07u);




                ptcb->OSTCBBitY = (OS_PRIO)(1uL << ptcb->OSTCBY);
                ptcb->OSTCBBitX = (OS_PRIO)(1uL << ptcb->OSTCBX);

                if (rdy == 1u) {                      /* If task was ready at owner's priority ...*/
                    OSRdyGrp               |= ptcb->OSTCBBitY; /* ... make it ready at new priority.   */
                    OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
                } else {
                    pevent2 = ptcb->OSTCBEventPtr;
                    if (pevent2 != (OS_EVENT *)0) {        /* Add to event wait list                   */
                        pevent2->OSEventGrp               |= ptcb->OSTCBBitY;
                        pevent2->OSEventTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
                    }
                }
                OSTCBPrioTbl[pcp] = ptcb;
            }
        }
    }
    OSTCBCur->OSTCBStat     |= 0x10u;         /* Mutex not available, pend current task        */
    OSTCBCur->OSTCBStatPend  = 0u;
    OSTCBCur->OSTCBDly       = timeout;               /* Store timeout in current task's TCB           */
    OS_EventTaskWait(pevent);                         /* Suspend task until event or timeout occurs    */
    {OS_CPU_SR_Restore(cpu_sr);};
    OS_Sched();                                       /* Find next highest priority task ready         */
    {cpu_sr = OS_CPU_SR_Save();};
    switch (OSTCBCur->OSTCBStatPend) {                /* See if we timed-out or aborted                */
        case 0u:
             *perr = 0u;
             break;

        case 2u:
             *perr = 14u;               /* Indicate that we aborted getting mutex        */
             break;

        case 1u:
        default:
             OS_EventTaskRemove(OSTCBCur, pevent);
             *perr = 10u;                  /* Indicate that we didn't get mutex within TO   */
             break;
    }
    OSTCBCur->OSTCBStat          =  0x00u;      /* Set   task  status to ready                   */
    OSTCBCur->OSTCBStatPend      =  0u;  /* Clear pend  status                            */
    OSTCBCur->OSTCBEventPtr      = (OS_EVENT  *)0;    /* Clear event pointers                          */

    OSTCBCur->OSTCBEventMultiPtr = (OS_EVENT **)0;

    {OS_CPU_SR_Restore(cpu_sr);};
}
/*$PAGE*/
/*
*********************************************************************************************************
*                                  POST TO A MUTUAL EXCLUSION SEMAPHORE
*
* Description: This function signals a mutual exclusion semaphore
*
* Arguments  : pevent              is a pointer to the event control block associated with the desired
*                                  mutex.
*
* Returns    : OS_ERR_NONE             The call was successful and the mutex was signaled.
*              OS_ERR_EVENT_TYPE       If you didn't pass a pointer to a mutex
*              OS_ERR_PEVENT_NULL      'pevent' is a NULL pointer
*              OS_ERR_POST_ISR         Attempted to post from an ISR (not valid for MUTEXes)
*              OS_ERR_NOT_MUTEX_OWNER  The task that did the post is NOT the owner of the MUTEX.
*              OS_ERR_PCP_LOWER        If the priority of the new task that owns the Mutex is
*                                      HIGHER (i.e. a lower number) than the PCP.  This error
*                                      indicates that you did not set the PCP higher (lower
*                                      number) than ALL the tasks that compete for the Mutex.
*                                      Unfortunately, this is something that could not be
*                                      detected when the Mutex is created because we don't know
*                                      what tasks will be using the Mutex.
*********************************************************************************************************
*/

INT8U  OSMutexPost (OS_EVENT *pevent)
{
    INT8U      pcp;                                   /* Priority ceiling priority                     */
    INT8U      prio;

    OS_CPU_SR  cpu_sr = 0u;




    if (OSIntNesting > 0u) {                          /* See if called from ISR ...                    */
        return (5u);                     /* ... can't POST mutex from an ISR              */
    }

    if (pevent == (OS_EVENT *)0) {                    /* Validate 'pevent'                             */
        return (4u);
    }

    if (pevent->OSEventType != 4u) { /* Validate event block type                     */
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    pcp  = (INT8U)(pevent->OSEventCnt >> 8u);         /* Get priority ceiling priority of mutex        */
    prio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu));  /* Get owner's original priority      */
    if (OSTCBCur != (OS_TCB *)pevent->OSEventPtr) {   /* See if posting task owns the MUTEX            */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (100u);
    }
    if (pcp != 0xFFu) {
        if (OSTCBCur->OSTCBPrio == pcp) {             /* Did we have to raise current task's priority? */
            OSMutex_RdyAtPrio(OSTCBCur, prio);        /* Restore the task's original priority          */
        }
        OSTCBPrioTbl[pcp] = ((OS_TCB *)1);          /* Reserve table entry                           */
    }
    if (pevent->OSEventGrp != 0u) {                   /* Any task waiting for the mutex?               */
                                                      /* Yes, Make HPT waiting for mutex ready         */
        prio                = OS_EventTaskRdy(pevent, (void *)0, 0x10u, 0u);
        pevent->OSEventCnt &= ((INT16U)0xFF00u);  /*      Save priority of mutex's new owner       */
        pevent->OSEventCnt |= prio;
        pevent->OSEventPtr  = OSTCBPrioTbl[prio];     /*      Link to new mutex owner's OS_TCB         */
        if ((pcp  != 0xFFu) &&
            (prio <= pcp)) {                          /*      PCP 'must' have a SMALLER prio ...       */
            {OS_CPU_SR_Restore(cpu_sr);};                       /*      ... than current task!                   */
            OS_Sched();                               /*      Find highest priority task ready to run  */
            return (120u);
        } else {
            {OS_CPU_SR_Restore(cpu_sr);};
            OS_Sched();                               /*      Find highest priority task ready to run  */
            return (0u);
        }
    }
    pevent->OSEventCnt |= ((INT16U)0x00FFu);         /* No,  Mutex is now available                   */
    pevent->OSEventPtr  = (void *)0;
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}
/*$PAGE*/
/*
*********************************************************************************************************
*                                     QUERY A MUTUAL EXCLUSION SEMAPHORE
*
* Description: This function obtains information about a mutex
*
* Arguments  : pevent          is a pointer to the event control block associated with the desired mutex
*
*              p_mutex_data    is a pointer to a structure that will contain information about the mutex
*
* Returns    : OS_ERR_NONE          The call was successful and the message was sent
*              OS_ERR_QUERY_ISR     If you called this function from an ISR
*              OS_ERR_PEVENT_NULL   If 'pevent'       is a NULL pointer
*              OS_ERR_PDATA_NULL    If 'p_mutex_data' is a NULL pointer
*              OS_ERR_EVENT_TYPE    If you are attempting to obtain data from a non mutex.
*********************************************************************************************************
*/


INT8U  OSMutexQuery (OS_EVENT       *pevent,
                     OS_MUTEX_DATA  *p_mutex_data)
{
    INT8U       i;
    OS_PRIO    *psrc;
    OS_PRIO    *pdest;

    OS_CPU_SR   cpu_sr = 0u;




    if (OSIntNesting > 0u) {                               /* See if called from ISR ...               */
        return (6u);                         /* ... can't QUERY mutex from an ISR        */
    }

    if (pevent == (OS_EVENT *)0) {                         /* Validate 'pevent'                        */
        return (4u);
    }
    if (p_mutex_data == (OS_MUTEX_DATA *)0) {              /* Validate 'p_mutex_data'                  */
        return (9u);
    }

    if (pevent->OSEventType != 4u) {      /* Validate event block type                */
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    p_mutex_data->OSMutexPCP  = (INT8U)(pevent->OSEventCnt >> 8u);
    p_mutex_data->OSOwnerPrio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu));
    if (p_mutex_data->OSOwnerPrio == 0xFFu) {
        p_mutex_data->OSValue = 1u;
    } else {
        p_mutex_data->OSValue = 0u;
    }
    p_mutex_data->OSEventGrp  = pevent->OSEventGrp;        /* Copy wait list                           */
    psrc                      = &pevent->OSEventTbl[0];
    pdest                     = &p_mutex_data->OSEventTbl[0];
    for (i = 0u; i < ((63u) / 8u + 1u); i++) {
        *pdest++ = *psrc++;
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                RESTORE A TASK BACK TO ITS ORIGINAL PRIORITY
*
* Description: This function makes a task ready at the specified priority
*
* Arguments  : ptcb            is a pointer to OS_TCB of the task to make ready
*
*              prio            is the desired priority
*
* Returns    : none
*********************************************************************************************************
*/

static  void  OSMutex_RdyAtPrio (OS_TCB  *ptcb,
                                 INT8U    prio)
{
    INT8U  y;


    y            =  ptcb->OSTCBY;                          /* Remove owner from ready list at 'pcp'    */
    OSRdyTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;
    if (OSRdyTbl[y] == 0u) {
        OSRdyGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
    }
    ptcb->OSTCBPrio         = prio;
    OSPrioCur               = prio;                        /* The current task is now at this priority */

    ptcb->OSTCBY            = (INT8U)((INT8U)(prio >> 3u) & 0x07u);
    ptcb->OSTCBX            = (INT8U)(prio & 0x07u);




    ptcb->OSTCBBitY         = (OS_PRIO)(1uL << ptcb->OSTCBY);
    ptcb->OSTCBBitX         = (OS_PRIO)(1uL << ptcb->OSTCBX);
    OSRdyGrp               |= ptcb->OSTCBBitY;             /* Make task ready at original priority     */
    OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
    OSTCBPrioTbl[prio]      = ptcb;
}


