--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:08:32 05/05/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/RACIMOStorm/Simulacion_V4.vhd
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
 
ENTITY Simulacion_V4 IS
END Simulacion_V4;
 
ARCHITECTURE behavior OF Simulacion_V4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RACIMOStorm
    PORT(
         SW0 : IN  std_logic;
         D : IN  std_logic_vector(11 downto 0);
         RESET : IN  std_logic;
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
   signal SW0 : std_logic := '0';
   signal D : std_logic_vector(11 downto 0) := (others => '0');
   signal RESET : std_logic := '0';
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
          SW0 => SW0,
          D => D,
          RESET => RESET,
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
		RESET <= '0';
		FROM_RP <= '0';
		SW0 <= '1';
		D <= "010000000000";
      wait for 100 us;	
		
		
		wait for 100 us;	
		SW0 <= '0';

      wait for CLK_period*10;
		
		FROM_RP <= '1';
		wait for 200 us;
		SW0 <= '1';
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		
		FROM_RP <= '1';
		wait for 200 us;
		
		FROM_RP <= '0';
		wait for 200 us;
		

      -- insert stimulus here 

      wait;
   end process;

END;
