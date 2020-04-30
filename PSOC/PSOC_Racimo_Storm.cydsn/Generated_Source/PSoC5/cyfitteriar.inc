;
; File Name: cyfitteriar.inc
; 
; PSoC Creator  4.2
;
; Description:
; 
;
;-------------------------------------------------------------------------------
; Copyright (c) 2007-2018 Cypress Semiconductor.  All rights reserved.
; You may use this file only in accordance with the license, terms, conditions, 
; disclaimers, and limitations in the end user license agreement accompanying 
; the software package with which this file was provided.
;-------------------------------------------------------------------------------

#ifndef INCLUDED_CYFITTERIAR_INC
#define INCLUDED_CYFITTERIAR_INC
    INCLUDE cydeviceiar.inc
    INCLUDE cydeviceiar_trm.inc

/* ADC */
ADC_DEC__COHER EQU CYREG_DEC_COHER
ADC_DEC__CR EQU CYREG_DEC_CR
ADC_DEC__DR1 EQU CYREG_DEC_DR1
ADC_DEC__DR2 EQU CYREG_DEC_DR2
ADC_DEC__DR2H EQU CYREG_DEC_DR2H
ADC_DEC__GCOR EQU CYREG_DEC_GCOR
ADC_DEC__GCORH EQU CYREG_DEC_GCORH
ADC_DEC__GVAL EQU CYREG_DEC_GVAL
ADC_DEC__OCOR EQU CYREG_DEC_OCOR
ADC_DEC__OCORH EQU CYREG_DEC_OCORH
ADC_DEC__OCORM EQU CYREG_DEC_OCORM
ADC_DEC__OUTSAMP EQU CYREG_DEC_OUTSAMP
ADC_DEC__OUTSAMPH EQU CYREG_DEC_OUTSAMPH
ADC_DEC__OUTSAMPM EQU CYREG_DEC_OUTSAMPM
ADC_DEC__OUTSAMPS EQU CYREG_DEC_OUTSAMPS
ADC_DEC__PM_ACT_CFG EQU CYREG_PM_ACT_CFG10
ADC_DEC__PM_ACT_MSK EQU 0x01
ADC_DEC__PM_STBY_CFG EQU CYREG_PM_STBY_CFG10
ADC_DEC__PM_STBY_MSK EQU 0x01
ADC_DEC__SHIFT1 EQU CYREG_DEC_SHIFT1
ADC_DEC__SHIFT2 EQU CYREG_DEC_SHIFT2
ADC_DEC__SR EQU CYREG_DEC_SR
ADC_DEC__TRIM__M1 EQU CYREG_FLSHID_CUST_TABLES_DEC_M1
ADC_DEC__TRIM__M2 EQU CYREG_FLSHID_CUST_TABLES_DEC_M2
ADC_DEC__TRIM__M3 EQU CYREG_FLSHID_CUST_TABLES_DEC_M3
ADC_DEC__TRIM__M4 EQU CYREG_FLSHID_CUST_TABLES_DEC_M4
ADC_DEC__TRIM__M5 EQU CYREG_FLSHID_CUST_TABLES_DEC_M5
ADC_DEC__TRIM__M6 EQU CYREG_FLSHID_CUST_TABLES_DEC_M6
ADC_DEC__TRIM__M7 EQU CYREG_FLSHID_CUST_TABLES_DEC_M7
ADC_DEC__TRIM__M8 EQU CYREG_FLSHID_CUST_TABLES_DEC_M8
ADC_DSM__BUF0 EQU CYREG_DSM0_BUF0
ADC_DSM__BUF1 EQU CYREG_DSM0_BUF1
ADC_DSM__BUF2 EQU CYREG_DSM0_BUF2
ADC_DSM__BUF3 EQU CYREG_DSM0_BUF3
ADC_DSM__CLK EQU CYREG_DSM0_CLK
ADC_DSM__CR0 EQU CYREG_DSM0_CR0
ADC_DSM__CR1 EQU CYREG_DSM0_CR1
ADC_DSM__CR10 EQU CYREG_DSM0_CR10
ADC_DSM__CR11 EQU CYREG_DSM0_CR11
ADC_DSM__CR12 EQU CYREG_DSM0_CR12
ADC_DSM__CR13 EQU CYREG_DSM0_CR13
ADC_DSM__CR14 EQU CYREG_DSM0_CR14
ADC_DSM__CR15 EQU CYREG_DSM0_CR15
ADC_DSM__CR16 EQU CYREG_DSM0_CR16
ADC_DSM__CR17 EQU CYREG_DSM0_CR17
ADC_DSM__CR2 EQU CYREG_DSM0_CR2
ADC_DSM__CR3 EQU CYREG_DSM0_CR3
ADC_DSM__CR4 EQU CYREG_DSM0_CR4
ADC_DSM__CR5 EQU CYREG_DSM0_CR5
ADC_DSM__CR6 EQU CYREG_DSM0_CR6
ADC_DSM__CR7 EQU CYREG_DSM0_CR7
ADC_DSM__CR8 EQU CYREG_DSM0_CR8
ADC_DSM__CR9 EQU CYREG_DSM0_CR9
ADC_DSM__DEM0 EQU CYREG_DSM0_DEM0
ADC_DSM__DEM1 EQU CYREG_DSM0_DEM1
ADC_DSM__MISC EQU CYREG_DSM0_MISC
ADC_DSM__OUT0 EQU CYREG_DSM0_OUT0
ADC_DSM__OUT1 EQU CYREG_DSM0_OUT1
ADC_DSM__REF0 EQU CYREG_DSM0_REF0
ADC_DSM__REF1 EQU CYREG_DSM0_REF1
ADC_DSM__REF2 EQU CYREG_DSM0_REF2
ADC_DSM__REF3 EQU CYREG_DSM0_REF3
ADC_DSM__RSVD1 EQU CYREG_DSM0_RSVD1
ADC_DSM__SW0 EQU CYREG_DSM0_SW0
ADC_DSM__SW2 EQU CYREG_DSM0_SW2
ADC_DSM__SW3 EQU CYREG_DSM0_SW3
ADC_DSM__SW4 EQU CYREG_DSM0_SW4
ADC_DSM__SW6 EQU CYREG_DSM0_SW6
ADC_DSM__TR0 EQU CYREG_NPUMP_DSM_TR0
ADC_DSM__TST0 EQU CYREG_DSM0_TST0
ADC_DSM__TST1 EQU CYREG_DSM0_TST1
ADC_Ext_CP_Clk__CFG0 EQU CYREG_CLKDIST_DCFG0_CFG0
ADC_Ext_CP_Clk__CFG1 EQU CYREG_CLKDIST_DCFG0_CFG1
ADC_Ext_CP_Clk__CFG2 EQU CYREG_CLKDIST_DCFG0_CFG2
ADC_Ext_CP_Clk__CFG2_SRC_SEL_MASK EQU 0x07
ADC_Ext_CP_Clk__INDEX EQU 0x00
ADC_Ext_CP_Clk__PM_ACT_CFG EQU CYREG_PM_ACT_CFG2
ADC_Ext_CP_Clk__PM_ACT_MSK EQU 0x01
ADC_Ext_CP_Clk__PM_STBY_CFG EQU CYREG_PM_STBY_CFG2
ADC_Ext_CP_Clk__PM_STBY_MSK EQU 0x01
ADC_IRQ__INTC_CLR_EN_REG EQU CYREG_NVIC_CLRENA0
ADC_IRQ__INTC_CLR_PD_REG EQU CYREG_NVIC_CLRPEND0
ADC_IRQ__INTC_MASK EQU 0x20000000
ADC_IRQ__INTC_NUMBER EQU 29
ADC_IRQ__INTC_PRIOR_NUM EQU 7
ADC_IRQ__INTC_PRIOR_REG EQU CYREG_NVIC_PRI_29
ADC_IRQ__INTC_SET_EN_REG EQU CYREG_NVIC_SETENA0
ADC_IRQ__INTC_SET_PD_REG EQU CYREG_NVIC_SETPEND0
ADC_theACLK__CFG0 EQU CYREG_CLKDIST_ACFG0_CFG0
ADC_theACLK__CFG1 EQU CYREG_CLKDIST_ACFG0_CFG1
ADC_theACLK__CFG2 EQU CYREG_CLKDIST_ACFG0_CFG2
ADC_theACLK__CFG2_SRC_SEL_MASK EQU 0x07
ADC_theACLK__CFG3 EQU CYREG_CLKDIST_ACFG0_CFG3
ADC_theACLK__CFG3_PHASE_DLY_MASK EQU 0x0F
ADC_theACLK__INDEX EQU 0x00
ADC_theACLK__PM_ACT_CFG EQU CYREG_PM_ACT_CFG1
ADC_theACLK__PM_ACT_MSK EQU 0x01
ADC_theACLK__PM_STBY_CFG EQU CYREG_PM_STBY_CFG1
ADC_theACLK__PM_STBY_MSK EQU 0x01

