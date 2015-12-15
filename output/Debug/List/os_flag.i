#line 1 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"
/*
*********************************************************************************************************
*                                                uC/OS-II
*                                          The Real-Time Kernel
*                                         EVENT FLAG  MANAGEMENT
*
*                              (c) Copyright 1992-2010, Micrium, Weston, FL
*                                           All Rights Reserved
*
* File    : OS_FLAG.C
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





#line 26 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"



/*
*********************************************************************************************************
*                                            LOCAL PROTOTYPES
*********************************************************************************************************
*/

static  void     OS_FlagBlock(OS_FLAG_GRP *pgrp, OS_FLAG_NODE *pnode, OS_FLAGS flags, INT8U wait_type, INT32U timeout);
static  BOOLEAN  OS_FlagTaskRdy(OS_FLAG_NODE *pnode, OS_FLAGS flags_rdy);

/*$PAGE*/
/*
*********************************************************************************************************
*                              CHECK THE STATUS OF FLAGS IN AN EVENT FLAG GROUP
*
* Description: This function is called to check the status of a combination of bits to be set or cleared
*              in an event flag group.  Your application can check for ANY bit to be set/cleared or ALL
*              bits to be set/cleared.
*
*              This call does not block if the desired flags are not present.
*
* Arguments  : pgrp          is a pointer to the desired event flag group.
*
*              flags         Is a bit pattern indicating which bit(s) (i.e. flags) you wish to check.
*                            The bits you want are specified by setting the corresponding bits in
*                            'flags'.  e.g. if your application wants to wait for bits 0 and 1 then
*                            'flags' would contain 0x03.
*
*              wait_type     specifies whether you want ALL bits to be set/cleared or ANY of the bits
*                            to be set/cleared.
*                            You can specify the following argument:
*
*                            OS_FLAG_WAIT_CLR_ALL   You will check ALL bits in 'flags' to be clear (0)
*                            OS_FLAG_WAIT_CLR_ANY   You will check ANY bit  in 'flags' to be clear (0)
*                            OS_FLAG_WAIT_SET_ALL   You will check ALL bits in 'flags' to be set   (1)
*                            OS_FLAG_WAIT_SET_ANY   You will check ANY bit  in 'flags' to be set   (1)
*
*                            NOTE: Add OS_FLAG_CONSUME if you want the event flag to be 'consumed' by
*                                  the call.  Example, to wait for any flag in a group AND then clear
*                                  the flags that are present, set 'wait_type' to:
*
*                                  OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME
*
*              perr          is a pointer to an error code and can be:
*                            OS_ERR_NONE               No error
*                            OS_ERR_EVENT_TYPE         You are not pointing to an event flag group
*                            OS_ERR_FLAG_WAIT_TYPE     You didn't specify a proper 'wait_type' argument.
*                            OS_ERR_FLAG_INVALID_PGRP  You passed a NULL pointer instead of the event flag
*                                                      group handle.
*                            OS_ERR_FLAG_NOT_RDY       The desired flags you are waiting for are not
*                                                      available.
*
* Returns    : The flags in the event flag group that made the task ready or, 0 if a timeout or an error
*              occurred.
*
* Called from: Task or ISR
*
* Note(s)    : 1) IMPORTANT, the behavior of this function has changed from PREVIOUS versions.  The
*                 function NOW returns the flags that were ready INSTEAD of the current state of the
*                 event flags.
*********************************************************************************************************
*/


