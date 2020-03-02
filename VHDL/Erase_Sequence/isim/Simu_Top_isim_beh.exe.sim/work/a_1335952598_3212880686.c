/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pedro/Documents/ISE/Erase_Sequence/TOP.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );


static void work_a_1335952598_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 8494);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB12:    t6 = (t0 + 8497);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB13:    t9 = (t0 + 8500);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB14:    t12 = (t0 + 8503);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB15:    t15 = (t0 + 8506);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB16:    t18 = (t0 + 8509);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 8632);
    t4 = (t0 + 5352);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 20U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(118, ng0);

LAB21:    t2 = (t0 + 5240);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(119, ng0);
    t21 = (t0 + 8512);
    t23 = (t0 + 5352);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 20U);
    xsi_driver_first_trans_fast(t23);
    goto LAB4;

LAB6:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 8532);
    t4 = (t0 + 5352);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 20U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 8552);
    t4 = (t0 + 5352);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 20U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 8572);
    t4 = (t0 + 5352);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 20U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 8592);
    t4 = (t0 + 5352);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 20U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 8612);
    t4 = (t0 + 5352);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 20U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 5240);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}

static void work_a_1335952598_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 8652);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB12:    t6 = (t0 + 8655);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB13:    t9 = (t0 + 8658);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB14:    t12 = (t0 + 8661);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB15:    t15 = (t0 + 8664);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB16:    t18 = (t0 + 8667);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 8718);
    t4 = (t0 + 5416);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(127, ng0);

LAB21:    t2 = (t0 + 5256);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(128, ng0);
    t21 = (t0 + 8670);
    t23 = (t0 + 5416);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 8U);
    xsi_driver_first_trans_fast(t23);
    goto LAB4;

LAB6:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 8678);
    t4 = (t0 + 5416);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 8686);
    t4 = (t0 + 5416);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 8694);
    t4 = (t0 + 5416);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 8702);
    t4 = (t0 + 5416);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 8710);
    t4 = (t0 + 5416);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 5256);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}

static void work_a_1335952598_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(114, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5480);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 5272);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1335952598_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1335952598_3212880686_p_0,(void *)work_a_1335952598_3212880686_p_1,(void *)work_a_1335952598_3212880686_p_2};
	xsi_register_didat("work_a_1335952598_3212880686", "isim/Simu_Top_isim_beh.exe.sim/work/a_1335952598_3212880686.didat");
	xsi_register_executes(pe);
}