/* Pin */
Pin__0__INTTYPE EQU CYREG_PICU12_INTTYPE0
Pin__0__MASK EQU 0x01
Pin__0__PC EQU CYREG_PRT12_PC0
Pin__0__PORT EQU 12
Pin__0__SHIFT EQU 0
Pin__1__INTTYPE EQU CYREG_PICU12_INTTYPE1
Pin__1__MASK EQU 0x02
Pin__1__PC EQU CYREG_PRT12_PC1
Pin__1__PORT EQU 12
Pin__1__SHIFT EQU 1
Pin__AG EQU CYREG_PRT12_AG
Pin__BIE EQU CYREG_PRT12_BIE
Pin__BIT_MASK EQU CYREG_PRT12_BIT_MASK
Pin__BYP EQU CYREG_PRT12_BYP
Pin__DM0 EQU CYREG_PRT12_DM0
Pin__DM1 EQU CYREG_PRT12_DM1
Pin__DM2 EQU CYREG_PRT12_DM2
Pin__DR EQU CYREG_PRT12_DR
Pin__INP_DIS EQU CYREG_PRT12_INP_DIS
Pin__INTTYPE_BASE EQU CYDEV_PICU_INTTYPE_PICU12_BASE
Pin__MASK EQU 0x03
Pin__PORT EQU 12
Pin__PRT EQU CYREG_PRT12_PRT
Pin__PRTDSI__DBL_SYNC_IN EQU CYREG_PRT12_DBL_SYNC_IN
Pin__PRTDSI__OE_SEL0 EQU CYREG_PRT12_OE_SEL0
Pin__PRTDSI__OE_SEL1 EQU CYREG_PRT12_OE_SEL1
Pin__PRTDSI__OUT_SEL0 EQU CYREG_PRT12_OUT_SEL0
Pin__PRTDSI__OUT_SEL1 EQU CYREG_PRT12_OUT_SEL1
Pin__PRTDSI__SYNC_OUT EQU CYREG_PRT12_SYNC_OUT
Pin__PS EQU CYREG_PRT12_PS
Pin__scl__INTTYPE EQU CYREG_PICU12_INTTYPE0
Pin__scl__MASK EQU 0x01
Pin__scl__PC EQU CYREG_PRT12_PC0
Pin__scl__PORT EQU 12
Pin__scl__SHIFT EQU 0
Pin__sda__INTTYPE EQU CYREG_PICU12_INTTYPE1
Pin__sda__MASK EQU 0x02
Pin__sda__PC EQU CYREG_PRT12_PC1
Pin__sda__PORT EQU 12
Pin__sda__SHIFT EQU 1
Pin__SHIFT EQU 0
Pin__SIO_CFG EQU CYREG_PRT12_SIO_CFG
Pin__SIO_DIFF EQU CYREG_PRT12_SIO_DIFF
Pin__SIO_HYST_EN EQU CYREG_PRT12_SIO_HYST_EN
Pin__SIO_REG_HIFREQ EQU CYREG_PRT12_SIO_REG_HIFREQ
Pin__SLW EQU CYREG_PRT12_SLW

