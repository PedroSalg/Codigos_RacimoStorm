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
static const char *ng0 = "/home/pedro/Documents/ISE/RACIMOStorm/MaquinaEstados_Escritura.vhd";



static void work_a_0221648973_3212880686_p_0(char *t0)
{
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1632U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8024);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 8264);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)0;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3592U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t2 = (t0 + 8264);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t6;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

}

static void work_a_0221648973_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB3, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB4};

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 8040);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)9;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB2;

LAB5:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);

LAB21:    goto LAB2;

LAB13:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 8328);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB14:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 8328);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)9;
    xsi_driver_first_trans_fast(t4);
    goto LAB15;

LAB17:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 8328);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 8328);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

}

static void work_a_0221648973_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB5, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB6};

LAB0:    t1 = (t0 + 5720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(103, ng0);

LAB18:    t2 = (t0 + 8056);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;

LAB1:    return;
LAB5:    xsi_set_current_line(104, ng0);
    t5 = (t0 + 13024);
    t7 = (t0 + 8392);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13028);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13032);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13036);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB9:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13040);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB10:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13044);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB11:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13048);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB12:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13052);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB13:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13056);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB14:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13060);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB15:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 13064);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB16:    t3 = (t0 + 8056);
    *((int *)t3) = 0;
    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_0221648973_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB5, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB6};

LAB0:    t1 = (t0 + 5968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(117, ng0);

LAB18:    t2 = (t0 + 8072);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;

LAB1:    return;
LAB5:    xsi_set_current_line(118, ng0);
    t5 = (t0 + 13068);
    t7 = (t0 + 8456);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 20U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13088);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13108);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13128);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB9:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13148);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB10:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13168);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB11:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13188);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB12:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13208);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB13:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 8456);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 20U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB14:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13228);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB15:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 13248);
    t5 = (t0 + 8456);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 20U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB16:    t3 = (t0 + 8072);
    *((int *)t3) = 0;
    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_0221648973_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB5, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB6};

LAB0:    t1 = (t0 + 6216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(130, ng0);

LAB18:    t2 = (t0 + 8088);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;

LAB1:    return;
LAB5:    xsi_set_current_line(131, ng0);
    t5 = (t0 + 13268);
    t7 = (t0 + 8520);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 12U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13280);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13292);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13304);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB9:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13316);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB10:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13328);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB11:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13340);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB12:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13352);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB13:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 12U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB14:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13364);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB15:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 13376);
    t5 = (t0 + 8520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB16:    t3 = (t0 + 8088);
    *((int *)t3) = 0;
    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_0221648973_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14};

LAB0:    t1 = (t0 + 6464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(143, ng0);

LAB17:    t2 = (t0 + 8104);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(144, ng0);
    t5 = (t0 + 13388);
    t7 = (t0 + 8584);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13396);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13404);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13412);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB9:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13420);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB10:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13428);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB11:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13436);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB12:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13444);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB13:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13452);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB14:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 13460);
    t5 = (t0 + 8584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB15:    t3 = (t0 + 8104);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_0221648973_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6};

LAB0:    t1 = (t0 + 6712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(155, ng0);

LAB9:    t2 = (t0 + 8120);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(156, ng0);
    t5 = (t0 + 8648);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(156, ng0);
    t2 = (t0 + 8648);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    t3 = (t0 + 8120);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_0221648973_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(160, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 8712);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 8136);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0221648973_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(161, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = (2 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 8776);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 8152);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0221648973_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(162, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = (1 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 8840);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 8168);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0221648973_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(163, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = (0 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 8904);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 8184);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0221648973_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0221648973_3212880686_p_0,(void *)work_a_0221648973_3212880686_p_1,(void *)work_a_0221648973_3212880686_p_2,(void *)work_a_0221648973_3212880686_p_3,(void *)work_a_0221648973_3212880686_p_4,(void *)work_a_0221648973_3212880686_p_5,(void *)work_a_0221648973_3212880686_p_6,(void *)work_a_0221648973_3212880686_p_7,(void *)work_a_0221648973_3212880686_p_8,(void *)work_a_0221648973_3212880686_p_9,(void *)work_a_0221648973_3212880686_p_10};
	xsi_register_didat("work_a_0221648973_3212880686", "isim/Simulacion_Escritura_isim_beh.exe.sim/work/a_0221648973_3212880686.didat");
	xsi_register_executes(pe);
}
