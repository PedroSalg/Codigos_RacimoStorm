/*******************************************************************************
* File Name: VDC.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_VDC_H) /* Pins VDC_H */
#define CY_PINS_VDC_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "VDC_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 VDC__PORT == 15 && ((VDC__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    VDC_Write(uint8 value);
void    VDC_SetDriveMode(uint8 mode);
uint8   VDC_ReadDataReg(void);
uint8   VDC_Read(void);
void    VDC_SetInterruptMode(uint16 position, uint16 mode);
uint8   VDC_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the VDC_SetDriveMode() function.
     *  @{
     */
        #define VDC_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define VDC_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define VDC_DM_RES_UP          PIN_DM_RES_UP
        #define VDC_DM_RES_DWN         PIN_DM_RES_DWN
        #define VDC_DM_OD_LO           PIN_DM_OD_LO
        #define VDC_DM_OD_HI           PIN_DM_OD_HI
        #define VDC_DM_STRONG          PIN_DM_STRONG
        #define VDC_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define VDC_MASK               VDC__MASK
#define VDC_SHIFT              VDC__SHIFT
#define VDC_WIDTH              1u

/* Interrupt constants */
#if defined(VDC__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in VDC_SetInterruptMode() function.
     *  @{
     */
        #define VDC_INTR_NONE      (uint16)(0x0000u)
        #define VDC_INTR_RISING    (uint16)(0x0001u)
        #define VDC_INTR_FALLING   (uint16)(0x0002u)
        #define VDC_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define VDC_INTR_MASK      (0x01u) 
#endif /* (VDC__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define VDC_PS                     (* (reg8 *) VDC__PS)
/* Data Register */
#define VDC_DR                     (* (reg8 *) VDC__DR)
/* Port Number */
#define VDC_PRT_NUM                (* (reg8 *) VDC__PRT) 
/* Connect to Analog Globals */                                                  
#define VDC_AG                     (* (reg8 *) VDC__AG)                       
/* Analog MUX bux enable */
#define VDC_AMUX                   (* (reg8 *) VDC__AMUX) 
/* Bidirectional Enable */                                                        
#define VDC_BIE                    (* (reg8 *) VDC__BIE)
/* Bit-mask for Aliased Register Access */
#define VDC_BIT_MASK               (* (reg8 *) VDC__BIT_MASK)
/* Bypass Enable */
#define VDC_BYP                    (* (reg8 *) VDC__BYP)
/* Port wide control signals */                                                   
#define VDC_CTL                    (* (reg8 *) VDC__CTL)
/* Drive Modes */
#define VDC_DM0                    (* (reg8 *) VDC__DM0) 
#define VDC_DM1                    (* (reg8 *) VDC__DM1)
#define VDC_DM2                    (* (reg8 *) VDC__DM2) 
/* Input Buffer Disable Override */
#define VDC_INP_DIS                (* (reg8 *) VDC__INP_DIS)
/* LCD Common or Segment Drive */
#define VDC_LCD_COM_SEG            (* (reg8 *) VDC__LCD_COM_SEG)
/* Enable Segment LCD */
#define VDC_LCD_EN                 (* (reg8 *) VDC__LCD_EN)
/* Slew Rate Control */
#define VDC_SLW                    (* (reg8 *) VDC__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define VDC_PRTDSI__CAPS_SEL       (* (reg8 *) VDC__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define VDC_PRTDSI__DBL_SYNC_IN    (* (reg8 *) VDC__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define VDC_PRTDSI__OE_SEL0        (* (reg8 *) VDC__PRTDSI__OE_SEL0) 
#define VDC_PRTDSI__OE_SEL1        (* (reg8 *) VDC__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define VDC_PRTDSI__OUT_SEL0       (* (reg8 *) VDC__PRTDSI__OUT_SEL0) 
#define VDC_PRTDSI__OUT_SEL1       (* (reg8 *) VDC__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define VDC_PRTDSI__SYNC_OUT       (* (reg8 *) VDC__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(VDC__SIO_CFG)
    #define VDC_SIO_HYST_EN        (* (reg8 *) VDC__SIO_HYST_EN)
    #define VDC_SIO_REG_HIFREQ     (* (reg8 *) VDC__SIO_REG_HIFREQ)
    #define VDC_SIO_CFG            (* (reg8 *) VDC__SIO_CFG)
    #define VDC_SIO_DIFF           (* (reg8 *) VDC__SIO_DIFF)
#endif /* (VDC__SIO_CFG) */

/* Interrupt Registers */
#if defined(VDC__INTSTAT)
    #define VDC_INTSTAT            (* (reg8 *) VDC__INTSTAT)
    #define VDC_SNAP               (* (reg8 *) VDC__SNAP)
    
	#define VDC_0_INTTYPE_REG 		(* (reg8 *) VDC__0__INTTYPE)
#endif /* (VDC__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_VDC_H */


/* [] END OF FILE */
