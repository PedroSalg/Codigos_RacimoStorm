--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:33:26 02/04/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Write_Sequence/SImlacion_COntador.vhd
-- Project Name:  Write_Sequence
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CNT
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
 
ENTITY SImlacion_COntador IS
END SImlacion_COntador;
 
ARCHITECTURE behavior OF SImlacion_COntador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CNT
    PORT(
         EN : IN  std_logic;
         CLK : IN  std_logic;
         SEL : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EN : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal SEL : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CNT PORT MAP (
          EN => EN,
          CLK => CLK,
          SEL => SEL
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
      EN <= '0';	

      wait for CLK_period*10;
		
		EN <= '1';
		wait for CLK_period*30;

      -- insert stimulus here 

      wait;
   end process;

END;
