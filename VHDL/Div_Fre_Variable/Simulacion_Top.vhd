--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:21:07 12/11/2019
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Div_Fre_Variable/Simulacion_Top.vhd
-- Project Name:  Div_Fre_Variable
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PWM_SIGNAL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Simulacion_Top IS
END Simulacion_Top;
 
ARCHITECTURE behavior OF Simulacion_Top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PWM_SIGNAL
    PORT(
         CLK : IN  std_logic;
         PWM_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';

 	--Outputs
   signal PWM_OUT : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PWM_SIGNAL PORT MAP (
          CLK => CLK,
          PWM_OUT => PWM_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