/* VDC */
VDC__0__INTTYPE EQU CYREG_PICU2_INTTYPE3
VDC__0__MASK EQU 0x08
VDC__0__PC EQU CYREG_PRT2_PC3
VDC__0__PORT EQU 2
VDC__0__SHIFT EQU 3
VDC__AG EQU CYREG_PRT2_AG
VDC__AMUX EQU CYREG_PRT2_AMUX
VDC__BIE EQU CYREG_PRT2_BIE
VDC__BIT_MASK EQU CYREG_PRT2_BIT_MASK
VDC__BYP EQU CYREG_PRT2_BYP
VDC__CTL EQU CYREG_PRT2_CTL
VDC__DM0 EQU CYREG_PRT2_DM0
VDC__DM1 EQU CYREG_PRT2_DM1
VDC__DM2 EQU CYREG_PRT2_DM2
VDC__DR EQU CYREG_PRT2_DR
VDC__INP_DIS EQU CYREG_PRT2_INP_DIS
VDC__INTTYPE_BASE EQU CYDEV_PICU_INTTYPE_PICU2_BASE
VDC__LCD_COM_SEG EQU CYREG_PRT2_LCD_COM_SEG
VDC__LCD_EN EQU CYREG_PRT2_LCD_EN
VDC__MASK EQU 0x08
VDC__PORT EQU 2
VDC__PRT EQU CYREG_PRT2_PRT
VDC__PRTDSI__CAPS_SEL EQU CYREG_PRT2_CAPS_SEL
VDC__PRTDSI__DBL_SYNC_IN EQU CYREG_PRT2_DBL_SYNC_IN
VDC__PRTDSI__OE_SEL0 EQU CYREG_PRT2_OE_SEL0
VDC__PRTDSI__OE_SEL1 EQU CYREG_PRT2_OE_SEL1
VDC__PRTDSI__OUT_SEL0 EQU CYREG_PRT2_OUT_SEL0
VDC__PRTDSI__OUT_SEL1 EQU CYREG_PRT2_OUT_SEL1
VDC__PRTDSI__SYNC_OUT EQU CYREG_PRT2_SYNC_OUT
VDC__PS EQU CYREG_PRT2_PS
VDC__SHIFT EQU 3
VDC__SLW EQU CYREG_PRT2_SLW

