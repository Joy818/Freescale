///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.20.2.14835/W32 for ARM      17/May/2018  19:45:45
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\workspace\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_GPIO.c
//    Command line =  
//        -f C:\Users\JoyC\AppData\Local\Temp\EW6A25.tmp
//        (D:\workspace\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_GPIO.c -D LPLD_K60 -D
//        USE_K60DZ10 -lCN
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\FLASH\List -lB
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\FLASH\List -o
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\FLASH\Obj
//        --no_unroll --no_inline --no_tbaa --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "D:\Program Files\IAR Systems\Embedded Workbench
//        8.0\arm\INC\c\DLib_Config_Normal.h" -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\app\ -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\CPU\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\common\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\LPLD\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\LPLD\HW\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\FatFs\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\FatFs\option\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\USB\common\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\USB\driver\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\USB\descriptor\
//        -I
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\..\..\..\lib\USB\class\
//        -Om -I "D:\Program Files\IAR Systems\Embedded Workbench
//        8.0\arm\CMSIS\Include\" -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        D:\workspace\LPLD_OSKinetis_V3\project\Overload3\iar\FLASH\List\HW_GPIO.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC GPIO_ISR
        PUBLIC LPLD_GPIO_DisableIrq
        PUBLIC LPLD_GPIO_EnableIrq
        PUBLIC LPLD_GPIO_Init
        PUBLIC LPLD_GPIO_Input
        PUBLIC LPLD_GPIO_Input_8b
        PUBLIC LPLD_GPIO_Input_b
        PUBLIC LPLD_GPIO_Output
        PUBLIC LPLD_GPIO_Output_8b
        PUBLIC LPLD_GPIO_Output_b
        PUBLIC LPLD_GPIO_Toggle
        PUBLIC LPLD_GPIO_Toggle_8b
        PUBLIC LPLD_GPIO_Toggle_b
        PUBLIC PORTA_IRQHandler
        PUBLIC PORTB_IRQHandler
        PUBLIC PORTC_IRQHandler
        PUBLIC PORTD_IRQHandler
        PUBLIC PORTE_IRQHandler

// D:\workspace\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_GPIO.c
//    1 /**
//    2  * @file HW_GPIO.c
//    3  * @version 3.03[By LPLD]
//    4  * @date 2014-2-10
//    5  * @brief GPIO底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn_Type)
__NVIC_EnableIRQ:
        MOVS     R1,R0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        AND      R0,R0,#0x1F
        LSL      R0,R2,R0
        LDR.N    R2,??DataTable9  ;; 0xe000e100
        LSRS     R1,R1,#+5
        STR      R0,[R2, R1, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn_Type)
__NVIC_DisableIRQ:
        MOVS     R1,R0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        AND      R0,R0,#0x1F
        LSL      R0,R2,R0
        LDR.N    R2,??DataTable9_1  ;; 0xe000e180
        LSRS     R1,R1,#+5
        STR      R0,[R2, R1, LSL #+2]
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "HW_GPIO.h"
//   24 
//   25 
//   26 //@@@@@@@@@@@@@

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 GPIO_ISR_CALLBACK GPIO_ISR[5];
GPIO_ISR:
        DS8 20
//   28 
//   29 /*
//   30  * LPLD_GPIO_Init
//   31  * GPIO@@@@@@@
//   32  * 
//   33  * @@:
//   34  *    gpio_init_structure--GPIO@@@@@@@
//   35  *                        @@@@@GPIO_InitTypeDef
//   36  *
//   37  * @@:
//   38  *    0--@@@@
//   39  *    1--@@@@
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 LPLD_GPIO_Init(GPIO_InitTypeDef gpio_init_structure)
//   42 {
LPLD_GPIO_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R7}
//   43   uint8 i;
//   44   PORT_Type *portx;
//   45   uint32 pcr = PORT_PCR_MUX(1)| gpio_init_structure.GPIO_PinControl; 
        MOV      R0,R2
        ORR      R0,R0,#0x100
