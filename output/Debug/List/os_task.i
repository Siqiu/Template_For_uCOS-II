#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*                                            TASK MANAGEMENT
*
*                              (c) Copyright 1992-2010, Micrium, Weston, FL
*                                           All Rights Reserved
*
* File    : OS_TASK.C
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





#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"


/*$PAGE*/
/*
*********************************************************************************************************
*                                        CHANGE PRIORITY OF A TASK
*
* Description: This function allows you to change the priority of a task dynamically.  Note that the new
*              priority MUST be available.
*
* Arguments  : oldp     is the old priority
*
*              newp     is the new priority
*
* Returns    : OS_ERR_NONE            is the call was successful
*              OS_ERR_PRIO_INVALID    if the priority you specify is higher that the maximum allowed
*                                     (i.e. >= OS_LOWEST_PRIO)
*              OS_ERR_PRIO_EXIST      if the new priority already exist.
*              OS_ERR_PRIO            there is no task with the specified OLD priority (i.e. the OLD task does
*                                     not exist.
*              OS_ERR_TASK_NOT_EXIST  if the task is assigned to a Mutex PIP.
*********************************************************************************************************
*/


INT8U  OSTaskChangePrio (INT8U  oldprio,
                         INT8U  newprio)
{

    OS_EVENT  *pevent;

    OS_EVENT **pevents;


    OS_TCB    *ptcb;
    INT8U      y_new;
    INT8U      x_new;
    INT8U      y_old;
    OS_PRIO    bity_new;
    OS_PRIO    bitx_new;
    OS_PRIO    bity_old;
    OS_PRIO    bitx_old;

    OS_CPU_SR  cpu_sr = 0u;                                 /* Storage for CPU status register         */



/*$PAGE*/

    if (oldprio >= 63u) {
        if (oldprio != 0xFFu) {
            return (42u);
        }
    }
    if (newprio >= 63u) {
        return (42u);
    }

    {cpu_sr = OS_CPU_SR_Save();};
    if (OSTCBPrioTbl[newprio] != (OS_TCB *)0) {             /* New priority must not already exist     */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (40u);
    }
    if (oldprio == 0xFFu) {                          /* See if changing self                    */
        oldprio = OSTCBCur->OSTCBPrio;                      /* Yes, get priority                       */
    }
    ptcb = OSTCBPrioTbl[oldprio];
    if (ptcb == (OS_TCB *)0) {                              /* Does task to change exist?              */
        {OS_CPU_SR_Restore(cpu_sr);};                                 /* No, can't change its priority!          */
        return (41u);
    }
    if (ptcb == ((OS_TCB *)1)) {                          /* Is task assigned to Mutex               */
        {OS_CPU_SR_Restore(cpu_sr);};                                 /* No, can't change its priority!          */
        return (67u);
    }

    y_new                 = (INT8U)(newprio >> 3u);         /* Yes, compute new TCB fields             */
    x_new                 = (INT8U)(newprio & 0x07u);




    bity_new              = (OS_PRIO)(1uL << y_new);
    bitx_new              = (OS_PRIO)(1uL << x_new);

    OSTCBPrioTbl[oldprio] = (OS_TCB *)0;                    /* Remove TCB from old priority            */
    OSTCBPrioTbl[newprio] =  ptcb;                          /* Place pointer to TCB @ new priority     */
    y_old                 =  ptcb->OSTCBY;
    bity_old              =  ptcb->OSTCBBitY;
    bitx_old              =  ptcb->OSTCBBitX;
    if ((OSRdyTbl[y_old] &   bitx_old) != 0u) {             /* If task is ready make it not            */
         OSRdyTbl[y_old] &= (OS_PRIO)~bitx_old;
         if (OSRdyTbl[y_old] == 0u) {
             OSRdyGrp &= (OS_PRIO)~bity_old;
         }
         OSRdyGrp        |= bity_new;                       /* Make new priority ready to run          */
         OSRdyTbl[y_new] |= bitx_new;
    }


    pevent = ptcb->OSTCBEventPtr;
    if (pevent != (OS_EVENT *)0) {
        pevent->OSEventTbl[y_old] &= (OS_PRIO)~bitx_old;    /* Remove old task prio from wait list     */
        if (pevent->OSEventTbl[y_old] == 0u) {
            pevent->OSEventGrp    &= (OS_PRIO)~bity_old;
        }
        pevent->OSEventGrp        |= bity_new;              /* Add    new task prio to   wait list     */
        pevent->OSEventTbl[y_new] |= bitx_new;
    }

    if (ptcb->OSTCBEventMultiPtr != (OS_EVENT **)0) {
        pevents =  ptcb->OSTCBEventMultiPtr;
        pevent  = *pevents;
        while (pevent != (OS_EVENT *)0) {
            pevent->OSEventTbl[y_old] &= (OS_PRIO)~bitx_old;   /* Remove old task prio from wait lists */
            if (pevent->OSEventTbl[y_old] == 0u) {
                pevent->OSEventGrp    &= (OS_PRIO)~bity_old;
            }
            pevent->OSEventGrp        |= bity_new;          /* Add    new task prio to   wait lists    */
            pevent->OSEventTbl[y_new] |= bitx_new;
            pevents++;
            pevent                     = *pevents;
        }
    }



    ptcb->OSTCBPrio = newprio;                              /* Set new task priority                   */
    ptcb->OSTCBY    = y_new;
    ptcb->OSTCBX    = x_new;
    ptcb->OSTCBBitY = bity_new;
    ptcb->OSTCBBitX = bitx_new;
    {OS_CPU_SR_Restore(cpu_sr);};
    if (OSRunning == 1u) {
        OS_Sched();                                         /* Find new highest priority task          */
    }
    return (0u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                            CREATE A TASK
*
* Description: This function is used to have uC/OS-II manage the execution of a task.  Tasks can either
*              be created prior to the start of multitasking or by a running task.  A task cannot be
*              created by an ISR.
*
* Arguments  : task     is a pointer to the task's code
*
*              p_arg    is a pointer to an optional data area which can be used to pass parameters to
*                       the task when the task first executes.  Where the task is concerned it thinks
*                       it was invoked and passed the argument 'p_arg' as follows:
*
*                           void Task (void *p_arg)
*                           {
*                               for (;;) {
*                                   Task code;
*                               }
*                           }
*
*              ptos     is a pointer to the task's top of stack.  If the configuration constant
*                       OS_STK_GROWTH is set to 1, the stack is assumed to grow downward (i.e. from high
*                       memory to low memory).  'pstk' will thus point to the highest (valid) memory
*                       location of the stack.  If OS_STK_GROWTH is set to 0, 'pstk' will point to the
*                       lowest memory location of the stack and the stack will grow with increasing
*                       memory locations.
*
*              prio     is the task's priority.  A unique priority MUST be assigned to each task and the
*                       lower the number, the higher the priority.
*
* Returns    : OS_ERR_NONE                      if the function was successful.
*              OS_ERR_PRIO_EXIST                if the task priority already exist
*                                               (each task MUST have a unique priority).
*              OS_ERR_PRIO_INVALID              if the priority you specify is higher that the maximum
*                                               allowed (i.e. >= OS_LOWEST_PRIO)
*              OS_ERR_TASK_CREATE_ISR           if you tried to create a task from an ISR.
*              OS_ERR_ILLEGAL_CREATE_RUN_TIME   if you tried to create a task after safety critical
*                                               operation started.
*********************************************************************************************************
*/


INT8U  OSTaskCreate (void   (*task)(void *p_arg),
                     void    *p_arg,
                     OS_STK  *ptos,
                     INT8U    prio)
{
    OS_STK     *psp;
    INT8U       err;

    OS_CPU_SR   cpu_sr = 0u;




#line 228 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"


    if (prio > 63u) {             /* Make sure priority is within allowable range           */
        return (42u);
    }

    {cpu_sr = OS_CPU_SR_Save();};
    if (OSIntNesting > 0u) {                 /* Make sure we don't create the task from within an ISR  */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (60u);
    }
    if (OSTCBPrioTbl[prio] == (OS_TCB *)0) { /* Make sure task doesn't already exist at this priority  */
        OSTCBPrioTbl[prio] = ((OS_TCB *)1);/* Reserve the priority to prevent others from doing ...  */
                                             /* ... the same thing until task is created.              */
        {OS_CPU_SR_Restore(cpu_sr);};
        psp = OSTaskStkInit(task, p_arg, ptos, 0u);             /* Initialize the task's stack         */
        err = OS_TCBInit(prio, psp, (OS_STK *)0, 0u, 0u, (void *)0, 0u);
        if (err == 0u) {
            if (OSRunning == 1u) {      /* Find highest priority task if multitasking has started */
                OS_Sched();
            }
        } else {
            {cpu_sr = OS_CPU_SR_Save();};
            OSTCBPrioTbl[prio] = (OS_TCB *)0;/* Make this priority available to others                 */
            {OS_CPU_SR_Restore(cpu_sr);};
        }
        return (err);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (40u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                     CREATE A TASK (Extended Version)
*
* Description: This function is used to have uC/OS-II manage the execution of a task.  Tasks can either
*              be created prior to the start of multitasking or by a running task.  A task cannot be
*              created by an ISR.  This function is similar to OSTaskCreate() except that it allows
*              additional information about a task to be specified.
*
* Arguments  : task      is a pointer to the task's code
*
*              p_arg     is a pointer to an optional data area which can be used to pass parameters to
*                        the task when the task first executes.  Where the task is concerned it thinks
*                        it was invoked and passed the argument 'p_arg' as follows:
*
*                            void Task (void *p_arg)
*                            {
*                                for (;;) {
*                                    Task code;
*                                }
*                            }
*
*              ptos      is a pointer to the task's top of stack.  If the configuration constant
*                        OS_STK_GROWTH is set to 1, the stack is assumed to grow downward (i.e. from high
*                        memory to low memory).  'ptos' will thus point to the highest (valid) memory
*                        location of the stack.  If OS_STK_GROWTH is set to 0, 'ptos' will point to the
*                        lowest memory location of the stack and the stack will grow with increasing
*                        memory locations.  'ptos' MUST point to a valid 'free' data item.
*
*              prio      is the task's priority.  A unique priority MUST be assigned to each task and the
*                        lower the number, the higher the priority.
*
*              id        is the task's ID (0..65535)
*
*              pbos      is a pointer to the task's bottom of stack.  If the configuration constant
*                        OS_STK_GROWTH is set to 1, the stack is assumed to grow downward (i.e. from high
*                        memory to low memory).  'pbos' will thus point to the LOWEST (valid) memory
*                        location of the stack.  If OS_STK_GROWTH is set to 0, 'pbos' will point to the
*                        HIGHEST memory location of the stack and the stack will grow with increasing
*                        memory locations.  'pbos' MUST point to a valid 'free' data item.
*
*              stk_size  is the size of the stack in number of elements.  If OS_STK is set to INT8U,
*                        'stk_size' corresponds to the number of bytes available.  If OS_STK is set to
*                        INT16U, 'stk_size' contains the number of 16-bit entries available.  Finally, if
*                        OS_STK is set to INT32U, 'stk_size' contains the number of 32-bit entries
*                        available on the stack.
*
*              pext      is a pointer to a user supplied memory location which is used as a TCB extension.
*                        For example, this user memory can hold the contents of floating-point registers
*                        during a context switch, the time each task takes to execute, the number of times
*                        the task has been switched-in, etc.
*
*              opt       contains additional information (or options) about the behavior of the task.  The
*                        LOWER 8-bits are reserved by uC/OS-II while the upper 8 bits can be application
*                        specific.  See OS_TASK_OPT_??? in uCOS-II.H.  Current choices are:
*
*                        OS_TASK_OPT_STK_CHK      Stack checking to be allowed for the task
*                        OS_TASK_OPT_STK_CLR      Clear the stack when the task is created
*                        OS_TASK_OPT_SAVE_FP      If the CPU has floating-point registers, save them
*                                                 during a context switch.
*
* Returns    : OS_ERR_NONE                      if the function was successful.
*              OS_ERR_PRIO_EXIST                if the task priority already exist
*                                               (each task MUST have a unique priority).
*              OS_ERR_PRIO_INVALID              if the priority you specify is higher that the maximum
*                                               allowed (i.e. > OS_LOWEST_PRIO)
*              OS_ERR_TASK_CREATE_ISR           if you tried to create a task from an ISR.
*              OS_ERR_ILLEGAL_CREATE_RUN_TIME   if you tried to create a task after safety critical
*                                               operation started.
*********************************************************************************************************
*/
/*$PAGE*/

INT8U  OSTaskCreateExt (void   (*task)(void *p_arg),
                        void    *p_arg,
                        OS_STK  *ptos,
                        INT8U    prio,
                        INT16U   id,
                        OS_STK  *pbos,
                        INT32U   stk_size,
                        void    *pext,
                        INT16U   opt)
{
    OS_STK     *psp;
    INT8U       err;

    OS_CPU_SR   cpu_sr = 0u;




#line 358 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"


    if (prio > 63u) {             /* Make sure priority is within allowable range           */
        return (42u);
    }

    {cpu_sr = OS_CPU_SR_Save();};
    if (OSIntNesting > 0u) {                 /* Make sure we don't create the task from within an ISR  */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (60u);
    }
    if (OSTCBPrioTbl[prio] == (OS_TCB *)0) { /* Make sure task doesn't already exist at this priority  */
        OSTCBPrioTbl[prio] = ((OS_TCB *)1);/* Reserve the priority to prevent others from doing ...  */
                                             /* ... the same thing until task is created.              */
        {OS_CPU_SR_Restore(cpu_sr);};


        OS_TaskStkClr(pbos, stk_size, opt);                    /* Clear the task stack (if needed)     */


        psp = OSTaskStkInit(task, p_arg, ptos, opt);           /* Initialize the task's stack          */
        err = OS_TCBInit(prio, psp, pbos, id, stk_size, pext, opt);
        if (err == 0u) {
            if (OSRunning == 1u) {                        /* Find HPT if multitasking has started */
                OS_Sched();
            }
        } else {
            {cpu_sr = OS_CPU_SR_Save();};
            OSTCBPrioTbl[prio] = (OS_TCB *)0;                  /* Make this priority avail. to others  */
            {OS_CPU_SR_Restore(cpu_sr);};
        }
        return (err);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (40u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                            DELETE A TASK
*
* Description: This function allows you to delete a task.  The calling task can delete itself by
*              its own priority number.  The deleted task is returned to the dormant state and can be
*              re-activated by creating the deleted task again.
*
* Arguments  : prio    is the priority of the task to delete.  Note that you can explicitely delete
*                      the current task without knowing its priority level by setting 'prio' to
*                      OS_PRIO_SELF.
*
* Returns    : OS_ERR_NONE             if the call is successful
*              OS_ERR_TASK_DEL_IDLE    if you attempted to delete uC/OS-II's idle task
*              OS_ERR_PRIO_INVALID     if the priority you specify is higher that the maximum allowed
*                                      (i.e. >= OS_LOWEST_PRIO) or, you have not specified OS_PRIO_SELF.
*              OS_ERR_TASK_DEL         if the task is assigned to a Mutex PIP.
*              OS_ERR_TASK_NOT_EXIST   if the task you want to delete does not exist.
*              OS_ERR_TASK_DEL_ISR     if you tried to delete a task from an ISR
*
* Notes      : 1) To reduce interrupt latency, OSTaskDel() 'disables' the task:
*                    a) by making it not ready
*                    b) by removing it from any wait lists
*                    c) by preventing OSTimeTick() from making the task ready to run.
*                 The task can then be 'unlinked' from the miscellaneous structures in uC/OS-II.
*              2) The function OS_Dummy() is called after OS_EXIT_CRITICAL() because, on most processors,
*                 the next instruction following the enable interrupt instruction is ignored.
*              3) An ISR cannot delete a task.
*              4) The lock nesting counter is incremented because, for a brief instant, if the current
*                 task is being deleted, the current task would not be able to be rescheduled because it
*                 is removed from the ready list.  Incrementing the nesting counter prevents another task
*                 from being schedule.  This means that an ISR would return to the current task which is
*                 being deleted.  The rest of the deletion would thus be able to be completed.
*********************************************************************************************************
*/


INT8U  OSTaskDel (INT8U prio)
{

    OS_FLAG_NODE *pnode;

    OS_TCB       *ptcb;

    OS_CPU_SR     cpu_sr = 0u;




    if (OSIntNesting > 0u) {                            /* See if trying to delete from ISR            */
        return (64u);
    }
    if (prio == (63u)) {                    /* Not allowed to delete idle task             */
        return (62u);
    }

    if (prio >= 63u) {                       /* Task priority valid ?                       */
        if (prio != 0xFFu) {
            return (42u);
        }
    }


/*$PAGE*/
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                         /* See if requesting to delete self            */
        prio = OSTCBCur->OSTCBPrio;                     /* Set priority to delete to current           */
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                          /* Task to delete must exist                   */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if (ptcb == ((OS_TCB *)1)) {                      /* Must not be assigned to Mutex               */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (61u);
    }

    OSRdyTbl[ptcb->OSTCBY] &= (OS_PRIO)~ptcb->OSTCBBitX;
    if (OSRdyTbl[ptcb->OSTCBY] == 0u) {                 /* Make task not ready                         */
        OSRdyGrp           &= (OS_PRIO)~ptcb->OSTCBBitY;
    }


    if (ptcb->OSTCBEventPtr != (OS_EVENT *)0) {
        OS_EventTaskRemove(ptcb, ptcb->OSTCBEventPtr);  /* Remove this task from any event   wait list */
    }

    if (ptcb->OSTCBEventMultiPtr != (OS_EVENT **)0) {   /* Remove this task from any events' wait lists*/
        OS_EventTaskRemoveMulti(ptcb, ptcb->OSTCBEventMultiPtr);
    }




    pnode = ptcb->OSTCBFlagNode;
    if (pnode != (OS_FLAG_NODE *)0) {                   /* If task is waiting on event flag            */
        OS_FlagUnlink(pnode);                           /* Remove from wait list                       */
    }


    ptcb->OSTCBDly      = 0u;                           /* Prevent OSTimeTick() from updating          */
    ptcb->OSTCBStat     = 0x00u;                  /* Prevent task from being resumed             */
    ptcb->OSTCBStatPend = 0u;
    if (OSLockNesting < 255u) {                         /* Make sure we don't context switch           */
        OSLockNesting++;
    }
    {OS_CPU_SR_Restore(cpu_sr);};                                 /* Enabling INT. ignores next instruc.         */
    OS_Dummy();                                         /* ... Dummy ensures that INTs will be         */
    {cpu_sr = OS_CPU_SR_Save();};                                /* ... disabled HERE!                          */
    if (OSLockNesting > 0u) {                           /* Remove context switch lock                  */
        OSLockNesting--;
    }
    OSTaskDelHook(ptcb);                                /* Call user defined hook                      */
    OSTaskCtr--;                                        /* One less task being managed                 */
    OSTCBPrioTbl[prio] = (OS_TCB *)0;                   /* Clear old priority entry                    */
    if (ptcb->OSTCBPrev == (OS_TCB *)0) {               /* Remove from TCB chain                       */
        ptcb->OSTCBNext->OSTCBPrev = (OS_TCB *)0;
        OSTCBList                  = ptcb->OSTCBNext;
    } else {
        ptcb->OSTCBPrev->OSTCBNext = ptcb->OSTCBNext;
        ptcb->OSTCBNext->OSTCBPrev = ptcb->OSTCBPrev;
    }
    ptcb->OSTCBNext     = OSTCBFreeList;                /* Return TCB to free TCB list                 */
    OSTCBFreeList       = ptcb;

    ptcb->OSTCBTaskName = (INT8U *)(void *)"?";

    {OS_CPU_SR_Restore(cpu_sr);};
    if (OSRunning == 1u) {
        OS_Sched();                                     /* Find new highest priority task              */
    }
    return (0u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                    REQUEST THAT A TASK DELETE ITSELF
*
* Description: This function is used to:
*                   a) notify a task to delete itself.
*                   b) to see if a task requested that the current task delete itself.
*              This function is a little tricky to understand.  Basically, you have a task that needs
*              to be deleted however, this task has resources that it has allocated (memory buffers,
*              semaphores, mailboxes, queues etc.).  The task cannot be deleted otherwise these
*              resources would not be freed.  The requesting task calls OSTaskDelReq() to indicate that
*              the task needs to be deleted.  Deleting of the task is however, deferred to the task to
*              be deleted.  For example, suppose that task #10 needs to be deleted.  The requesting task
*              example, task #5, would call OSTaskDelReq(10).  When task #10 gets to execute, it calls
*              this function by specifying OS_PRIO_SELF and monitors the returned value.  If the return
*              value is OS_ERR_TASK_DEL_REQ, another task requested a task delete.  Task #10 would look like
*              this:
*
*                   void Task(void *p_arg)
*                   {
*                       .
*                       .
*                       while (1) {
*                           OSTimeDly(1);
*                           if (OSTaskDelReq(OS_PRIO_SELF) == OS_ERR_TASK_DEL_REQ) {
*                               Release any owned resources;
*                               De-allocate any dynamic memory;
*                               OSTaskDel(OS_PRIO_SELF);
*                           }
*                       }
*                   }
*
* Arguments  : prio    is the priority of the task to request the delete from
*
* Returns    : OS_ERR_NONE            if the task exist and the request has been registered
*              OS_ERR_TASK_NOT_EXIST  if the task has been deleted.  This allows the caller to know whether
*                                     the request has been executed.
*              OS_ERR_TASK_DEL        if the task is assigned to a Mutex.
*              OS_ERR_TASK_DEL_IDLE   if you requested to delete uC/OS-II's idle task
*              OS_ERR_PRIO_INVALID    if the priority you specify is higher that the maximum allowed
*                                     (i.e. >= OS_LOWEST_PRIO) or, you have not specified OS_PRIO_SELF.
*              OS_ERR_TASK_DEL_REQ    if a task (possibly another task) requested that the running task be
*                                     deleted.
*********************************************************************************************************
*/
/*$PAGE*/

INT8U  OSTaskDelReq (INT8U prio)
{
    INT8U      stat;
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;




    if (prio == (63u)) {                            /* Not allowed to delete idle task     */
        return (62u);
    }

    if (prio >= 63u) {                               /* Task priority valid ?               */
        if (prio != 0xFFu) {
            return (42u);
        }
    }

    if (prio == 0xFFu) {                                 /* See if a task is requesting to ...  */
        {cpu_sr = OS_CPU_SR_Save();};                                    /* ... this task to delete itself      */
        stat = OSTCBCur->OSTCBDelReq;                           /* Return request status to caller     */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (stat);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                                  /* Task to delete must exist           */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);                         /* Task must already be deleted        */
    }
    if (ptcb == ((OS_TCB *)1)) {                              /* Must NOT be assigned to a Mutex     */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (61u);
    }
    ptcb->OSTCBDelReq = 63u;                    /* Set flag indicating task to be DEL. */
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                        GET THE NAME OF A TASK
*
* Description: This function is called to obtain the name of a task.
*
* Arguments  : prio      is the priority of the task that you want to obtain the name from.
*
*              pname     is a pointer to a pointer to an ASCII string that will receive the name of the task.
*
*              perr      is a pointer to an error code that can contain one of the following values:
*
*                        OS_ERR_NONE                if the requested task is resumed
*                        OS_ERR_TASK_NOT_EXIST      if the task has not been created or is assigned to a Mutex
*                        OS_ERR_PRIO_INVALID        if you specified an invalid priority:
*                                                   A higher value than the idle task or not OS_PRIO_SELF.
*                        OS_ERR_PNAME_NULL          You passed a NULL pointer for 'pname'
*                        OS_ERR_NAME_GET_ISR        You called this function from an ISR
*
*
* Returns    : The length of the string or 0 if the task does not exist.
*********************************************************************************************************
*/


INT8U  OSTaskNameGet (INT8U    prio,
                      INT8U  **pname,
                      INT8U   *perr)
{
    OS_TCB    *ptcb;
    INT8U      len;

    OS_CPU_SR  cpu_sr = 0u;




#line 664 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"


    if (prio > 63u) {                         /* Task priority valid ?                      */
        if (prio != 0xFFu) {
            *perr = 42u;                 /* No                                         */
            return (0u);
        }
    }
    if (pname == (INT8U **)0) {                          /* Is 'pname' a NULL pointer?                 */
        *perr = 12u;                       /* Yes                                        */
        return (0u);
    }

    if (OSIntNesting > 0u) {                              /* See if trying to call from an ISR          */
        *perr = 17u;
        return (0u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                          /* See if caller desires it's own name        */
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                           /* Does task exist?                           */
        {OS_CPU_SR_Restore(cpu_sr);};                              /* No                                         */
        *perr = 67u;
        return (0u);
    }
    if (ptcb == ((OS_TCB *)1)) {                       /* Task assigned to a Mutex?                  */
        {OS_CPU_SR_Restore(cpu_sr);};                              /* Yes                                        */
        *perr = 67u;
        return (0u);
    }
    *pname = ptcb->OSTCBTaskName;
    len    = OS_StrLen(*pname);
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr  = 0u;
    return (len);
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                        ASSIGN A NAME TO A TASK
*
* Description: This function is used to set the name of a task.
*
* Arguments  : prio      is the priority of the task that you want the assign a name to.
*
*              pname     is a pointer to an ASCII string that contains the name of the task.
*
*              perr       is a pointer to an error code that can contain one of the following values:
*
*                        OS_ERR_NONE                if the requested task is resumed
*                        OS_ERR_TASK_NOT_EXIST      if the task has not been created or is assigned to a Mutex
*                        OS_ERR_PNAME_NULL          You passed a NULL pointer for 'pname'
*                        OS_ERR_PRIO_INVALID        if you specified an invalid priority:
*                                                   A higher value than the idle task or not OS_PRIO_SELF.
*                        OS_ERR_NAME_SET_ISR        if you called this function from an ISR
*
* Returns    : None
*********************************************************************************************************
*/

void  OSTaskNameSet (INT8U   prio,
                     INT8U  *pname,
                     INT8U  *perr)
{
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;




#line 745 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"


    if (prio > 63u) {                     /* Task priority valid ?                          */
        if (prio != 0xFFu) {
            *perr = 42u;             /* No                                             */
            return;
        }
    }
    if (pname == (INT8U *)0) {                       /* Is 'pname' a NULL pointer?                     */
        *perr = 12u;                   /* Yes                                            */
        return;
    }

    if (OSIntNesting > 0u) {                         /* See if trying to call from an ISR              */
        *perr = 18u;
        return;
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                      /* See if caller desires to set it's own name     */
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                       /* Does task exist?                               */
        {OS_CPU_SR_Restore(cpu_sr);};                          /* No                                             */
        *perr = 67u;
        return;
    }
    if (ptcb == ((OS_TCB *)1)) {                   /* Task assigned to a Mutex?                      */
        {OS_CPU_SR_Restore(cpu_sr);};                          /* Yes                                            */
        *perr = 67u;
        return;
    }
    ptcb->OSTCBTaskName = pname;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr               = 0u;
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                        RESUME A SUSPENDED TASK
*
* Description: This function is called to resume a previously suspended task.  This is the only call that
*              will remove an explicit task suspension.
*
* Arguments  : prio     is the priority of the task to resume.
*
* Returns    : OS_ERR_NONE                if the requested task is resumed
*              OS_ERR_PRIO_INVALID        if the priority you specify is higher that the maximum allowed
*                                         (i.e. >= OS_LOWEST_PRIO)
*              OS_ERR_TASK_RESUME_PRIO    if the task to resume does not exist
*              OS_ERR_TASK_NOT_EXIST      if the task is assigned to a Mutex PIP
*              OS_ERR_TASK_NOT_SUSPENDED  if the task to resume has not been suspended
*********************************************************************************************************
*/


INT8U  OSTaskResume (INT8U prio)
{
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;





    if (prio >= 63u) {                             /* Make sure task priority is valid      */
        return (42u);
    }

    {cpu_sr = OS_CPU_SR_Save();};
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                                /* Task to suspend must exist            */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (70u);
    }
    if (ptcb == ((OS_TCB *)1)) {                            /* See if assigned to Mutex              */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if ((ptcb->OSTCBStat & 0x08u) != 0x00u) { /* Task must be suspended                */
        ptcb->OSTCBStat &= (INT8U)~(INT8U)0x08u;    /* Remove suspension                     */
        if (ptcb->OSTCBStat == 0x00u) {                 /* See if task is now ready              */
            if (ptcb->OSTCBDly == 0u) {
                OSRdyGrp               |= ptcb->OSTCBBitY;    /* Yes, Make task ready to run           */
                OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
                {OS_CPU_SR_Restore(cpu_sr);};
                if (OSRunning == 1u) {
                    OS_Sched();                               /* Find new highest priority task        */
                }
            } else {
                {OS_CPU_SR_Restore(cpu_sr);};
            }
        } else {                                              /* Must be pending on event              */
            {OS_CPU_SR_Restore(cpu_sr);};
        }
        return (0u);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (68u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                             STACK CHECKING
*
* Description: This function is called to check the amount of free memory left on the specified task's
*              stack.
*
* Arguments  : prio          is the task priority
*
*              p_stk_data    is a pointer to a data structure of type OS_STK_DATA.
*
* Returns    : OS_ERR_NONE            upon success
*              OS_ERR_PRIO_INVALID    if the priority you specify is higher that the maximum allowed
*                                     (i.e. > OS_LOWEST_PRIO) or, you have not specified OS_PRIO_SELF.
*              OS_ERR_TASK_NOT_EXIST  if the desired task has not been created or is assigned to a Mutex PIP
*              OS_ERR_TASK_OPT        if you did NOT specified OS_TASK_OPT_STK_CHK when the task was created
*              OS_ERR_PDATA_NULL      if 'p_stk_data' is a NULL pointer
*********************************************************************************************************
*/

INT8U  OSTaskStkChk (INT8U         prio,
                     OS_STK_DATA  *p_stk_data)
{
    OS_TCB    *ptcb;
    OS_STK    *pchk;
    INT32U     nfree;
    INT32U     size;

    OS_CPU_SR  cpu_sr = 0u;





    if (prio > 63u) {                       /* Make sure task priority is valid             */
        if (prio != 0xFFu) {
            return (42u);
        }
    }
    if (p_stk_data == (OS_STK_DATA *)0) {              /* Validate 'p_stk_data'                        */
        return (9u);
    }

    p_stk_data->OSFree = 0u;                           /* Assume failure, set to 0 size                */
    p_stk_data->OSUsed = 0u;
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                        /* See if check for SELF                        */
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                         /* Make sure task exist                         */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if (ptcb == ((OS_TCB *)1)) {
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if ((ptcb->OSTCBOpt & 0x0001u) == 0u) { /* Make sure stack checking option is set      */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (69u);
    }
    nfree = 0u;
    size  = ptcb->OSTCBStkSize;
    pchk  = ptcb->OSTCBStkBottom;
    {OS_CPU_SR_Restore(cpu_sr);};

    while (*pchk++ == (OS_STK)0) {                    /* Compute the number of zero entries on the stk */
        nfree++;
    }





    p_stk_data->OSFree = nfree;                       /* Store   number of free entries on the stk     */
    p_stk_data->OSUsed = size - nfree;                /* Compute number of entries used on the stk     */
    return (0u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                            SUSPEND A TASK
*
* Description: This function is called to suspend a task.  The task can be the calling task if the
*              priority passed to OSTaskSuspend() is the priority of the calling task or OS_PRIO_SELF.
*
* Arguments  : prio     is the priority of the task to suspend.  If you specify OS_PRIO_SELF, the
*                       calling task will suspend itself and rescheduling will occur.
*
* Returns    : OS_ERR_NONE               if the requested task is suspended
*              OS_ERR_TASK_SUSPEND_IDLE  if you attempted to suspend the idle task which is not allowed.
*              OS_ERR_PRIO_INVALID       if the priority you specify is higher that the maximum allowed
*                                        (i.e. >= OS_LOWEST_PRIO) or, you have not specified OS_PRIO_SELF.
*              OS_ERR_TASK_SUSPEND_PRIO  if the task to suspend does not exist
*              OS_ERR_TASK_NOT_EXITS     if the task is assigned to a Mutex PIP
*
* Note       : You should use this function with great care.  If you suspend a task that is waiting for
*              an event (i.e. a message, a semaphore, a queue ...) you will prevent this task from
*              running when the event arrives.
*********************************************************************************************************
*/


INT8U  OSTaskSuspend (INT8U prio)
{
    BOOLEAN    self;
    OS_TCB    *ptcb;
    INT8U      y;

    OS_CPU_SR  cpu_sr = 0u;





    if (prio == (63u)) {                            /* Not allowed to suspend idle task    */
        return (71u);
    }
    if (prio >= 63u) {                               /* Task priority valid ?               */
        if (prio != 0xFFu) {
            return (42u);
        }
    }

    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                                 /* See if suspend SELF                 */
        prio = OSTCBCur->OSTCBPrio;
        self = 1u;
    } else if (prio == OSTCBCur->OSTCBPrio) {                   /* See if suspending self              */
        self = 1u;
    } else {
        self = 0u;                                        /* No suspending another task          */
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                                  /* Task to suspend must exist          */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (72u);
    }
    if (ptcb == ((OS_TCB *)1)) {                              /* See if assigned to Mutex            */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    y            = ptcb->OSTCBY;
    OSRdyTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;                   /* Make task not ready                 */
    if (OSRdyTbl[y] == 0u) {
        OSRdyGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
    }
    ptcb->OSTCBStat |= 0x08u;                         /* Status of task is 'SUSPENDED'       */
    {OS_CPU_SR_Restore(cpu_sr);};
    if (self == 1u) {                                      /* Context switch only if SELF         */
        OS_Sched();                                             /* Find new highest priority task      */
    }
    return (0u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                            QUERY A TASK
*
* Description: This function is called to obtain a copy of the desired task's TCB.
*
* Arguments  : prio         is the priority of the task to obtain information from.
*
*              p_task_data  is a pointer to where the desired task's OS_TCB will be stored.
*
* Returns    : OS_ERR_NONE            if the requested task is suspended
*              OS_ERR_PRIO_INVALID    if the priority you specify is higher that the maximum allowed
*                                     (i.e. > OS_LOWEST_PRIO) or, you have not specified OS_PRIO_SELF.
*              OS_ERR_PRIO            if the desired task has not been created
*              OS_ERR_TASK_NOT_EXIST  if the task is assigned to a Mutex PIP
*              OS_ERR_PDATA_NULL      if 'p_task_data' is a NULL pointer
*********************************************************************************************************
*/


INT8U  OSTaskQuery (INT8U    prio,
                    OS_TCB  *p_task_data)
{
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;





    if (prio > 63u) {                 /* Task priority valid ?                              */
        if (prio != 0xFFu) {
            return (42u);
        }
    }
    if (p_task_data == (OS_TCB *)0) {            /* Validate 'p_task_data'                             */
        return (9u);
    }

    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                  /* See if suspend SELF                                */
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                   /* Task to query must exist                           */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (41u);
    }
    if (ptcb == ((OS_TCB *)1)) {               /* Task to query must not be assigned to a Mutex      */
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
                                                 /* Copy TCB into user storage area                    */
    OS_MemCopy((INT8U *)p_task_data, (INT8U *)ptcb, sizeof(OS_TCB));
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                 GET THE CURRENT VALUE OF A TASK REGISTER
*
* Description: This function is called to obtain the current value of a task register.  Task registers
*              are application specific and can be used to store task specific values such as 'error
*              numbers' (i.e. errno), statistics, etc.  Each task register can hold a 32-bit value.
*
* Arguments  : prio      is the priority of the task you want to get the task register from.  If you
*                        specify OS_PRIO_SELF then the task register of the current task will be obtained.
*
*              id        is the 'id' of the desired task register.  Note that the 'id' must be less
*                        than OS_TASK_REG_TBL_SIZE
*
*              perr      is a pointer to a variable that will hold an error code related to this call.
*
*                        OS_ERR_NONE            if the call was successful
*                        OS_ERR_PRIO_INVALID    if you specified an invalid priority
*                        OS_ERR_ID_INVALID      if the 'id' is not between 0 and OS_TASK_REG_TBL_SIZE-1
*
* Returns    : The current value of the task's register or 0 if an error is detected.
*
* Note(s)    : The maximum number of task variables is 254
*********************************************************************************************************
*/


INT32U  OSTaskRegGet (INT8U   prio,
                      INT8U   id,
                      INT8U  *perr)
{

    OS_CPU_SR  cpu_sr = 0u;

    INT32U     value;
    OS_TCB    *ptcb;



#line 1113 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"


    if (prio >= 63u) {
        if (prio != 0xFFu) {
            *perr = 42u;
            return (0u);
        }
    }
    if (id >= 1u) {
        *perr = 8u;
        return (0u);
    }

    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                  /* See if need to get register from current task      */
        ptcb = OSTCBCur;
    } else {
        ptcb = OSTCBPrioTbl[prio];
    }
    value = ptcb->OSTCBRegTbl[id];
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;
    return (value);
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                 SET THE CURRENT VALUE OF A TASK VARIABLE
*
* Description: This function is called to change the current value of a task register.  Task registers
*              are application specific and can be used to store task specific values such as 'error
*              numbers' (i.e. errno), statistics, etc.  Each task register can hold a 32-bit value.
*
* Arguments  : prio      is the priority of the task you want to set the task register for.  If you
*                        specify OS_PRIO_SELF then the task register of the current task will be obtained.
*
*              id        is the 'id' of the desired task register.  Note that the 'id' must be less
*                        than OS_TASK_REG_TBL_SIZE
*
*              value     is the desired value for the task register.
*
*              perr      is a pointer to a variable that will hold an error code related to this call.
*
*                        OS_ERR_NONE            if the call was successful
*                        OS_ERR_PRIO_INVALID    if you specified an invalid priority
*                        OS_ERR_ID_INVALID      if the 'id' is not between 0 and OS_TASK_REG_TBL_SIZE-1
*
* Returns    : The current value of the task's variable or 0 if an error is detected.
*
* Note(s)    : The maximum number of task variables is 254
*********************************************************************************************************
*/


void  OSTaskRegSet (INT8U    prio,
                    INT8U    id,
                    INT32U   value,
                    INT8U   *perr)
{

    OS_CPU_SR  cpu_sr = 0u;

    OS_TCB    *ptcb;


#line 1186 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"


    if (prio >= 63u) {
        if (prio != 0xFFu) {
            *perr = 42u;
            return;
        }
    }
    if (id >= 1u) {
        *perr = 8u;
        return;
    }

    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                  /* See if need to get register from current task      */
        ptcb = OSTCBCur;
    } else {
        ptcb = OSTCBPrioTbl[prio];
    }
    ptcb->OSTCBRegTbl[id] = value;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr                 = 0u;
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                              CATCH ACCIDENTAL TASK RETURN
*
* Description: This function is called if a task accidentally returns without deleting itself.  In other
*              words, a task should either be an infinite loop or delete itself if it's done.
*
* Arguments  : none
*
* Returns    : none
*
* Note(s)    : This function is INTERNAL to uC/OS-II and your application should not call it.
*********************************************************************************************************
*/

void  OS_TaskReturn (void)
{
    OSTaskReturnHook(OSTCBCur);                   /* Call hook to let user decide on what to do        */


    (void)OSTaskDel(0xFFu);                /* Delete task if it accidentally returns!           */





}

/*$PAGE*/
/*
*********************************************************************************************************
*                                        CLEAR TASK STACK
*
* Description: This function is used to clear the stack of a task (i.e. write all zeros)
*
* Arguments  : pbos     is a pointer to the task's bottom of stack.  If the configuration constant
*                       OS_STK_GROWTH is set to 1, the stack is assumed to grow downward (i.e. from high
*                       memory to low memory).  'pbos' will thus point to the lowest (valid) memory
*                       location of the stack.  If OS_STK_GROWTH is set to 0, 'pbos' will point to the
*                       highest memory location of the stack and the stack will grow with increasing
*                       memory locations.  'pbos' MUST point to a valid 'free' data item.
*
*              size     is the number of 'stack elements' to clear.
*
*              opt      contains additional information (or options) about the behavior of the task.  The
*                       LOWER 8-bits are reserved by uC/OS-II while the upper 8 bits can be application
*                       specific.  See OS_TASK_OPT_??? in uCOS-II.H.
*
* Returns    : none
*********************************************************************************************************
*/

void  OS_TaskStkClr (OS_STK  *pbos,
                     INT32U   size,
                     INT16U   opt)
{
    if ((opt & 0x0001u) != 0x0000u) {      /* See if stack checking has been enabled       */
        if ((opt & 0x0002u) != 0x0000u) {  /* See if stack needs to be cleared             */

            while (size > 0u) {                        /* Stack grows from HIGH to LOW memory          */
                size--;
                *pbos++ = (OS_STK)0;                   /* Clear from bottom of stack and up!           */
            }
#line 1281 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_task.c"
        }
    }
}