/* VIN */
VIN__0__INTTYPE EQU CYREG_PICU1_INTTYPE2
VIN__0__MASK EQU 0x04
VIN__0__PC EQU CYREG_PRT1_PC2
VIN__0__PORT EQU 1
VIN__0__SHIFT EQU 2
VIN__AG EQU CYREG_PRT1_AG
VIN__AMUX EQU CYREG_PRT1_AMUX
VIN__BIE EQU CYREG_PRT1_BIE
VIN__BIT_MASK EQU CYREG_PRT1_BIT_MASK
VIN__BYP EQU CYREG_PRT1_BYP
VIN__CTL EQU CYREG_PRT1_CTL
VIN__DM0 EQU CYREG_PRT1_DM0
VIN__DM1 EQU CYREG_PRT1_DM1
VIN__DM2 EQU CYREG_PRT1_DM2
VIN__DR EQU CYREG_PRT1_DR
VIN__INP_DIS EQU CYREG_PRT1_INP_DIS
VIN__INTTYPE_BASE EQU CYDEV_PICU_INTTYPE_PICU1_BASE
VIN__LCD_COM_SEG EQU CYREG_PRT1_LCD_COM_SEG
VIN__LCD_EN EQU CYREG_PRT1_LCD_EN
VIN__MASK EQU 0x04
VIN__PORT EQU 1
VIN__PRT EQU CYREG_PRT1_PRT
VIN__PRTDSI__CAPS_SEL EQU CYREG_PRT1_CAPS_SEL
VIN__PRTDSI__DBL_SYNC_IN EQU CYREG_PRT1_DBL_SYNC_IN
VIN__PRTDSI__OE_SEL0 EQU CYREG_PRT1_OE_SEL0
VIN__PRTDSI__OE_SEL1 EQU CYREG_PRT1_OE_SEL1
VIN__PRTDSI__OUT_SEL0 EQU CYREG_PRT1_OUT_SEL0
VIN__PRTDSI__OUT_SEL1 EQU CYREG_PRT1_OUT_SEL1
VIN__PRTDSI__SYNC_OUT EQU CYREG_PRT1_SYNC_OUT
VIN__PS EQU CYREG_PRT1_PS
VIN__SHIFT EQU 2
VIN__SLW EQU CYREG_PRT1_SLW

/* VOUT */
VOUT__0__INTTYPE EQU CYREG_PICU2_INTTYPE6
VOUT__0__MASK EQU 0x40
VOUT__0__PC EQU CYREG_PRT2_PC6
VOUT__0__PORT EQU 2
VOUT__0__SHIFT EQU 6
VOUT__AG EQU CYREG_PRT2_AG
VOUT__AMUX EQU CYREG_PRT2_AMUX
VOUT__BIE EQU CYREG_PRT2_BIE
VOUT__BIT_MASK EQU CYREG_PRT2_BIT_MASK
VOUT__BYP EQU CYREG_PRT2_BYP
VOUT__CTL EQU CYREG_PRT2_CTL
VOUT__DM0 EQU CYREG_PRT2_DM0
VOUT__DM1 EQU CYREG_PRT2_DM1
VOUT__DM2 EQU CYREG_PRT2_DM2
VOUT__DR EQU CYREG_PRT2_DR
VOUT__INP_DIS EQU CYREG_PRT2_INP_DIS
VOUT__INTTYPE_BASE EQU CYDEV_PICU_INTTYPE_PICU2_BASE
VOUT__LCD_COM_SEG EQU CYREG_PRT2_LCD_COM_SEG
VOUT__LCD_EN EQU CYREG_PRT2_LCD_EN
VOUT__MASK EQU 0x40
VOUT__PORT EQU 2
VOUT__PRT EQU CYREG_PRT2_PRT
VOUT__PRTDSI__CAPS_SEL EQU CYREG_PRT2_CAPS_SEL
VOUT__PRTDSI__DBL_SYNC_IN EQU CYREG_PRT2_DBL_SYNC_IN
VOUT__PRTDSI__OE_SEL0 EQU CYREG_PRT2_OE_SEL0
VOUT__PRTDSI__OE_SEL1 EQU CYREG_PRT2_OE_SEL1
VOUT__PRTDSI__OUT_SEL0 EQU CYREG_PRT2_OUT_SEL0
VOUT__PRTDSI__OUT_SEL1 EQU CYREG_PRT2_OUT_SEL1
VOUT__PRTDSI__SYNC_OUT EQU CYREG_PRT2_SYNC_OUT
VOUT__PS EQU CYREG_PRT2_PS
VOUT__SHIFT EQU 6
VOUT__SLW EQU CYREG_PRT2_SLW

