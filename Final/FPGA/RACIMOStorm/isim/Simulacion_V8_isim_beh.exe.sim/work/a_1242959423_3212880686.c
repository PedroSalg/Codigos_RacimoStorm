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
static const char *ng0 = "/home/pedro/Documents/ISE/Proyecto_grado/RACIMOStorm/contador_gps.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_3620187407;

char *ieee_p_3499444699_sub_17544701978858283880_3536714472(char *, char *, int , int );
unsigned char ieee_p_3620187407_sub_1306455576397931277_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_16272557775307340295_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_1242959423_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(22, ng0);

LAB3:    t2 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t1, 100000000, 27);
    t3 = (27U != 27U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 4744);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 27U);
    xsi_driver_first_trans_fast(t4);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(27U, 27U, 0);
    goto LAB6;

}

static void work_a_1242959423_3212880686_p_1(char *t0)
{
    char t11[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4616);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(30, ng0);
    t4 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t11, 0, 27);
    t12 = (27U != 27U);
    if (t12 == 1)
        goto LAB11;

LAB12:    t13 = (t0 + 4808);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 27U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB11:    xsi_size_not_matching(27U, 27U, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 4808);
    t8 = (t2 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 27U);
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

}

static void work_a_1242959423_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 7448U);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 7448U);
    t5 = ieee_p_3620187407_sub_1306455576397931277_3965413181(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 4872);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 4632);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 4872);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_1242959423_3212880686_p_3(char *t0)
{
    char t5[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB7:    t18 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t17, 0, 27);
    t19 = (27U != 27U);
    if (t19 == 1)
        goto LAB9;

LAB10:    t20 = (t0 + 4936);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 27U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t25 = (t0 + 4648);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 7448U);
    t7 = ieee_p_3620187407_sub_16272557775307340295_3965413181(IEEE_P_3620187407, t5, t6, t1, (unsigned char)3);
    t8 = (t5 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (27U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4936);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 27U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    xsi_size_not_matching(27U, t10, 0);
    goto LAB6;

LAB8:    goto LAB2;

LAB9:    xsi_size_not_matching(27U, 27U, 0);
    goto LAB10;

}

static void work_a_1242959423_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5000);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 27U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4664);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1242959423_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1242959423_3212880686_p_0,(void *)work_a_1242959423_3212880686_p_1,(void *)work_a_1242959423_3212880686_p_2,(void *)work_a_1242959423_3212880686_p_3,(void *)work_a_1242959423_3212880686_p_4};
	xsi_register_didat("work_a_1242959423_3212880686", "isim/Simulacion_V8_isim_beh.exe.sim/work/a_1242959423_3212880686.didat");
	xsi_register_executes(pe);
}
