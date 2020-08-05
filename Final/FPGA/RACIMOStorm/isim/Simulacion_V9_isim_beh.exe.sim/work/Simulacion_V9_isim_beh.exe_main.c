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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1242959423_3212880686_init();
    work_a_3284595445_3212880686_init();
    work_a_1140600887_3212880686_init();
    work_a_0656663094_3212880686_init();
    work_a_0947732234_3212880686_init();
    work_a_1900439422_3212880686_init();
    work_a_4248544673_3212880686_init();
    work_a_4138911039_3212880686_init();
    work_a_1088474459_3212880686_init();
    work_a_4024041728_3212880686_init();
    work_a_0824391845_3212880686_init();
    work_a_1254682282_3212880686_init();
    work_a_4254918697_3212880686_init();
    work_a_0221648973_3212880686_init();
    work_a_0363563513_3212880686_init();
    work_a_2746430514_3212880686_init();
    work_a_1894471236_3212880686_init();
    work_a_0709389708_3212880686_init();
    work_a_3859198231_3212880686_init();
    work_a_3132730158_3212880686_init();
    work_a_1912233552_3212880686_init();
    unisim_p_0947159679_init();
    work_a_3254479527_3212880686_init();
    work_a_2670154633_3212880686_init();
    work_a_2009978291_3212880686_init();
    work_a_0150437101_1446275585_init();
    work_a_4174755481_1446275585_init();
    work_a_0877648757_3212880686_init();
    work_a_1078965014_3212880686_init();
    work_a_2586723402_3212880686_init();
    work_a_2525893486_3212880686_init();
    work_a_4256033052_3212880686_init();
    work_a_1513169556_3212880686_init();
    work_a_3428922984_2372691052_init();


    xsi_register_tops("work_a_3428922984_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