OS_FLAGS  OSFlagAccept (OS_FLAG_GRP  *pgrp,
                        OS_FLAGS      flags,
                        INT8U         wait_type,
                        INT8U        *perr)
{
    OS_FLAGS      flags_rdy;
    INT8U         result;
    BOOLEAN       consume;

    OS_CPU_SR     cpu_sr = 0u;




#line 112 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    if (pgrp == (OS_FLAG_GRP *)0) {                        /* Validate 'pgrp'                          */
        *perr = 110u;
        return ((OS_FLAGS)0);
    }

    if (pgrp->OSFlagType != 5u) {          /* Validate event block type                */
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
    result = (INT8U)(wait_type & 0x80u);
    if (result != (INT8U)0) {                              /* See if we need to consume the flags      */
        wait_type &= ~0x80u;
        consume    = 1u;
    } else {
        consume    = 0u;
    }
/*$PAGE*/
    *perr = 0u;                                   /* Assume NO error until proven otherwise.  */
    {cpu_sr = OS_CPU_SR_Save();};
    switch (wait_type) {
        case 2u:                         /* See if all required flags are set        */
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);     /* Extract only the bits we want   */
             if (flags_rdy == flags) {                     /* Must match ALL the bits that we want     */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;     /* Clear ONLY the flags we wanted  */
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;

        case 3u:
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);     /* Extract only the bits we want   */
             if (flags_rdy != (OS_FLAGS)0) {               /* See if any flag set                      */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;     /* Clear ONLY the flags we got     */
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;


        case 0u:                         /* See if all required flags are cleared    */
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;    /* Extract only the bits we want     */
             if (flags_rdy == flags) {                     /* Must match ALL the bits that we want     */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags |= flags_rdy;       /* Set ONLY the flags that we wanted        */
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;

        case 1u:
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;   /* Extract only the bits we want      */
             if (flags_rdy != (OS_FLAGS)0) {               /* See if any flag cleared                  */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags |= flags_rdy;       /* Set ONLY the flags that we got           */
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;


        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             flags_rdy = (OS_FLAGS)0;
             *perr     = 111u;
             break;
    }
    return (flags_rdy);
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                           CREATE AN EVENT FLAG
*
* Description: This function is called to create an event flag group.
*
* Arguments  : flags         Contains the initial value to store in the event flag group.
*
*              perr          is a pointer to an error code which will be returned to your application:
*                               OS_ERR_NONE               if the call was successful.
*                               OS_ERR_CREATE_ISR         if you attempted to create an Event Flag from an
*                                                         ISR.
*                               OS_ERR_FLAG_GRP_DEPLETED  if there are no more event flag groups
*
* Returns    : A pointer to an event flag group or a NULL pointer if no more groups are available.
*
* Called from: Task ONLY
*********************************************************************************************************
*/

OS_FLAG_GRP  *OSFlagCreate (OS_FLAGS  flags,
                            INT8U    *perr)
{
    OS_FLAG_GRP *pgrp;

    OS_CPU_SR    cpu_sr = 0u;




#line 231 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"

#line 238 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"

    if (OSIntNesting > 0u) {                        /* See if called from ISR ...                      */
        *perr = 16u;                  /* ... can't CREATE from an ISR                    */
        return ((OS_FLAG_GRP *)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    pgrp = OSFlagFreeList;                          /* Get next free event flag                        */
    if (pgrp != (OS_FLAG_GRP *)0) {                 /* See if we have event flag groups available      */
                                                    /* Adjust free list                                */
        OSFlagFreeList       = (OS_FLAG_GRP *)OSFlagFreeList->OSFlagWaitList;
        pgrp->OSFlagType     = 5u;  /* Set to event flag group type                    */
        pgrp->OSFlagFlags    = flags;               /* Set to desired initial value                    */
        pgrp->OSFlagWaitList = (void *)0;           /* Clear list of tasks waiting on flags            */

        pgrp->OSFlagName     = (INT8U *)(void *)"?";

        {OS_CPU_SR_Restore(cpu_sr);};
        *perr                = 0u;
    } else {
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr                = 114u;
    }
    return (pgrp);                                  /* Return pointer to event flag group              */
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                     DELETE AN EVENT FLAG GROUP
*
* Description: This function deletes an event flag group and readies all tasks pending on the event flag
*              group.
*
* Arguments  : pgrp          is a pointer to the desired event flag group.
*
*              opt           determines delete options as follows:
*                            opt == OS_DEL_NO_PEND   Deletes the event flag group ONLY if no task pending
*                            opt == OS_DEL_ALWAYS    Deletes the event flag group even if tasks are
*                                                    waiting.  In this case, all the tasks pending will be
*                                                    readied.
*
*              perr          is a pointer to an error code that can contain one of the following values:
*                            OS_ERR_NONE               The call was successful and the event flag group was
*                                                      deleted
*                            OS_ERR_DEL_ISR            If you attempted to delete the event flag group from
*                                                      an ISR
*                            OS_ERR_FLAG_INVALID_PGRP  If 'pgrp' is a NULL pointer.
*                            OS_ERR_EVENT_TYPE         If you didn't pass a pointer to an event flag group
*                            OS_ERR_INVALID_OPT        An invalid option was specified
*                            OS_ERR_TASK_WAITING       One or more tasks were waiting on the event flag
*                                                      group.
*
* Returns    : pgrp          upon error
*              (OS_EVENT *)0 if the event flag group was successfully deleted.
*
* Note(s)    : 1) This function must be used with care.  Tasks that would normally expect the presence of
*                 the event flag group MUST check the return code of OSFlagAccept() and OSFlagPend().
*              2) This call can potentially disable interrupts for a long time.  The interrupt disable
*                 time is directly proportional to the number of tasks waiting on the event flag group.
*********************************************************************************************************
*/


OS_FLAG_GRP  *OSFlagDel (OS_FLAG_GRP  *pgrp,
                         INT8U         opt,
                         INT8U        *perr)
{
    BOOLEAN       tasks_waiting;
    OS_FLAG_NODE *pnode;
    OS_FLAG_GRP  *pgrp_return;

    OS_CPU_SR     cpu_sr = 0u;




#line 320 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    if (pgrp == (OS_FLAG_GRP *)0) {                        /* Validate 'pgrp'                          */
        *perr = 110u;
        return (pgrp);
    }

    if (OSIntNesting > 0u) {                               /* See if called from ISR ...               */
        *perr = 15u;                            /* ... can't DELETE from an ISR             */
        return (pgrp);
    }
    if (pgrp->OSFlagType != 5u) {          /* Validate event group type                */
        *perr = 1u;
        return (pgrp);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pgrp->OSFlagWaitList != (void *)0) {               /* See if any tasks waiting on event flags  */
        tasks_waiting = 1u;                           /* Yes                                      */
    } else {
        tasks_waiting = 0u;                          /* No                                       */
    }
    switch (opt) {
        case 0u:                               /* Delete group if no task waiting          */
             if (tasks_waiting == 0u) {

                 pgrp->OSFlagName     = (INT8U *)(void *)"?";

                 pgrp->OSFlagType     = 0u;
                 pgrp->OSFlagWaitList = (void *)OSFlagFreeList; /* Return group to free list           */
                 pgrp->OSFlagFlags    = (OS_FLAGS)0;
                 OSFlagFreeList       = pgrp;
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                = 0u;
                 pgrp_return          = (OS_FLAG_GRP *)0;  /* Event Flag Group has been deleted        */
             } else {
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                = 73u;
                 pgrp_return          = pgrp;
             }
             break;

        case 1u:                                /* Always delete the event flag group       */
             pnode = (OS_FLAG_NODE *)pgrp->OSFlagWaitList;
             while (pnode != (OS_FLAG_NODE *)0) {          /* Ready ALL tasks waiting for flags        */
                 (void)OS_FlagTaskRdy(pnode, (OS_FLAGS)0);
                 pnode = (OS_FLAG_NODE *)pnode->OSFlagNodeNext;
             }

             pgrp->OSFlagName     = (INT8U *)(void *)"?";

             pgrp->OSFlagType     = 0u;
             pgrp->OSFlagWaitList = (void *)OSFlagFreeList;/* Return group to free list                */
             pgrp->OSFlagFlags    = (OS_FLAGS)0;
             OSFlagFreeList       = pgrp;
             {OS_CPU_SR_Restore(cpu_sr);};
             if (tasks_waiting == 1u) {               /* Reschedule only if task(s) were waiting  */
                 OS_Sched();                               /* Find highest priority task ready to run  */
             }
             *perr = 0u;
             pgrp_return          = (OS_FLAG_GRP *)0;      /* Event Flag Group has been deleted        */
             break;

        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             *perr                = 7u;
             pgrp_return          = pgrp;
             break;
    }
    return (pgrp_return);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                 GET THE NAME OF AN EVENT FLAG GROUP
*
* Description: This function is used to obtain the name assigned to an event flag group
*
* Arguments  : pgrp      is a pointer to the event flag group.
*
*              pname     is pointer to a pointer to an ASCII string that will receive the name of the event flag
*                        group.
*
*              perr      is a pointer to an error code that can contain one of the following values:
*
*                        OS_ERR_NONE                if the requested task is resumed
*                        OS_ERR_EVENT_TYPE          if 'pevent' is not pointing to an event flag group
*                        OS_ERR_PNAME_NULL          You passed a NULL pointer for 'pname'
*                        OS_ERR_FLAG_INVALID_PGRP   if you passed a NULL pointer for 'pgrp'
*                        OS_ERR_NAME_GET_ISR        if you called this function from an ISR
*
* Returns    : The length of the string or 0 if the 'pgrp' is a NULL pointer.
*********************************************************************************************************
*/


INT8U  OSFlagNameGet (OS_FLAG_GRP   *pgrp,
                      INT8U        **pname,
                      INT8U         *perr)
{
    INT8U      len;

    OS_CPU_SR  cpu_sr = 0u;




#line 433 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    if (pgrp == (OS_FLAG_GRP *)0) {              /* Is 'pgrp' a NULL pointer?                          */
        *perr = 110u;
        return (0u);
    }
    if (pname == (INT8U **)0) {                   /* Is 'pname' a NULL pointer?                         */
        *perr = 12u;
        return (0u);
    }

    if (OSIntNesting > 0u) {                     /* See if trying to call from an ISR                  */
        *perr = 17u;
        return (0u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pgrp->OSFlagType != 5u) {
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr = 1u;
        return (0u);
    }
    *pname = pgrp->OSFlagName;
    len    = OS_StrLen(*pname);
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr  = 0u;
    return (len);
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                 ASSIGN A NAME TO AN EVENT FLAG GROUP
*
* Description: This function assigns a name to an event flag group.
*
* Arguments  : pgrp      is a pointer to the event flag group.
*
*              pname     is a pointer to an ASCII string that will be used as the name of the event flag
*                        group.
*
*              perr      is a pointer to an error code that can contain one of the following values:
*
*                        OS_ERR_NONE                if the requested task is resumed
*                        OS_ERR_EVENT_TYPE          if 'pevent' is not pointing to an event flag group
*                        OS_ERR_PNAME_NULL          You passed a NULL pointer for 'pname'
*                        OS_ERR_FLAG_INVALID_PGRP   if you passed a NULL pointer for 'pgrp'
*                        OS_ERR_NAME_SET_ISR        if you called this function from an ISR
*
* Returns    : None
*********************************************************************************************************
*/


void  OSFlagNameSet (OS_FLAG_GRP  *pgrp,
                     INT8U        *pname,
                     INT8U        *perr)
{

    OS_CPU_SR  cpu_sr = 0u;




#line 503 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    if (pgrp == (OS_FLAG_GRP *)0) {              /* Is 'pgrp' a NULL pointer?                          */
        *perr = 110u;
        return;
    }
    if (pname == (INT8U *)0) {                   /* Is 'pname' a NULL pointer?                         */
        *perr = 12u;
        return;
    }

    if (OSIntNesting > 0u) {                     /* See if trying to call from an ISR                  */
        *perr = 18u;
        return;
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pgrp->OSFlagType != 5u) {
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr = 1u;
        return;
    }
    pgrp->OSFlagName = pname;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr            = 0u;
    return;
}


/*$PAGE*/
/*
*********************************************************************************************************
*                                        WAIT ON AN EVENT FLAG GROUP
*
* Description: This function is called to wait for a combination of bits to be set in an event flag
*              group.  Your application can wait for ANY bit to be set or ALL bits to be set.
*
* Arguments  : pgrp          is a pointer to the desired event flag group.
*
*              flags         Is a bit pattern indicating which bit(s) (i.e. flags) you wish to wait for.
*                            The bits you want are specified by setting the corresponding bits in
*                            'flags'.  e.g. if your application wants to wait for bits 0 and 1 then
*                            'flags' would contain 0x03.
*
*              wait_type     specifies whether you want ALL bits to be set or ANY of the bits to be set.
*                            You can specify the following argument:
*
*                            OS_FLAG_WAIT_CLR_ALL   You will wait for ALL bits in 'mask' to be clear (0)
*                            OS_FLAG_WAIT_SET_ALL   You will wait for ALL bits in 'mask' to be set   (1)
*                            OS_FLAG_WAIT_CLR_ANY   You will wait for ANY bit  in 'mask' to be clear (0)
*                            OS_FLAG_WAIT_SET_ANY   You will wait for ANY bit  in 'mask' to be set   (1)
*
*                            NOTE: Add OS_FLAG_CONSUME if you want the event flag to be 'consumed' by
*                                  the call.  Example, to wait for any flag in a group AND then clear
*                                  the flags that are present, set 'wait_type' to:
*
*                                  OS_FLAG_WAIT_SET_ANY + OS_FLAG_CONSUME
*
*              timeout       is an optional timeout (in clock ticks) that your task will wait for the
*                            desired bit combination.  If you specify 0, however, your task will wait
*                            forever at the specified event flag group or, until a message arrives.
*
*              perr          is a pointer to an error code and can be:
*                            OS_ERR_NONE               The desired bits have been set within the specified
*                                                      'timeout'.
*                            OS_ERR_PEND_ISR           If you tried to PEND from an ISR
*                            OS_ERR_FLAG_INVALID_PGRP  If 'pgrp' is a NULL pointer.
*                            OS_ERR_EVENT_TYPE         You are not pointing to an event flag group
*                            OS_ERR_TIMEOUT            The bit(s) have not been set in the specified
*                                                      'timeout'.
*                            OS_ERR_PEND_ABORT         The wait on the flag was aborted.
*                            OS_ERR_FLAG_WAIT_TYPE     You didn't specify a proper 'wait_type' argument.
*
* Returns    : The flags in the event flag group that made the task ready or, 0 if a timeout or an error
*              occurred.
*
* Called from: Task ONLY
*
* Note(s)    : 1) IMPORTANT, the behavior of this function has changed from PREVIOUS versions.  The
*                 function NOW returns the flags that were ready INSTEAD of the current state of the
*                 event flags.
*********************************************************************************************************
*/

OS_FLAGS  OSFlagPend (OS_FLAG_GRP  *pgrp,
                      OS_FLAGS      flags,
                      INT8U         wait_type,
                      INT32U        timeout,
                      INT8U        *perr)
{
    OS_FLAG_NODE  node;
    OS_FLAGS      flags_rdy;
    INT8U         result;
    INT8U         pend_stat;
    BOOLEAN       consume;

    OS_CPU_SR     cpu_sr = 0u;




#line 609 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    if (pgrp == (OS_FLAG_GRP *)0) {                        /* Validate 'pgrp'                          */
        *perr = 110u;
        return ((OS_FLAGS)0);
    }

    if (OSIntNesting > 0u) {                               /* See if called from ISR ...               */
        *perr = 2u;                           /* ... can't PEND from an ISR               */
        return ((OS_FLAGS)0);
    }
    if (OSLockNesting > 0u) {                              /* See if called with scheduler locked ...  */
        *perr = 13u;                        /* ... can't PEND when locked               */
        return ((OS_FLAGS)0);
    }
    if (pgrp->OSFlagType != 5u) {          /* Validate event block type                */
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
    result = (INT8U)(wait_type & 0x80u);
    if (result != (INT8U)0) {                              /* See if we need to consume the flags      */
        wait_type &= (INT8U)~(INT8U)0x80u;
        consume    = 1u;
    } else {
        consume    = 0u;
    }
/*$PAGE*/
    {cpu_sr = OS_CPU_SR_Save();};
    switch (wait_type) {
        case 2u:                         /* See if all required flags are set        */
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);   /* Extract only the bits we want     */
             if (flags_rdy == flags) {                     /* Must match ALL the bits that we want     */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;   /* Clear ONLY the flags we wanted    */
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;      /* Save flags that were ready               */
                 {OS_CPU_SR_Restore(cpu_sr);};                       /* Yes, condition met, return to caller     */
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                      /* Block task until events occur or timeout */
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;

        case 3u:
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);    /* Extract only the bits we want    */
             if (flags_rdy != (OS_FLAGS)0) {               /* See if any flag set                      */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;    /* Clear ONLY the flags that we got */
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;      /* Save flags that were ready               */
                 {OS_CPU_SR_Restore(cpu_sr);};                       /* Yes, condition met, return to caller     */
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                      /* Block task until events occur or timeout */
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;


        case 0u:                         /* See if all required flags are cleared    */
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;    /* Extract only the bits we want     */
             if (flags_rdy == flags) {                     /* Must match ALL the bits that we want     */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags |= flags_rdy;       /* Set ONLY the flags that we wanted        */
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;      /* Save flags that were ready               */
                 {OS_CPU_SR_Restore(cpu_sr);};                       /* Yes, condition met, return to caller     */
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                      /* Block task until events occur or timeout */
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;

        case 1u:
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;   /* Extract only the bits we want      */
             if (flags_rdy != (OS_FLAGS)0) {               /* See if any flag cleared                  */
                 if (consume == 1u) {                 /* See if we need to consume the flags      */
                     pgrp->OSFlagFlags |= flags_rdy;       /* Set ONLY the flags that we got           */
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;      /* Save flags that were ready               */
                 {OS_CPU_SR_Restore(cpu_sr);};                       /* Yes, condition met, return to caller     */
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                      /* Block task until events occur or timeout */
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;


        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             flags_rdy = (OS_FLAGS)0;
             *perr      = 111u;
             return (flags_rdy);
    }
/*$PAGE*/
    OS_Sched();                                            /* Find next HPT ready to run               */
    {cpu_sr = OS_CPU_SR_Save();};
    if (OSTCBCur->OSTCBStatPend != 0u) {      /* Have we timed-out or aborted?            */
        pend_stat                = OSTCBCur->OSTCBStatPend;
        OSTCBCur->OSTCBStatPend  = 0u;
        OS_FlagUnlink(&node);
        OSTCBCur->OSTCBStat      = 0x00u;            /* Yes, make task ready-to-run              */
        {OS_CPU_SR_Restore(cpu_sr);};
        flags_rdy                = (OS_FLAGS)0;
        switch (pend_stat) {
            case 2u:
                 *perr = 14u;                /* Indicate that we aborted   waiting       */
                 break;

            case 1u:
            default:
                 *perr = 10u;                   /* Indicate that we timed-out waiting       */
                 break;
        }
        return (flags_rdy);
    }
    flags_rdy = OSTCBCur->OSTCBFlagsRdy;
    if (consume == 1u) {                              /* See if we need to consume the flags      */
        switch (wait_type) {
            case 2u:
            case 3u:                     /* Clear ONLY the flags we got              */
                 pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;
                 break;


            case 0u:
            case 1u:                     /* Set   ONLY the flags we got              */
                 pgrp->OSFlagFlags |=  flags_rdy;
                 break;

            default:
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr = 111u;
                 return ((OS_FLAGS)0);
        }
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;                                   /* Event(s) must have occurred              */
    return (flags_rdy);
}
/*$PAGE*/
/*
*********************************************************************************************************
*                               GET FLAGS WHO CAUSED TASK TO BECOME READY
*
* Description: This function is called to obtain the flags that caused the task to become ready to run.
*              In other words, this function allows you to tell "Who done it!".
*
* Arguments  : None
*
* Returns    : The flags that caused the task to be ready.
*
* Called from: Task ONLY
*********************************************************************************************************
*/

OS_FLAGS  OSFlagPendGetFlagsRdy (void)
{
    OS_FLAGS      flags;

    OS_CPU_SR     cpu_sr = 0u;




    {cpu_sr = OS_CPU_SR_Save();};
    flags = OSTCBCur->OSTCBFlagsRdy;
    {OS_CPU_SR_Restore(cpu_sr);};
    return (flags);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                         POST EVENT FLAG BIT(S)
*
* Description: This function is called to set or clear some bits in an event flag group.  The bits to
*              set or clear are specified by a 'bit mask'.
*
* Arguments  : pgrp          is a pointer to the desired event flag group.
*
*              flags         If 'opt' (see below) is OS_FLAG_SET, each bit that is set in 'flags' will
*                            set the corresponding bit in the event flag group.  e.g. to set bits 0, 4
*                            and 5 you would set 'flags' to:
*
*                                0x31     (note, bit 0 is least significant bit)
*
*                            If 'opt' (see below) is OS_FLAG_CLR, each bit that is set in 'flags' will
*                            CLEAR the corresponding bit in the event flag group.  e.g. to clear bits 0,
*                            4 and 5 you would specify 'flags' as:
*
*                                0x31     (note, bit 0 is least significant bit)
*
*              opt           indicates whether the flags will be:
*                                set     (OS_FLAG_SET) or
*                                cleared (OS_FLAG_CLR)
*
*              perr          is a pointer to an error code and can be:
*                            OS_ERR_NONE                The call was successfull
*                            OS_ERR_FLAG_INVALID_PGRP   You passed a NULL pointer
*                            OS_ERR_EVENT_TYPE          You are not pointing to an event flag group
*                            OS_ERR_FLAG_INVALID_OPT    You specified an invalid option
*
* Returns    : the new value of the event flags bits that are still set.
*
* Called From: Task or ISR
*
* WARNING(s) : 1) The execution time of this function depends on the number of tasks waiting on the event
*                 flag group.
*              2) The amount of time interrupts are DISABLED depends on the number of tasks waiting on
*                 the event flag group.
*********************************************************************************************************
*/
OS_FLAGS  OSFlagPost (OS_FLAG_GRP  *pgrp,
                      OS_FLAGS      flags,
                      INT8U         opt,
                      INT8U        *perr)
{
    OS_FLAG_NODE *pnode;
    BOOLEAN       sched;
    OS_FLAGS      flags_cur;
    OS_FLAGS      flags_rdy;
    BOOLEAN       rdy;

    OS_CPU_SR     cpu_sr = 0u;




#line 851 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    if (pgrp == (OS_FLAG_GRP *)0) {                  /* Validate 'pgrp'                                */
        *perr = 110u;
        return ((OS_FLAGS)0);
    }

    if (pgrp->OSFlagType != 5u) {    /* Make sure we are pointing to an event flag grp */
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
/*$PAGE*/
    {cpu_sr = OS_CPU_SR_Save();};
    switch (opt) {
        case 0u:
             pgrp->OSFlagFlags &= (OS_FLAGS)~flags;  /* Clear the flags specified in the group         */
             break;

        case 1u:
             pgrp->OSFlagFlags |=  flags;            /* Set   the flags specified in the group         */
             break;

        default:
             {OS_CPU_SR_Restore(cpu_sr);};                     /* INVALID option                                 */
             *perr = 113u;
             return ((OS_FLAGS)0);
    }
    sched = 0u;                                /* Indicate that we don't need rescheduling       */
    pnode = (OS_FLAG_NODE *)pgrp->OSFlagWaitList;
    while (pnode != (OS_FLAG_NODE *)0) {             /* Go through all tasks waiting on event flag(s)  */
        switch (pnode->OSFlagNodeWaitType) {
            case 2u:               /* See if all req. flags are set for current node */
                 flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & pnode->OSFlagNodeFlags);
                 if (flags_rdy == pnode->OSFlagNodeFlags) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);  /* Make task RTR, event(s) Rx'd          */
                     if (rdy == 1u) {
                         sched = 1u;                     /* When done we will reschedule          */
                     }
                 }
                 break;

            case 3u:               /* See if any flag set                            */
                 flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & pnode->OSFlagNodeFlags);
                 if (flags_rdy != (OS_FLAGS)0) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);  /* Make task RTR, event(s) Rx'd          */
                     if (rdy == 1u) {
                         sched = 1u;                     /* When done we will reschedule          */
                     }
                 }
                 break;


            case 0u:               /* See if all req. flags are set for current node */
                 flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & pnode->OSFlagNodeFlags;
                 if (flags_rdy == pnode->OSFlagNodeFlags) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);  /* Make task RTR, event(s) Rx'd          */
                     if (rdy == 1u) {
                         sched = 1u;                     /* When done we will reschedule          */
                     }
                 }
                 break;

            case 1u:               /* See if any flag set                            */
                 flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & pnode->OSFlagNodeFlags;
                 if (flags_rdy != (OS_FLAGS)0) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);  /* Make task RTR, event(s) Rx'd          */
                     if (rdy == 1u) {
                         sched = 1u;                     /* When done we will reschedule          */
                     }
                 }
                 break;

            default:
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr = 111u;
                 return ((OS_FLAGS)0);
        }
        pnode = (OS_FLAG_NODE *)pnode->OSFlagNodeNext; /* Point to next task waiting for event flag(s) */
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    if (sched == 1u) {
        OS_Sched();
    }
    {cpu_sr = OS_CPU_SR_Save();};
    flags_cur = pgrp->OSFlagFlags;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr     = 0u;
    return (flags_cur);
}
/*$PAGE*/
/*
*********************************************************************************************************
*                                           QUERY EVENT FLAG
*
* Description: This function is used to check the value of the event flag group.
*
* Arguments  : pgrp         is a pointer to the desired event flag group.
*
*              perr          is a pointer to an error code returned to the called:
*                            OS_ERR_NONE                The call was successfull
*                            OS_ERR_FLAG_INVALID_PGRP   You passed a NULL pointer
*                            OS_ERR_EVENT_TYPE          You are not pointing to an event flag group
*
* Returns    : The current value of the event flag group.
*
* Called From: Task or ISR
*********************************************************************************************************
*/


