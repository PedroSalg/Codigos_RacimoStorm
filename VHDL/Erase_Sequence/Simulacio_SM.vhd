--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:08:03 02/06/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Erase_Sequence/Simulacio_SM.vhd
-- Project Name:  Erase_Sequence
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SM
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
 
ENTITY Simulacio_SM IS
END Simulacio_SM;
 
ARCHITECTURE behavior OF Simulacio_SM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SM
    PORT(
         A_IN : IN  std_logic_vector(19 downto 0);
         DQ_IN : IN  std_logic_vector(7 downto 0);
         CNT : IN  std_logic_vector(2 downto 0);
         CLK : IN  std_logic;
         sw0 : IN  std_logic;
         RST : IN  std_logic;
         EN_SM : IN  std_logic;
         EN_cnt : OUT  std_logic;
         A : OUT  std_logic_vector(19 downto 0);
         DQ : OUT  std_logic_vector(7 downto 0);
         CE : OUT  std_logic;
         OE : OUT  std_logic;
         WE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_IN : std_logic_vector(19 downto 0) := (others => '0');
   signal DQ_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal CNT : std_logic_vector(2 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal sw0 : std_logic := '0';
   signal RST : std_logic := '0';
   signal EN_SM : std_logic := '0';

 	--Outputs
   signal EN_cnt : std_logic;
   signal A : std_logic_vector(19 downto 0);
   signal DQ : std_logic_vector(7 downto 0);
   signal CE : std_logic;
   signal OE : std_logic;
   signal WE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SM PORT MAP (
          A_IN => A_IN,
          DQ_IN => DQ_IN,
          CNT => CNT,
          CLK => CLK,
          sw0 => sw0,
          RST => RST,
          EN_SM => EN_SM,
          EN_cnt => EN_cnt,
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
      -- hold reset state for 100 ns.
      --wait for 100 ns;	
		
		EN_SM <= '1';
		SW0  <= '1';
		cnt <= "000";
      wait for CLK_period*3;
		SW0  <= '0';
		wait for CLK_period*10;
		SW0  <= '1';
		wait for CLK_period*10;
		cnt <= "101";
		

      -- insert stimulus here 

      wait;
   end process;

END;
