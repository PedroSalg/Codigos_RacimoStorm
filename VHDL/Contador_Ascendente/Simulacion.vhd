--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:01:05 12/10/2019
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Contador_Ascendente/Simulacion.vhd
-- Project Name:  Contador_Ascendente
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contador_Ascendente
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
 
ENTITY Simulacion IS
END Simulacion;
 
ARCHITECTURE behavior OF Simulacion IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contador_Ascendente
    PORT(
         CLK : IN  std_logic;
         R : IN  std_logic;
         CNT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal R : std_logic := '0';

 	--Outputs
   signal CNT : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contador_Ascendente PORT MAP (
          CLK => CLK,
          R => R,
          CNT => CNT
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
		
		R <= '0';

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
