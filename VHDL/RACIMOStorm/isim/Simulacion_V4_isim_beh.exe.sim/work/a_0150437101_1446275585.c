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
static const char *ng0 = "/home/pedro/Documents/ISE/RACIMOStorm/SCL.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0150437101_1446275585_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    static char *nl0[] = {&&LAB6, &&LAB7};

LAB0:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(38, ng0);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t6 = (t0 + 1032U);
    t9 = *((char **)t6);
    t10 = *((unsigned char *)t9);
    t11 = (t8 != t10);
    if (t11 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB5;

LAB7:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t18 = *((int *)t3);
    t2 = (t18 == 0);
    if (t2 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t8 = (t2 != t5);
    if (t8 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t18 = *((int *)t3);
    t19 = (t18 - 1);
    t1 = (t0 + 4056);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = t19;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB5;

LAB8:    xsi_set_current_line(39, ng0);
    t6 = (t0 + 1032U);
    t12 = *((char **)t6);
    t13 = *((unsigned char *)t12);
    t6 = (t0 + 3928);
    t14 = (t6 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 3992);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t18 = (4 - 1);
    t1 = (t0 + 4056);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t18;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t8 = *((unsigned char *)t6);
    t10 = (t5 == t8);
    if (t10 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3992);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t11 = *((unsigned char *)t7);
    t1 = (t0 + 4120);
    t9 = (t1 + 56U);
    t12 = *((char **)t9);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3992);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

}

static void work_a_0150437101_1446275585_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4184);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3848);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0150437101_1446275585_init()
{
	static char *pe[] = {(void *)work_a_0150437101_1446275585_p_0,(void *)work_a_0150437101_1446275585_p_1};
	xsi_register_didat("work_a_0150437101_1446275585", "isim/Simulacion_V4_isim_beh.exe.sim/work/a_0150437101_1446275585.didat");
	xsi_register_executes(pe);
}
