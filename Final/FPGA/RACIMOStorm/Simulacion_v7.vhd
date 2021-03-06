--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:28:27 06/10/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Proyecto_grado/RACIMOStorm/Simulacion_v7.vhd
-- Project Name:  RACIMOStorm
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RACIMOStorm
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
 
ENTITY Simulacion_v7 IS
END Simulacion_v7;
 
ARCHITECTURE behavior OF Simulacion_v7 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RACIMOStorm
    PORT(
         D : IN  std_logic_vector(11 downto 0);
         FROM_RP : IN  std_logic;
         CLK : IN  std_logic;
         DQ_BIDIR : INOUT  std_logic_vector(11 downto 0);
         SDA : INOUT  std_logic;
         SCL : INOUT  std_logic;
         A : OUT  std_logic_vector(19 downto 0);
         CE : OUT  std_logic;
         OE : OUT  std_logic;
         WE : OUT  std_logic;
         Reloj_ADC : OUT  std_logic;
         TO_RP : OUT  std_logic;
         LED : OUT  std_logic_vector(7 downto 0);
         RST_MEM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(11 downto 0) := (others => '0');
   signal FROM_RP : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal DQ_BIDIR : std_logic_vector(11 downto 0);
   signal SDA : std_logic;
   signal SCL : std_logic;

 	--Outputs
   signal A : std_logic_vector(19 downto 0);
   signal CE : std_logic;
   signal OE : std_logic;
   signal WE : std_logic;
   signal Reloj_ADC : std_logic;
   signal TO_RP : std_logic;
   signal LED : std_logic_vector(7 downto 0);
   signal RST_MEM : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RACIMOStorm PORT MAP (
          D => D,
          FROM_RP => FROM_RP,
          CLK => CLK,
          DQ_BIDIR => DQ_BIDIR,
          SDA => SDA,
          SCL => SCL,
          A => A,
          CE => CE,
          OE => OE,
          WE => WE,
          Reloj_ADC => Reloj_ADC,
          TO_RP => TO_RP,
          LED => LED,
          RST_MEM => RST_MEM
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
      wait for 900 us;	

      wait for CLK_period*10;
			
      -- insert stimulus here 
		
		D <= "010110000000";
		wait for 8 us;	
		
		D <= "000000001010";
		
		

      wait;
   end process;

END;