/* VREF */
VREF__0__INTTYPE EQU CYREG_PICU2_INTTYPE0
VREF__0__MASK EQU 0x01
VREF__0__PC EQU CYREG_PRT2_PC0
VREF__0__PORT EQU 2
VREF__0__SHIFT EQU 0
VREF__AG EQU CYREG_PRT2_AG
VREF__AMUX EQU CYREG_PRT2_AMUX
VREF__BIE EQU CYREG_PRT2_BIE
VREF__BIT_MASK EQU CYREG_PRT2_BIT_MASK
VREF__BYP EQU CYREG_PRT2_BYP
VREF__CTL EQU CYREG_PRT2_CTL
VREF__DM0 EQU CYREG_PRT2_DM0
VREF__DM1 EQU CYREG_PRT2_DM1
VREF__DM2 EQU CYREG_PRT2_DM2
VREF__DR EQU CYREG_PRT2_DR
VREF__INP_DIS EQU CYREG_PRT2_INP_DIS
VREF__INTTYPE_BASE EQU CYDEV_PICU_INTTYPE_PICU2_BASE
VREF__LCD_COM_SEG EQU CYREG_PRT2_LCD_COM_SEG
VREF__LCD_EN EQU CYREG_PRT2_LCD_EN
VREF__MASK EQU 0x01
VREF__PORT EQU 2
VREF__PRT EQU CYREG_PRT2_PRT
VREF__PRTDSI__CAPS_SEL EQU CYREG_PRT2_CAPS_SEL
VREF__PRTDSI__DBL_SYNC_IN EQU CYREG_PRT2_DBL_SYNC_IN
VREF__PRTDSI__OE_SEL0 EQU CYREG_PRT2_OE_SEL0
VREF__PRTDSI__OE_SEL1 EQU CYREG_PRT2_OE_SEL1
VREF__PRTDSI__OUT_SEL0 EQU CYREG_PRT2_OUT_SEL0
VREF__PRTDSI__OUT_SEL1 EQU CYREG_PRT2_OUT_SEL1
VREF__PRTDSI__SYNC_OUT EQU CYREG_PRT2_SYNC_OUT
VREF__PS EQU CYREG_PRT2_PS
VREF__SHIFT EQU 0
VREF__SLW EQU CYREG_PRT2_SLW

/* EZI2C */
EZI2C_I2C_Prim__ADR EQU CYREG_I2C_ADR
EZI2C_I2C_Prim__CFG EQU CYREG_I2C_CFG
EZI2C_I2C_Prim__CLK_DIV1 EQU CYREG_I2C_CLK_DIV1
EZI2C_I2C_Prim__CLK_DIV2 EQU CYREG_I2C_CLK_DIV2
EZI2C_I2C_Prim__CSR EQU CYREG_I2C_CSR
EZI2C_I2C_Prim__D EQU CYREG_I2C_D
EZI2C_I2C_Prim__MCSR EQU CYREG_I2C_MCSR
EZI2C_I2C_Prim__PM_ACT_CFG EQU CYREG_PM_ACT_CFG5
EZI2C_I2C_Prim__PM_ACT_MSK EQU 0x04
EZI2C_I2C_Prim__PM_STBY_CFG EQU CYREG_PM_STBY_CFG5
EZI2C_I2C_Prim__PM_STBY_MSK EQU 0x04
EZI2C_I2C_Prim__TMOUT_CFG0 EQU CYREG_I2C_TMOUT_CFG0
EZI2C_I2C_Prim__TMOUT_CFG1 EQU CYREG_I2C_TMOUT_CFG1
EZI2C_I2C_Prim__TMOUT_CSR EQU CYREG_I2C_TMOUT_CSR
EZI2C_I2C_Prim__TMOUT_SR EQU CYREG_I2C_TMOUT_SR
EZI2C_I2C_Prim__XCFG EQU CYREG_I2C_XCFG
EZI2C_isr__INTC_CLR_EN_REG EQU CYREG_NVIC_CLRENA0
EZI2C_isr__INTC_CLR_PD_REG EQU CYREG_NVIC_CLRPEND0
EZI2C_isr__INTC_MASK EQU 0x8000
EZI2C_isr__INTC_NUMBER EQU 15
EZI2C_isr__INTC_PRIOR_NUM EQU 7
EZI2C_isr__INTC_PRIOR_REG EQU CYREG_NVIC_PRI_15
EZI2C_isr__INTC_SET_EN_REG EQU CYREG_NVIC_SETENA0
EZI2C_isr__INTC_SET_PD_REG EQU CYREG_NVIC_SETPEND0

/* Mixer */
Mixer_SC__BST EQU CYREG_SC1_BST
Mixer_SC__CLK EQU CYREG_SC1_CLK
Mixer_SC__CMPINV EQU CYREG_SC_CMPINV
Mixer_SC__CMPINV_MASK EQU 0x02
Mixer_SC__CPTR EQU CYREG_SC_CPTR
Mixer_SC__CPTR_MASK EQU 0x02
Mixer_SC__CR0 EQU CYREG_SC1_CR0
Mixer_SC__CR1 EQU CYREG_SC1_CR1
Mixer_SC__CR2 EQU CYREG_SC1_CR2
Mixer_SC__MSK EQU CYREG_SC_MSK
Mixer_SC__MSK_MASK EQU 0x02
Mixer_SC__PM_ACT_CFG EQU CYREG_PM_ACT_CFG9
Mixer_SC__PM_ACT_MSK EQU 0x02
Mixer_SC__PM_STBY_CFG EQU CYREG_PM_STBY_CFG9
Mixer_SC__PM_STBY_MSK EQU 0x02
Mixer_SC__SR EQU CYREG_SC_SR
Mixer_SC__SR_MASK EQU 0x02
Mixer_SC__SW0 EQU CYREG_SC1_SW0
Mixer_SC__SW10 EQU CYREG_SC1_SW10
Mixer_SC__SW2 EQU CYREG_SC1_SW2
Mixer_SC__SW3 EQU CYREG_SC1_SW3
Mixer_SC__SW4 EQU CYREG_SC1_SW4
Mixer_SC__SW6 EQU CYREG_SC1_SW6
Mixer_SC__SW7 EQU CYREG_SC1_SW7
Mixer_SC__SW8 EQU CYREG_SC1_SW8
Mixer_SC__WRK1 EQU CYREG_SC_WRK1
Mixer_SC__WRK1_MASK EQU 0x02

