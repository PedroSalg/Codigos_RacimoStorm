--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:43:08 02/06/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Erase_Sequence/Simulacion.vhd
-- Project Name:  Erase_Sequence
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CNT_101
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
 
    COMPONENT CNT_101
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         cnt : OUT  std_logic_vector(2 downto 0);
         en_cnt : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal en_cnt : std_logic := '0';

 	--Outputs
   signal cnt : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CNT_101 PORT MAP (
          clk => clk,
          rst => rst,
          cnt => cnt,
          en_cnt => en_cnt
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		en_cnt <= '1';

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