OS_FLAGS  OSFlagQuery (OS_FLAG_GRP  *pgrp,
                       INT8U        *perr)
{
    OS_FLAGS   flags;

    OS_CPU_SR  cpu_sr = 0u;




#line 977 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    if (pgrp == (OS_FLAG_GRP *)0) {               /* Validate 'pgrp'                                   */
        *perr = 110u;
        return ((OS_FLAGS)0);
    }

    if (pgrp->OSFlagType != 5u) { /* Validate event block type                         */
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    flags = pgrp->OSFlagFlags;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;
    return (flags);                               /* Return the current value of the event flags       */
}


/*$PAGE*/
/*
*********************************************************************************************************
*                         SUSPEND TASK UNTIL EVENT FLAG(s) RECEIVED OR TIMEOUT OCCURS
*
* Description: This function is internal to uC/OS-II and is used to put a task to sleep until the desired
*              event flag bit(s) are set.
*
* Arguments  : pgrp          is a pointer to the desired event flag group.
*
*              pnode         is a pointer to a structure which contains data about the task waiting for
*                            event flag bit(s) to be set.
*
*              flags         Is a bit pattern indicating which bit(s) (i.e. flags) you wish to check.
*                            The bits you want are specified by setting the corresponding bits in
*                            'flags'.  e.g. if your application wants to wait for bits 0 and 1 then
*                            'flags' would contain 0x03.
*
*              wait_type     specifies whether you want ALL bits to be set/cleared or ANY of the bits
*                            to be set/cleared.
*                            You can specify the following argument:
*
*                            OS_FLAG_WAIT_CLR_ALL   You will check ALL bits in 'mask' to be clear (0)
*                            OS_FLAG_WAIT_CLR_ANY   You will check ANY bit  in 'mask' to be clear (0)
*                            OS_FLAG_WAIT_SET_ALL   You will check ALL bits in 'mask' to be set   (1)
*                            OS_FLAG_WAIT_SET_ANY   You will check ANY bit  in 'mask' to be set   (1)
*
*              timeout       is the desired amount of time that the task will wait for the event flag
*                            bit(s) to be set.
*
* Returns    : none
*
* Called by  : OSFlagPend()  OS_FLAG.C
*
* Note(s)    : This function is INTERNAL to uC/OS-II and your application should not call it.
*********************************************************************************************************
*/

