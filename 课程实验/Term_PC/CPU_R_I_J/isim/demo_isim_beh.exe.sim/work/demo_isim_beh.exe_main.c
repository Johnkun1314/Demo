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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003978689226_0254784918_init();
    work_m_00000000003368763039_0886308060_init();
    work_m_00000000003324468811_3963991466_init();
    xilinxcorelib_ver_m_00000000001358910285_1256727229_init();
    xilinxcorelib_ver_m_00000000001687936702_1862936372_init();
    xilinxcorelib_ver_m_00000000002621774987_2378591755_init();
    xilinxcorelib_ver_m_00000000001603977570_2612766956_init();
    work_m_00000000000403262735_3978363533_init();
    work_m_00000000004095115555_4109158979_init();
    xilinxcorelib_ver_m_00000000002621774987_1165304191_init();
    xilinxcorelib_ver_m_00000000001603977570_2345257482_init();
    work_m_00000000000403262735_1948799799_init();
    work_m_00000000001719861877_2540952168_init();
    work_m_00000000001698180385_2019858411_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001698180385_2019858411");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