/* ENCODER */
ENCODER__0__INTTYPE EQU CYREG_PICU1_INTTYPE6
ENCODER__0__MASK EQU 0x40
ENCODER__0__PC EQU CYREG_PRT1_PC6
ENCODER__0__PORT EQU 1
ENCODER__0__SHIFT EQU 6
ENCODER__AG EQU CYREG_PRT1_AG
ENCODER__AMUX EQU CYREG_PRT1_AMUX
ENCODER__BIE EQU CYREG_PRT1_BIE
ENCODER__BIT_MASK EQU CYREG_PRT1_BIT_MASK
ENCODER__BYP EQU CYREG_PRT1_BYP
ENCODER__CTL EQU CYREG_PRT1_CTL
ENCODER__DM0 EQU CYREG_PRT1_DM0
ENCODER__DM1 EQU CYREG_PRT1_DM1
ENCODER__DM2 EQU CYREG_PRT1_DM2
ENCODER__DR EQU CYREG_PRT1_DR
ENCODER__INP_DIS EQU CYREG_PRT1_INP_DIS
ENCODER__INTTYPE_BASE EQU CYDEV_PICU_INTTYPE_PICU1_BASE
ENCODER__LCD_COM_SEG EQU CYREG_PRT1_LCD_COM_SEG
ENCODER__LCD_EN EQU CYREG_PRT1_LCD_EN
ENCODER__MASK EQU 0x40
ENCODER__PORT EQU 1
ENCODER__PRT EQU CYREG_PRT1_PRT
ENCODER__PRTDSI__CAPS_SEL EQU CYREG_PRT1_CAPS_SEL
ENCODER__PRTDSI__DBL_SYNC_IN EQU CYREG_PRT1_DBL_SYNC_IN
ENCODER__PRTDSI__OE_SEL0 EQU CYREG_PRT1_OE_SEL0
ENCODER__PRTDSI__OE_SEL1 EQU CYREG_PRT1_OE_SEL1
ENCODER__PRTDSI__OUT_SEL0 EQU CYREG_PRT1_OUT_SEL0
ENCODER__PRTDSI__OUT_SEL1 EQU CYREG_PRT1_OUT_SEL1
ENCODER__PRTDSI__SYNC_OUT EQU CYREG_PRT1_SYNC_OUT
ENCODER__PS EQU CYREG_PRT1_PS
ENCODER__SHIFT EQU 6
ENCODER__SLW EQU CYREG_PRT1_SLW