static  void  OS_FlagBlock (OS_FLAG_GRP  *pgrp,
                            OS_FLAG_NODE *pnode,
                            OS_FLAGS      flags,
                            INT8U         wait_type,
                            INT32U        timeout)
{
    OS_FLAG_NODE  *pnode_next;
    INT8U          y;


    OSTCBCur->OSTCBStat      |= 0x20u;
    OSTCBCur->OSTCBStatPend   = 0u;
    OSTCBCur->OSTCBDly        = timeout;              /* Store timeout in task's TCB                   */

    OSTCBCur->OSTCBFlagNode   = pnode;                /* TCB to link to node                           */

    pnode->OSFlagNodeFlags    = flags;                /* Save the flags that we need to wait for       */
    pnode->OSFlagNodeWaitType = wait_type;            /* Save the type of wait we are doing            */
    pnode->OSFlagNodeTCB      = (void *)OSTCBCur;     /* Link to task's TCB                            */
    pnode->OSFlagNodeNext     = pgrp->OSFlagWaitList; /* Add node at beginning of event flag wait list */
    pnode->OSFlagNodePrev     = (void *)0;
    pnode->OSFlagNodeFlagGrp  = (void *)pgrp;         /* Link to Event Flag Group                      */
    pnode_next                = (OS_FLAG_NODE *)pgrp->OSFlagWaitList;
    if (pnode_next != (void *)0) {                    /* Is this the first NODE to insert?             */
        pnode_next->OSFlagNodePrev = pnode;           /* No, link in doubly linked list                */
    }
    pgrp->OSFlagWaitList = (void *)pnode;

    y            =  OSTCBCur->OSTCBY;                 /* Suspend current task until flag(s) received   */
    OSRdyTbl[y] &= (OS_PRIO)~OSTCBCur->OSTCBBitX;
    if (OSRdyTbl[y] == 0x00u) {
        OSRdyGrp &= (OS_PRIO)~OSTCBCur->OSTCBBitY;
    }
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                    INITIALIZE THE EVENT FLAG MODULE
*
* Description: This function is called by uC/OS-II to initialize the event flag module.  Your application
*              MUST NOT call this function.  In other words, this function is internal to uC/OS-II.
*
* Arguments  : none
*
* Returns    : none
*
* WARNING    : You MUST NOT call this function from your code.  This is an INTERNAL function to uC/OS-II.
*********************************************************************************************************
*/

void  OS_FlagInit (void)
{
#line 1096 "E:\\work\\GitHub\\Template_For_uCOS-II\\Software\\uCOS-II\\core\\os_flag.c"


    INT16U        ix;
    INT16U        ix_next;
    OS_FLAG_GRP  *pgrp1;
    OS_FLAG_GRP  *pgrp2;


    OS_MemClr((INT8U *)&OSFlagTbl[0], sizeof(OSFlagTbl));           /* Clear the flag group table      */
    for (ix = 0u; ix < (5u - 1u); ix++) {                 /* Init. list of free EVENT FLAGS  */
        ix_next = ix + 1u;
        pgrp1 = &OSFlagTbl[ix];
        pgrp2 = &OSFlagTbl[ix_next];
        pgrp1->OSFlagType     = 0u;
        pgrp1->OSFlagWaitList = (void *)pgrp2;

        pgrp1->OSFlagName     = (INT8U *)(void *)"?";               /* Unknown name                    */

    }
    pgrp1                 = &OSFlagTbl[ix];
    pgrp1->OSFlagType     = 0u;
    pgrp1->OSFlagWaitList = (void *)0;

    pgrp1->OSFlagName     = (INT8U *)(void *)"?";                   /* Unknown name                    */

    OSFlagFreeList        = &OSFlagTbl[0];

}

/*$PAGE*/
/*
*********************************************************************************************************
*                              MAKE TASK READY-TO-RUN, EVENT(s) OCCURRED
*
* Description: This function is internal to uC/OS-II and is used to make a task ready-to-run because the
*              desired event flag bits have been set.
*
* Arguments  : pnode         is a pointer to a structure which contains data about the task waiting for
*                            event flag bit(s) to be set.
*
*              flags_rdy     contains the bit pattern of the event flags that cause the task to become
*                            ready-to-run.
*
* Returns    : OS_TRUE       If the task has been placed in the ready list and thus needs scheduling
*              OS_FALSE      The task is still not ready to run and thus scheduling is not necessary
*
* Called by  : OSFlagsPost() OS_FLAG.C
*
* Note(s)    : 1) This function assumes that interrupts are disabled.
*              2) This function is INTERNAL to uC/OS-II and your application should not call it.
*********************************************************************************************************
*/

static  BOOLEAN  OS_FlagTaskRdy (OS_FLAG_NODE *pnode,
                                 OS_FLAGS      flags_rdy)
{
    OS_TCB   *ptcb;
    BOOLEAN   sched;


    ptcb                 = (OS_TCB *)pnode->OSFlagNodeTCB; /* Point to TCB of waiting task             */
    ptcb->OSTCBDly       = 0u;
    ptcb->OSTCBFlagsRdy  = flags_rdy;
    ptcb->OSTCBStat     &= (INT8U)~(INT8U)0x20u;
    ptcb->OSTCBStatPend  = 0u;
    if (ptcb->OSTCBStat == 0x00u) {                  /* Task now ready?                          */
        OSRdyGrp               |= ptcb->OSTCBBitY;         /* Put task into ready list                 */
        OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
        sched                   = 1u;
    } else {
        sched                   = 0u;
    }
    OS_FlagUnlink(pnode);
    return (sched);
}

/*$PAGE*/
/*
*********************************************************************************************************
*                                  UNLINK EVENT FLAG NODE FROM WAITING LIST
*
* Description: This function is internal to uC/OS-II and is used to unlink an event flag node from a
*              list of tasks waiting for the event flag.
*
* Arguments  : pnode         is a pointer to a structure which contains data about the task waiting for
*                            event flag bit(s) to be set.
*
* Returns    : none
*
* Called by  : OS_FlagTaskRdy() OS_FLAG.C
*              OSFlagPend()     OS_FLAG.C
*              OSTaskDel()      OS_TASK.C
*
* Note(s)    : 1) This function assumes that interrupts are disabled.
*              2) This function is INTERNAL to uC/OS-II and your application should not call it.
*********************************************************************************************************
*/

void  OS_FlagUnlink (OS_FLAG_NODE *pnode)
{

    OS_TCB       *ptcb;

    OS_FLAG_GRP  *pgrp;
    OS_FLAG_NODE *pnode_prev;
    OS_FLAG_NODE *pnode_next;


    pnode_prev = (OS_FLAG_NODE *)pnode->OSFlagNodePrev;
    pnode_next = (OS_FLAG_NODE *)pnode->OSFlagNodeNext;
    if (pnode_prev == (OS_FLAG_NODE *)0) {                      /* Is it first node in wait list?      */
        pgrp                 = (OS_FLAG_GRP *)pnode->OSFlagNodeFlagGrp;
        pgrp->OSFlagWaitList = (void *)pnode_next;              /*      Update list for new 1st node   */
        if (pnode_next != (OS_FLAG_NODE *)0) {
            pnode_next->OSFlagNodePrev = (OS_FLAG_NODE *)0;     /*      Link new 1st node PREV to NULL */
        }
    } else {                                                    /* No,  A node somewhere in the list   */
        pnode_prev->OSFlagNodeNext = pnode_next;                /*      Link around the node to unlink */
        if (pnode_next != (OS_FLAG_NODE *)0) {                  /*      Was this the LAST node?        */
            pnode_next->OSFlagNodePrev = pnode_prev;            /*      No, Link around current node   */
        }
    }

    ptcb                = (OS_TCB *)pnode->OSFlagNodeTCB;
    ptcb->OSTCBFlagNode = (OS_FLAG_NODE *)0;

}
