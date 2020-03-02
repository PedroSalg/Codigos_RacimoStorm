--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:48:57 02/06/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Erase_Sequence/Simu_Top.vhd
-- Project Name:  Erase_Sequence
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP
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
 
ENTITY Simu_Top IS
END Simu_Top;
 
ARCHITECTURE behavior OF Simu_Top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP
    PORT(
         SW0 : IN  std_logic;
         CLK : IN  std_logic;
         A : OUT  std_logic_vector(19 downto 0);
         DQ : OUT  std_logic_vector(7 downto 0);
         CE : OUT  std_logic;
         OE : OUT  std_logic;
         WE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SW0 : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal A : std_logic_vector(19 downto 0);
   signal DQ : std_logic_vector(7 downto 0);
   signal CE : std_logic;
   signal OE : std_logic;
   signal WE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP PORT MAP (
          SW0 => SW0,
          CLK => CLK,
          A => A,
          DQ => DQ,
          CE => CE,
          OE => OE,
          WE => WE
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
      ---- hold reset state for 100 ns.
      --wait for 100 ns;	
		
		SW0 <= '1';
		wait for CLK_period*100;
		SW0 <= '0';
      wait for CLK_period*50000;
		SW0 <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
