/*******************************************************************************
* File Name: VREF.h  
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

#if !defined(CY_PINS_VREF_H) /* Pins VREF_H */
#define CY_PINS_VREF_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "VREF_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 VREF__PORT == 15 && ((VREF__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    VREF_Write(uint8 value);
void    VREF_SetDriveMode(uint8 mode);
uint8   VREF_ReadDataReg(void);
uint8   VREF_Read(void);
void    VREF_SetInterruptMode(uint16 position, uint16 mode);
uint8   VREF_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the VREF_SetDriveMode() function.
     *  @{
     */
        #define VREF_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define VREF_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define VREF_DM_RES_UP          PIN_DM_RES_UP
        #define VREF_DM_RES_DWN         PIN_DM_RES_DWN
        #define VREF_DM_OD_LO           PIN_DM_OD_LO
        #define VREF_DM_OD_HI           PIN_DM_OD_HI
        #define VREF_DM_STRONG          PIN_DM_STRONG
        #define VREF_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define VREF_MASK               VREF__MASK
#define VREF_SHIFT              VREF__SHIFT
#define VREF_WIDTH              1u

/* Interrupt constants */
#if defined(VREF__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in VREF_SetInterruptMode() function.
     *  @{
     */
        #define VREF_INTR_NONE      (uint16)(0x0000u)
        #define VREF_INTR_RISING    (uint16)(0x0001u)
        #define VREF_INTR_FALLING   (uint16)(0x0002u)
        #define VREF_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define VREF_INTR_MASK      (0x01u) 
#endif /* (VREF__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define VREF_PS                     (* (reg8 *) VREF__PS)
/* Data Register */
#define VREF_DR                     (* (reg8 *) VREF__DR)
/* Port Number */
#define VREF_PRT_NUM                (* (reg8 *) VREF__PRT) 
/* Connect to Analog Globals */                                                  
#define VREF_AG                     (* (reg8 *) VREF__AG)                       
/* Analog MUX bux enable */
#define VREF_AMUX                   (* (reg8 *) VREF__AMUX) 
/* Bidirectional Enable */                                                        
#define VREF_BIE                    (* (reg8 *) VREF__BIE)
/* Bit-mask for Aliased Register Access */
#define VREF_BIT_MASK               (* (reg8 *) VREF__BIT_MASK)
/* Bypass Enable */
#define VREF_BYP                    (* (reg8 *) VREF__BYP)
/* Port wide control signals */                                                   
#define VREF_CTL                    (* (reg8 *) VREF__CTL)
/* Drive Modes */
#define VREF_DM0                    (* (reg8 *) VREF__DM0) 
#define VREF_DM1                    (* (reg8 *) VREF__DM1)
#define VREF_DM2                    (* (reg8 *) VREF__DM2) 
/* Input Buffer Disable Override */
#define VREF_INP_DIS                (* (reg8 *) VREF__INP_DIS)
/* LCD Common or Segment Drive */
#define VREF_LCD_COM_SEG            (* (reg8 *) VREF__LCD_COM_SEG)
/* Enable Segment LCD */
#define VREF_LCD_EN                 (* (reg8 *) VREF__LCD_EN)
/* Slew Rate Control */
#define VREF_SLW                    (* (reg8 *) VREF__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define VREF_PRTDSI__CAPS_SEL       (* (reg8 *) VREF__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define VREF_PRTDSI__DBL_SYNC_IN    (* (reg8 *) VREF__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define VREF_PRTDSI__OE_SEL0        (* (reg8 *) VREF__PRTDSI__OE_SEL0) 
#define VREF_PRTDSI__OE_SEL1        (* (reg8 *) VREF__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define VREF_PRTDSI__OUT_SEL0       (* (reg8 *) VREF__PRTDSI__OUT_SEL0) 
#define VREF_PRTDSI__OUT_SEL1       (* (reg8 *) VREF__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define VREF_PRTDSI__SYNC_OUT       (* (reg8 *) VREF__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(VREF__SIO_CFG)
    #define VREF_SIO_HYST_EN        (* (reg8 *) VREF__SIO_HYST_EN)
    #define VREF_SIO_REG_HIFREQ     (* (reg8 *) VREF__SIO_REG_HIFREQ)
    #define VREF_SIO_CFG            (* (reg8 *) VREF__SIO_CFG)
    #define VREF_SIO_DIFF           (* (reg8 *) VREF__SIO_DIFF)
#endif /* (VREF__SIO_CFG) */

/* Interrupt Registers */
#if defined(VREF__INTSTAT)
    #define VREF_INTSTAT            (* (reg8 *) VREF__INTSTAT)
    #define VREF_SNAP               (* (reg8 *) VREF__SNAP)
    
	#define VREF_0_INTTYPE_REG 		(* (reg8 *) VREF__0__INTTYPE)
#endif /* (VREF__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_VREF_H */


/* [] END OF FILE */