/* Miscellaneous */
BCLK__BUS_CLK__HZ EQU 24000000
BCLK__BUS_CLK__KHZ EQU 24000
BCLK__BUS_CLK__MHZ EQU 24
CYDEV_CHIP_DIE_LEOPARD EQU 1
CYDEV_CHIP_DIE_PSOC4A EQU 18
CYDEV_CHIP_DIE_PSOC5LP EQU 2
CYDEV_CHIP_DIE_PSOC5TM EQU 3
CYDEV_CHIP_DIE_TMA4 EQU 4
CYDEV_CHIP_DIE_UNKNOWN EQU 0
CYDEV_CHIP_FAMILY_FM0P EQU 5
CYDEV_CHIP_FAMILY_FM3 EQU 6
CYDEV_CHIP_FAMILY_FM4 EQU 7
CYDEV_CHIP_FAMILY_PSOC3 EQU 1
CYDEV_CHIP_FAMILY_PSOC4 EQU 2
CYDEV_CHIP_FAMILY_PSOC5 EQU 3
CYDEV_CHIP_FAMILY_PSOC6 EQU 4
CYDEV_CHIP_FAMILY_UNKNOWN EQU 0
CYDEV_CHIP_FAMILY_USED EQU CYDEV_CHIP_FAMILY_PSOC5
CYDEV_CHIP_JTAG_ID EQU 0x2E161069
CYDEV_CHIP_MEMBER_3A EQU 1
CYDEV_CHIP_MEMBER_4A EQU 18
CYDEV_CHIP_MEMBER_4D EQU 13
CYDEV_CHIP_MEMBER_4E EQU 6
CYDEV_CHIP_MEMBER_4F EQU 19
CYDEV_CHIP_MEMBER_4G EQU 4
CYDEV_CHIP_MEMBER_4H EQU 17
CYDEV_CHIP_MEMBER_4I EQU 23
CYDEV_CHIP_MEMBER_4J EQU 14
CYDEV_CHIP_MEMBER_4K EQU 15
CYDEV_CHIP_MEMBER_4L EQU 22
CYDEV_CHIP_MEMBER_4M EQU 21
CYDEV_CHIP_MEMBER_4N EQU 10
CYDEV_CHIP_MEMBER_4O EQU 7
CYDEV_CHIP_MEMBER_4P EQU 20
CYDEV_CHIP_MEMBER_4Q EQU 12
CYDEV_CHIP_MEMBER_4R EQU 8
CYDEV_CHIP_MEMBER_4S EQU 11
CYDEV_CHIP_MEMBER_4T EQU 9
CYDEV_CHIP_MEMBER_4U EQU 5
CYDEV_CHIP_MEMBER_4V EQU 16
CYDEV_CHIP_MEMBER_5A EQU 3
CYDEV_CHIP_MEMBER_5B EQU 2
CYDEV_CHIP_MEMBER_6A EQU 24
CYDEV_CHIP_MEMBER_FM3 EQU 28
CYDEV_CHIP_MEMBER_FM4 EQU 29
CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 EQU 25
CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 EQU 26
CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 EQU 27
CYDEV_CHIP_MEMBER_UNKNOWN EQU 0
CYDEV_CHIP_MEMBER_USED EQU CYDEV_CHIP_MEMBER_5B
CYDEV_CHIP_DIE_EXPECT EQU CYDEV_CHIP_MEMBER_USED
CYDEV_CHIP_DIE_ACTUAL EQU CYDEV_CHIP_DIE_EXPECT
CYDEV_CHIP_REV_LEOPARD_ES1 EQU 0
CYDEV_CHIP_REV_LEOPARD_ES2 EQU 1
CYDEV_CHIP_REV_LEOPARD_ES3 EQU 3
CYDEV_CHIP_REV_LEOPARD_PRODUCTION EQU 3
CYDEV_CHIP_REV_PSOC4A_ES0 EQU 17
CYDEV_CHIP_REV_PSOC4A_PRODUCTION EQU 17
CYDEV_CHIP_REV_PSOC5LP_ES0 EQU 0
CYDEV_CHIP_REV_PSOC5LP_PRODUCTION EQU 0
CYDEV_CHIP_REV_PSOC5TM_ES0 EQU 0
CYDEV_CHIP_REV_PSOC5TM_ES1 EQU 1
CYDEV_CHIP_REV_PSOC5TM_PRODUCTION EQU 1
CYDEV_CHIP_REV_TMA4_ES EQU 17
CYDEV_CHIP_REV_TMA4_ES2 EQU 33
CYDEV_CHIP_REV_TMA4_PRODUCTION EQU 17
CYDEV_CHIP_REVISION_3A_ES1 EQU 0
CYDEV_CHIP_REVISION_3A_ES2 EQU 1
CYDEV_CHIP_REVISION_3A_ES3 EQU 3
CYDEV_CHIP_REVISION_3A_PRODUCTION EQU 3
CYDEV_CHIP_REVISION_4A_ES0 EQU 17
CYDEV_CHIP_REVISION_4A_PRODUCTION EQU 17
CYDEV_CHIP_REVISION_4D_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4E_CCG2_NO_USBPD EQU 0
CYDEV_CHIP_REVISION_4E_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4F_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA EQU 0
CYDEV_CHIP_REVISION_4F_PRODUCTION_256K EQU 0
CYDEV_CHIP_REVISION_4G_ES EQU 17
CYDEV_CHIP_REVISION_4G_ES2 EQU 33
CYDEV_CHIP_REVISION_4G_PRODUCTION EQU 17
CYDEV_CHIP_REVISION_4H_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4I_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4J_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4K_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4L_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4M_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4N_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4O_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4P_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4Q_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4R_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4S_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4T_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4U_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_4V_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_5A_ES0 EQU 0
CYDEV_CHIP_REVISION_5A_ES1 EQU 1
CYDEV_CHIP_REVISION_5A_PRODUCTION EQU 1
CYDEV_CHIP_REVISION_5B_ES0 EQU 0
CYDEV_CHIP_REVISION_5B_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_6A_ES EQU 17
CYDEV_CHIP_REVISION_6A_NO_UDB EQU 33
CYDEV_CHIP_REVISION_6A_PRODUCTION EQU 33
CYDEV_CHIP_REVISION_FM3_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_FM4_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION EQU 0
CYDEV_CHIP_REVISION_USED EQU CYDEV_CHIP_REVISION_5B_PRODUCTION
CYDEV_CHIP_REV_EXPECT EQU CYDEV_CHIP_REVISION_USED
CYDEV_CONFIG_FASTBOOT_ENABLED EQU 1
CYDEV_CONFIG_UNUSED_IO_AllowButWarn EQU 0
CYDEV_CONFIG_UNUSED_IO EQU CYDEV_CONFIG_UNUSED_IO_AllowButWarn
CYDEV_CONFIG_UNUSED_IO_AllowWithInfo EQU 1
CYDEV_CONFIG_UNUSED_IO_Disallowed EQU 2
CYDEV_CONFIGURATION_COMPRESSED EQU 1
CYDEV_CONFIGURATION_DMA EQU 0
CYDEV_CONFIGURATION_ECC EQU 1
CYDEV_CONFIGURATION_IMOENABLED EQU CYDEV_CONFIG_FASTBOOT_ENABLED
CYDEV_CONFIGURATION_MODE_COMPRESSED EQU 0
CYDEV_CONFIGURATION_MODE EQU CYDEV_CONFIGURATION_MODE_COMPRESSED
CYDEV_CONFIGURATION_MODE_DMA EQU 2
CYDEV_CONFIGURATION_MODE_UNCOMPRESSED EQU 1
CYDEV_DEBUG_ENABLE_MASK EQU 0x20
CYDEV_DEBUG_ENABLE_REGISTER EQU CYREG_MLOGIC_DEBUG
CYDEV_DEBUGGING_DPS_Disable EQU 3
CYDEV_DEBUGGING_DPS_JTAG_4 EQU 1
CYDEV_DEBUGGING_DPS_JTAG_5 EQU 0
CYDEV_DEBUGGING_DPS_SWD EQU 2
CYDEV_DEBUGGING_DPS_SWD_SWV EQU 6
CYDEV_DEBUGGING_DPS EQU CYDEV_DEBUGGING_DPS_SWD_SWV
CYDEV_DEBUGGING_ENABLE EQU 1
CYDEV_DEBUGGING_XRES EQU 0
CYDEV_DMA_CHANNELS_AVAILABLE EQU 24
CYDEV_ECC_ENABLE EQU 0
CYDEV_HEAP_SIZE EQU 0x80
CYDEV_INSTRUCT_CACHE_ENABLED EQU 1
CYDEV_INTR_RISING EQU 0x00008000
CYDEV_IS_EXPORTING_CODE EQU 0
CYDEV_IS_IMPORTING_CODE EQU 0
CYDEV_PROJ_TYPE EQU 0
CYDEV_PROJ_TYPE_BOOTLOADER EQU 1
CYDEV_PROJ_TYPE_LAUNCHER EQU 5
CYDEV_PROJ_TYPE_LOADABLE EQU 2
CYDEV_PROJ_TYPE_LOADABLEANDBOOTLOADER EQU 4
CYDEV_PROJ_TYPE_MULTIAPPBOOTLOADER EQU 3
CYDEV_PROJ_TYPE_STANDARD EQU 0
CYDEV_PROTECTION_ENABLE EQU 0
CYDEV_STACK_SIZE EQU 0x0800
CYDEV_USE_BUNDLED_CMSIS EQU 1
CYDEV_VARIABLE_VDDA EQU 0
CYDEV_VDDA_MV EQU 5000
CYDEV_VDDD_MV EQU 5000
CYDEV_VDDIO0_MV EQU 5000
CYDEV_VDDIO1_MV EQU 5000
CYDEV_VDDIO2_MV EQU 5000
CYDEV_VDDIO3_MV EQU 5000
CYDEV_VIO0_MV EQU 5000
CYDEV_VIO1_MV EQU 5000
CYDEV_VIO2_MV EQU 5000
CYDEV_VIO3_MV EQU 5000
CYIPBLOCK_ARM_CM3_VERSION EQU 0
CYIPBLOCK_P3_ANAIF_VERSION EQU 0
CYIPBLOCK_P3_CAN_VERSION EQU 0
CYIPBLOCK_P3_CAPSENSE_VERSION EQU 0
CYIPBLOCK_P3_COMP_VERSION EQU 0
CYIPBLOCK_P3_DECIMATOR_VERSION EQU 0
CYIPBLOCK_P3_DFB_VERSION EQU 0
CYIPBLOCK_P3_DMA_VERSION EQU 0
CYIPBLOCK_P3_DRQ_VERSION EQU 0
CYIPBLOCK_P3_DSM_VERSION EQU 0
CYIPBLOCK_P3_EMIF_VERSION EQU 0
CYIPBLOCK_P3_I2C_VERSION EQU 0
CYIPBLOCK_P3_LCD_VERSION EQU 0
CYIPBLOCK_P3_LPF_VERSION EQU 0
CYIPBLOCK_P3_OPAMP_VERSION EQU 0
CYIPBLOCK_P3_PM_VERSION EQU 0
CYIPBLOCK_P3_SCCT_VERSION EQU 0
CYIPBLOCK_P3_TIMER_VERSION EQU 0
CYIPBLOCK_P3_USB_VERSION EQU 0
CYIPBLOCK_P3_VIDAC_VERSION EQU 0
CYIPBLOCK_P3_VREF_VERSION EQU 0
CYIPBLOCK_S8_GPIO_VERSION EQU 0
CYIPBLOCK_S8_IRQ_VERSION EQU 0
CYIPBLOCK_S8_SAR_VERSION EQU 0
CYIPBLOCK_S8_SIO_VERSION EQU 0
CYIPBLOCK_S8_UDB_VERSION EQU 0
DMA_CHANNELS_USED__MASK0 EQU 0x00000000
CYDEV_BOOTLOADER_ENABLE EQU 0

#endif /* INCLUDED_CYFITTERIAR_INC */