//   46   GPIO_Type *ptx = gpio_init_structure.GPIO_PTx;
        LDR      R3,[SP, #+16]
//   47   uint32 pins = gpio_init_structure.GPIO_Pins;
//   48   uint8 dir = gpio_init_structure.GPIO_Dir;
        LDRB     R5,[SP, #+28]
//   49   uint8 output = gpio_init_structure.GPIO_Output;
        LDRB     R6,[SP, #+29]
//   50   GPIO_ISR_CALLBACK isr_func = gpio_init_structure.GPIO_Isr;
        LDR      R2,[SP, #+32]
//   51   
//   52   //@@@@
//   53   ASSERT( ptx <= PTE);                  //@@@@
//   54   ASSERT( dir <= 1 );                   //@@@@
//   55   ASSERT( output <= 1 );                //@@@@@@@@
//   56   
//   57   if(ptx == PTA)
        LDR.N    R4,??DataTable9_2  ;; 0x400ff000
        CMP      R3,R4
        BNE.N    ??LPLD_GPIO_Init_0
//   58   {
//   59     portx = PORTA;  
        LDR.N    R7,??DataTable9_3  ;; 0x40049000
//   60     i = 0;
        MOVS     R4,#+0
//   61   }
//   62   else if(ptx == PTB) 
//   63   {
//   64     portx = PORTB;
//   65     i = 1;
//   66   }
//   67   else if(ptx == PTC) 
//   68   {
//   69     portx = PORTC;
//   70     i = 2;
//   71   }
//   72   else if(ptx == PTD) 
//   73   {
//   74     portx = PORTD;
//   75     i = 3; 
//   76   }
//   77   else if(ptx == PTE) 
//   78   {
//   79     portx = PORTE;
//   80     i = 4;
//   81   }
//   82   else
//   83     return 0;
//   84   
//   85   //@@@@@@@
//   86   if(dir==DIR_OUTPUT)
??LPLD_GPIO_Init_1:
        CMP      R5,#+1
        LDR      R5,[R3, #+20]
        BNE.N    ??LPLD_GPIO_Init_2
//   87   {
//   88     ptx->PDDR |= pins;
        ORRS     R5,R1,R5
        STR      R5,[R3, #+20]
//   89     //@@@@@@
//   90     if(output==OUTPUT_H)
        CMP      R6,#+1
        BNE.N    ??LPLD_GPIO_Init_3
//   91     {
//   92       ptx->PSOR = pins; 
        STR      R1,[R3, #+4]
        B.N      ??LPLD_GPIO_Init_4
//   93     }
??LPLD_GPIO_Init_0:
        LDR.N    R4,??DataTable9_4  ;; 0x400ff040
        CMP      R3,R4
        BNE.N    ??LPLD_GPIO_Init_5
        LDR.N    R7,??DataTable9_5  ;; 0x4004a000
        MOVS     R4,#+1
        B.N      ??LPLD_GPIO_Init_1
??LPLD_GPIO_Init_5:
        LDR.N    R4,??DataTable9_6  ;; 0x400ff080
        CMP      R3,R4
        BNE.N    ??LPLD_GPIO_Init_6
        LDR.N    R7,??DataTable9_7  ;; 0x4004b000
        MOVS     R4,#+2
        B.N      ??LPLD_GPIO_Init_1
??LPLD_GPIO_Init_6:
        LDR.N    R4,??DataTable9_8  ;; 0x400ff0c0
        CMP      R3,R4
        BNE.N    ??LPLD_GPIO_Init_7
        LDR.N    R7,??DataTable9_9  ;; 0x4004c000
        MOVS     R4,#+3
        B.N      ??LPLD_GPIO_Init_1
??LPLD_GPIO_Init_7:
        LDR.N    R4,??DataTable9_10  ;; 0x400ff100
        CMP      R3,R4
        BNE.N    ??LPLD_GPIO_Init_8
        LDR.N    R7,??DataTable9_11  ;; 0x4004d000
        MOVS     R4,#+4
        B.N      ??LPLD_GPIO_Init_1
??LPLD_GPIO_Init_8:
        MOVS     R0,#+0
        B.N      ??LPLD_GPIO_Init_9
//   94     else
//   95     {
//   96       ptx->PCOR = pins;
??LPLD_GPIO_Init_3:
        STR      R1,[R3, #+8]
        B.N      ??LPLD_GPIO_Init_4
//   97     }
//   98   }
//   99   else
//  100   { 
//  101     ptx->PDDR &= ~(pins);
??LPLD_GPIO_Init_2:
        BICS     R5,R5,R1
        STR      R5,[R3, #+20]
//  102   }
//  103   
//  104   //@@@@@@@@@@@@
//  105   for(uint8 i=0; i<32; i++)
??LPLD_GPIO_Init_4:
        MOVS     R3,#+0
        B.N      ??LPLD_GPIO_Init_10
//  106   {
//  107     if(pins&(1ul<<i))
??LPLD_GPIO_Init_11:
        MOV      R5,R1
        LSRS     R5,R5,R3
        LSLS     R5,R5,#+31
        BPL.N    ??LPLD_GPIO_Init_12
//  108     {
//  109       portx->PCR[i] = pcr;
        STR      R0,[R7, R3, LSL #+2]
//  110     }
//  111   }
??LPLD_GPIO_Init_12:
        ADDS     R3,R3,#+1
??LPLD_GPIO_Init_10:
        CMP      R3,#+32
        BLT.N    ??LPLD_GPIO_Init_11
//  112 
//  113   if(isr_func!=NULL)
        MOVS     R0,R2
        BEQ.N    ??LPLD_GPIO_Init_13
//  114     GPIO_ISR[i] = isr_func;
        LDR.N    R0,??DataTable9_12
        STR      R2,[R0, R4, LSL #+2]
//  115   
//  116   return 1;
??LPLD_GPIO_Init_13:
        MOVS     R0,#+1
??LPLD_GPIO_Init_9:
        POP      {R4-R7}
        ADD      SP,SP,#+16
        BX       LR               ;; return
//  117 }
//  118 
//  119 /*
//  120  * LPLD_GPIO_EnableIrq
//  121  * @@GPIO@@@@
//  122  * 
//  123  * @@:
//  124  *    gpio_init_structure--GPIO@@@@@@@
//  125  *                        @@@@@GPIO_InitTypeDef
//  126  *
//  127  * @@:
//  128  *    0--@@@@
//  129  *    1--@@@@
//  130  *
//  131  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 uint8 LPLD_GPIO_EnableIrq(GPIO_InitTypeDef gpio_init_structure)
//  133 {
LPLD_GPIO_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  134   uint8 i;
//  135   GPIO_Type *ptx = gpio_init_structure.GPIO_PTx;
//  136   
//  137   //@@@@
//  138   ASSERT( ptx <= PTE);                  //@@@@
//  139   
//  140   if(ptx == PTA)
        LDR.N    R1,??DataTable9_2  ;; 0x400ff000
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_EnableIrq_0
//  141     i = 0;
        MOVS     R0,#+0
        B.N      ??LPLD_GPIO_EnableIrq_1
//  142   else if(ptx == PTB) 
??LPLD_GPIO_EnableIrq_0:
        LDR.N    R1,??DataTable9_4  ;; 0x400ff040
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_EnableIrq_2
//  143     i = 1;
        MOVS     R0,#+1
        B.N      ??LPLD_GPIO_EnableIrq_1
//  144   else if(ptx == PTC) 
??LPLD_GPIO_EnableIrq_2:
        LDR.N    R1,??DataTable9_6  ;; 0x400ff080
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_EnableIrq_3
//  145     i = 2;
        MOVS     R0,#+2
        B.N      ??LPLD_GPIO_EnableIrq_1
//  146   else if(ptx == PTD) 
??LPLD_GPIO_EnableIrq_3:
        LDR.N    R1,??DataTable9_8  ;; 0x400ff0c0
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_EnableIrq_4
//  147     i = 3;
        MOVS     R0,#+3
        B.N      ??LPLD_GPIO_EnableIrq_1
//  148   else
//  149     i = 4;
??LPLD_GPIO_EnableIrq_4:
        MOVS     R0,#+4
//  150 
//  151   enable_irq((IRQn_Type)(i + PORTA_IRQn));
??LPLD_GPIO_EnableIrq_1:
        ADDS     R0,R0,#+87
        SXTB     R0,R0
        BL       __NVIC_EnableIRQ
//  152   
//  153   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  154 }
//  155 
//  156 /*
//  157  * LPLD_GPIO_DisableIrq
//  158  * @@GPIO@@@@
//  159  * 
//  160  * @@:
//  161  *    gpio_init_structure--GPIO@@@@@@@
//  162  *                        @@@@@GPIO_InitTypeDef
//  163  *
//  164  * @@:
//  165  *    0--@@@@
//  166  *    1--@@@@
//  167  *
//  168  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 uint8 LPLD_GPIO_DisableIrq(GPIO_InitTypeDef gpio_init_structure)
//  170 {
LPLD_GPIO_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  171   uint8 i;
//  172   GPIO_Type *ptx = gpio_init_structure.GPIO_PTx;
//  173   
//  174   //@@@@
//  175   ASSERT( ptx <= PTE);                  //@@@@
//  176   
//  177   if(ptx == PTA)
        LDR.N    R1,??DataTable9_2  ;; 0x400ff000
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_DisableIrq_0
//  178     i = 0;
        MOVS     R0,#+0
        B.N      ??LPLD_GPIO_DisableIrq_1
//  179   else if(ptx == PTB) 
??LPLD_GPIO_DisableIrq_0:
        LDR.N    R1,??DataTable9_4  ;; 0x400ff040
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_DisableIrq_2
//  180     i = 1;
        MOVS     R0,#+1
        B.N      ??LPLD_GPIO_DisableIrq_1
//  181   else if(ptx == PTC) 
??LPLD_GPIO_DisableIrq_2:
        LDR.N    R1,??DataTable9_6  ;; 0x400ff080
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_DisableIrq_3
//  182     i = 2;
        MOVS     R0,#+2
        B.N      ??LPLD_GPIO_DisableIrq_1
//  183   else if(ptx == PTD) 
??LPLD_GPIO_DisableIrq_3:
        LDR.N    R1,??DataTable9_8  ;; 0x400ff0c0
        CMP      R0,R1
        BNE.N    ??LPLD_GPIO_DisableIrq_4
//  184     i = 3;
        MOVS     R0,#+3
        B.N      ??LPLD_GPIO_DisableIrq_1
//  185   else
//  186     i = 4;
??LPLD_GPIO_DisableIrq_4:
        MOVS     R0,#+4
//  187   
//  188   disable_irq((IRQn_Type)(i + PORTA_IRQn));
??LPLD_GPIO_DisableIrq_1:
        ADDS     R0,R0,#+87
        SXTB     R0,R0
        BL       __NVIC_DisableIRQ
//  189   
//  190   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  191 }
//  192 
//  193 /*
//  194  * LPLD_GPIO_Ouptut
//  195  * @@GPIO@@0~31@@@@
//  196  * 
//  197  * @@:
//  198  *    ptx--@@@
//  199  *      |__PTA        --Port A
//  200  *      |__PTB        --Port B
//  201  *      |__PTC        --Port C
//  202  *      |__PTD        --Port D
//  203  *      |__PTE        --Port E
//  204  *    data32--@@@@
//  205  *      |__0x00000000~0xFFFFFFFF--@@@@@GPIO@@@0~31@@@
//  206  *
//  207  * @@:
//  208  *
//  209  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  210 __INLINE void LPLD_GPIO_Output(GPIO_Type *ptx, uint32 data32)
//  211 { 
//  212   ptx->PDOR = data32;
LPLD_GPIO_Output:
        STR      R1,[R0, #+0]
//  213 }
        BX       LR               ;; return
//  214 
//  215 /*
//  216  * LPLD_GPIO_Ouptut_b
//  217  * @@GPIO@@@@@@@
//  218  * 
//  219  * @@:
//  220  *    ptx--@@@
//  221  *      |__PTA        --Port A
//  222  *      |__PTB        --Port B
//  223  *      |__PTC        --Port C
//  224  *      |__PTD        --Port D
//  225  *      |__PTE        --Port E
//  226  *    lsb_num--@@@@@@@@
//  227  *      |__0~31       --GPIO@@@0~31@
//  228  *    data1--@@@@
//  229  *      |__0          --@@@@@
//  230  *      |__1          --@@@@@
//  231  *
//  232  * @@:
//  233  *
//  234  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 __INLINE void LPLD_GPIO_Output_b(GPIO_Type *ptx, uint32 lsb_num, uint8 data1)
//  236 {
LPLD_GPIO_Output_b:
        PUSH     {R4}
//  237   ptx->PDOR = (ptx->PDOR & ~(0x01L<<lsb_num)) | (uint32)data1<<lsb_num;
        LDR      R3,[R0, #+0]
        MOVS     R4,#+1
        LSLS     R4,R4,R1
        BICS     R3,R3,R4
        LSL      R1,R2,R1
        ORRS     R1,R1,R3
        STR      R1,[R0, #+0]
//  238 }
        POP      {R4}
        BX       LR               ;; return
//  239 
//  240 /*
//  241  * LPLD_GPIO_Ouptut_8b
//  242  * @@GPIO@@8@@@@
//  243  * 
//  244  * @@:
//  245  *    ptx--@@@
//  246  *      |__PTA        --Port A
//  247  *      |__PTB        --Port B
//  248  *      |__PTC        --Port C
//  249  *      |__PTD        --Port D
//  250  *      |__PTE        --Port E
//  251  *    lsb_num--@@8@@@@@@@@@@@@
//  252  *      |__0~24       --GPIO@@@0~24@
//  253  *    data8--@@@@
//  254  *      |__0x00~0xFF--@@GPIO@@@@8@@@
//  255  *
//  256  * @@:
//  257  *
//  258  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  259 __INLINE void LPLD_GPIO_Output_8b(GPIO_Type *ptx, uint8 lsb_num, uint8 data8)
//  260 {
LPLD_GPIO_Output_8b:
        PUSH     {R4}
//  261   ptx->PDOR = (ptx->PDOR & ~(0xFFL<<lsb_num)) | (uint32)data8<<lsb_num;
        LDR      R3,[R0, #+0]
        MOVS     R4,#+255
        LSLS     R4,R4,R1
        BICS     R3,R3,R4
        LSL      R1,R2,R1
        ORRS     R1,R1,R3
        STR      R1,[R0, #+0]
//  262 }
        POP      {R4}
        BX       LR               ;; return
//  263 
//  264 /*
//  265  * LPLD_GPIO_Toggle
//  266  * @@GPIO@@0~31@@@@@
//  267  * 
//  268  * @@:
//  269  *    ptx--@@@
//  270  *      |__PTA        --Port A
//  271  *      |__PTB        --Port B
//  272  *      |__PTC        --Port C
//  273  *      |__PTD        --Port D
//  274  *      |__PTE        --Port E
//  275  *    data32--@@@@
//  276  *      |__0x00000000~0xFFFFFFFF--@@@@@GPIO@@@0~31@@@@@1@@@@0@@@@@@
//  277  *
//  278  * @@:
//  279  *
//  280  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  281 __INLINE void LPLD_GPIO_Toggle(GPIO_Type *ptx, uint32 data32)
//  282 {  
//  283   ptx->PTOR = data32;
LPLD_GPIO_Toggle:
        STR      R1,[R0, #+12]
//  284 }
        BX       LR               ;; return
//  285 
//  286 /*
//  287  * LPLD_GPIO_Toggle_b
//  288  * @@GPIO@@@@@@@
//  289  * 
//  290  * @@:
//  291  *    ptx--@@@
//  292  *      |__PTA        --Port A
//  293  *      |__PTB        --Port B
//  294  *      |__PTC        --Port C
//  295  *      |__PTD        --Port D
//  296  *      |__PTE        --Port E
//  297  *    lsb_num--@@@@@@@@
//  298  *      |__0~31       --GPIO@@@0~31@
//  299  *
//  300  * @@:
//  301  *
//  302  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  303 __INLINE void LPLD_GPIO_Toggle_b(GPIO_Type *ptx, uint8 lsb_num)
//  304 {  
//  305   ptx->PTOR = 0x01L<<lsb_num;
LPLD_GPIO_Toggle_b:
        MOVS     R2,#+1
        LSL      R1,R2,R1
        STR      R1,[R0, #+12]
//  306 }
        BX       LR               ;; return
//  307 
//  308 /*
//  309  * LPLD_GPIO_Toggle_8b
//  310  * @@GPIO@@8@@@@
//  311  * 
//  312  * @@:
//  313  *    ptx--@@@
//  314  *      |__PTA        --Port A
//  315  *      |__PTB        --Port B
//  316  *      |__PTC        --Port C
//  317  *      |__PTD        --Port D
//  318  *      |__PTE        --Port E
//  319  *    lsb_num--@@8@@@@@@@@@@@@
//  320  *      |__0~24       --GPIO@@@0~24@
//  321  *    data8--@@@@
//  322  *      |__0x00~0xFF--@@GPIO@@@@8@@@
//  323  *
//  324  * @@:
//  325  *
//  326  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  327 __INLINE void LPLD_GPIO_Toggle_8b(GPIO_Type *ptx, uint8 lsb_num, uint8 data8)
//  328 {
//  329   ptx->PTOR = (uint32)data8<<lsb_num;
LPLD_GPIO_Toggle_8b:
        LSL      R1,R2,R1
        STR      R1,[R0, #+12]
//  330 }
        BX       LR               ;; return
//  331 
//  332 /*
//  333  * LPLD_GPIO_Input
//  334  * @@GPIO@0~31@@@@
//  335  * 
//  336  * @@:
//  337  *    ptx--@@@
//  338  *      |__PTA        --Port A
//  339  *      |__PTB        --Port B
//  340  *      |__PTC        --Port C
//  341  *      |__PTD        --Port D
//  342  *      |__PTE        --Port E
//  343  *
//  344  * @@:
//  345  *    @@GPIO@@32@@@
//  346  *
//  347  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  348 __INLINE uint32 LPLD_GPIO_Input(GPIO_Type *ptx)
//  349 {
//  350   return ptx->PDIR;
LPLD_GPIO_Input:
        LDR      R0,[R0, #+16]
        BX       LR               ;; return
//  351 }
//  352 
//  353 /*
//  354  * LPLD_GPIO_Input_b
//  355  * @@GPIO@@@@@@@
//  356  * 
//  357  * @@:
//  358  *    ptx--@@@
//  359  *      |__PTA        --Port A
//  360  *      |__PTB        --Port B
//  361  *      |__PTC        --Port C
//  362  *      |__PTD        --Port D
//  363  *      |__PTE        --Port E
//  364  *    lsb_num--@@@@@@@@
//  365  *      |__0~31       --GPIO@@@0~31@
//  366  *
//  367  * @@:
//  368  *    @@GPIO@@@@@@@@@
//  369  *
//  370  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  371 __INLINE uint8 LPLD_GPIO_Input_b(GPIO_Type *ptx, uint8 lsb_num)
//  372 {  
//  373   return (uint8)((ptx->PDIR>>lsb_num)&0x01L);
LPLD_GPIO_Input_b:
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,R1
        AND      R0,R0,#0x1
        BX       LR               ;; return
//  374 }
//  375 
//  376 /*
//  377  * LPLD_GPIO_Input_8b
//  378  * @@GPIO@@8@@@@@@
//  379  * 
//  380  * @@:
//  381  *    ptx--@@@
//  382  *      |__PTA        --Port A
//  383  *      |__PTB        --Port B
//  384  *      |__PTC        --Port C
//  385  *      |__PTD        --Port D
//  386  *      |__PTE        --Port E
//  387  *    lsb_num--@@8@@@@@@@@@@@@
//  388  *      |__0~24       --GPIO@@@0~24@
//  389  *
//  390  * @@:
//  391  *    @@GPIO@@8@@@@@@
//  392  *
//  393  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  394 __INLINE uint8 LPLD_GPIO_Input_8b(GPIO_Type *ptx, uint8 lsb_num)
//  395 {
//  396   return (uint8)((ptx->PDIR>>lsb_num)&0xFFL);
LPLD_GPIO_Input_8b:
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,R1
        UXTB     R0,R0
        BX       LR               ;; return
//  397 }
//  398 
//  399 /*
//  400  * PORTA--PORTE@@@@@@
//  401  * @@@@@startup_K60.s@@@@@@@@@
//  402  * @@@@@@@@@@@@@@@@@@@@@
//  403  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  404 void PORTA_IRQHandler(void)
//  405 {
PORTA_IRQHandler:
        PUSH     {R7,LR}
//  406 #if (UCOS_II > 0u)
//  407   OS_CPU_SR  cpu_sr = 0u;
//  408   OS_ENTER_CRITICAL(); //@@@@@@@@@@@@@@@@@@
//  409   OSIntEnter();
//  410   OS_EXIT_CRITICAL();
//  411 #endif
//  412   
//  413   //@@@@@@@@@@@
//  414   GPIO_ISR[0](); 
        LDR.N    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        BLX      R0
//  415   PORTA->ISFR =0xFFFFFFFF;
        MOV      R0,#-1
        LDR.N    R1,??DataTable9_13  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  416   
//  417 #if (UCOS_II > 0u)
//  418   OSIntExit();          //@@@@@@@@@@@@@@@@@
//  419 #endif
//  420 }//           ;87:  PORT A interrupt
        POP      {R0,PC}          ;; return
//  421 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  422 void PORTB_IRQHandler(void)
//  423 {
PORTB_IRQHandler:
        PUSH     {R7,LR}
//  424 #if (UCOS_II > 0u)
//  425   OS_CPU_SR  cpu_sr = 0u;
//  426   OS_ENTER_CRITICAL(); //@@@@@@@@@@@@@@@@@@
//  427   OSIntEnter();
//  428   OS_EXIT_CRITICAL();
//  429 #endif
//  430   
//  431   //@@@@@@@@@@@
//  432   GPIO_ISR[1](); 
        LDR.N    R0,??DataTable9_12
        LDR      R0,[R0, #+4]
        BLX      R0
//  433   PORTB->ISFR =0xFFFFFFFF;
        MOV      R0,#-1
        LDR.N    R1,??DataTable9_14  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  434   
//  435 #if (UCOS_II > 0u)
//  436   OSIntExit();          //@@@@@@@@@@@@@@@@@
//  437 #endif
//  438 }//           ;88:  PORT B interrupt
        POP      {R0,PC}          ;; return
//  439 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  440 void PORTC_IRQHandler(void)
//  441 {
PORTC_IRQHandler:
        PUSH     {R7,LR}
//  442 #if (UCOS_II > 0u)
//  443   OS_CPU_SR  cpu_sr = 0u;
//  444   OS_ENTER_CRITICAL(); //@@@@@@@@@@@@@@@@@@
//  445   OSIntEnter();
//  446   OS_EXIT_CRITICAL();
//  447 #endif
//  448   
//  449   //@@@@@@@@@@@
//  450   GPIO_ISR[2](); 
        LDR.N    R0,??DataTable9_12
        LDR      R0,[R0, #+8]
        BLX      R0
//  451   PORTC->ISFR =0xFFFFFFFF;
        MOV      R0,#-1
        LDR.N    R1,??DataTable9_15  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  452   
//  453 #if (UCOS_II > 0u)
//  454   OSIntExit();          //@@@@@@@@@@@@@@@@@
//  455 #endif
//  456 }//           ;89:  PORT C interrupt
        POP      {R0,PC}          ;; return
//  457 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  458 void PORTD_IRQHandler(void)
//  459 {
PORTD_IRQHandler:
        PUSH     {R7,LR}
//  460 #if (UCOS_II > 0u)
//  461   OS_CPU_SR  cpu_sr = 0u;
//  462   OS_ENTER_CRITICAL(); //@@@@@@@@@@@@@@@@@@
//  463   OSIntEnter();
//  464   OS_EXIT_CRITICAL();
//  465 #endif
//  466   
//  467   //@@@@@@@@@@@
//  468   GPIO_ISR[3](); 
        LDR.N    R0,??DataTable9_12
        LDR      R0,[R0, #+12]
        BLX      R0
//  469   PORTD->ISFR =0xFFFFFFFF;
        MOV      R0,#-1
        LDR.N    R1,??DataTable9_16  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  470   
//  471 #if (UCOS_II > 0u)
//  472   OSIntExit();          //@@@@@@@@@@@@@@@@@
//  473 #endif
//  474 }//           ;90:  PORT D interrupt
        POP      {R0,PC}          ;; return
//  475 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  476 void PORTE_IRQHandler(void)
//  477 {
PORTE_IRQHandler:
        PUSH     {R7,LR}
//  478 #if (UCOS_II > 0u)
//  479   OS_CPU_SR  cpu_sr = 0u;
//  480   OS_ENTER_CRITICAL(); //@@@@@@@@@@@@@@@@@@
//  481   OSIntEnter();
//  482   OS_EXIT_CRITICAL();
//  483 #endif
//  484   
//  485   //@@@@@@@@@@@
//  486   GPIO_ISR[4](); 
        LDR.N    R0,??DataTable9_12
        LDR      R0,[R0, #+16]
        BLX      R0
//  487   PORTE->ISFR =0xFFFFFFFF;
        MOV      R0,#-1
        LDR.N    R1,??DataTable9_17  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  488   
//  489 #if (UCOS_II > 0u)
//  490   OSIntExit();          //@@@@@@@@@@@@@@@@@
//  491 #endif
//  492 }//           ;91:  PORT E interrupt
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x4004b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     GPIO_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     0x4004d0a0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  20 bytes in section .bss
// 576 bytes in section .text
// 
// 576 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
