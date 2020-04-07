--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:16:26 04/06/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Escritura_Borrado_Lectura/Esc_Lec_Bor_Toda_La_Memoria/Simulacion_TOP.vhd
-- Project Name:  Esc_Lec_Bor_Toda_La_Memoria
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TP
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
 
ENTITY Simulacion_TOP IS
END Simulacion_TOP;
 
ARCHITECTURE behavior OF Simulacion_TOP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TP
    PORT(
         SW0 : IN  std_logic;
         SW1 : IN  std_logic;
         SW2 : IN  std_logic;
         RESET : IN  std_logic;
         CLK : IN  std_logic;
         DQ_BIDIR : INOUT  std_logic_vector(15 downto 0);
         A : OUT  std_logic_vector(19 downto 0);
         CE : OUT  std_logic;
         OE : OUT  std_logic;
         WE : OUT  std_logic;
         LED : OUT  std_logic_vector(7 downto 0);
         RST_MEM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SW0 : std_logic := '0';
   signal SW1 : std_logic := '0';
   signal SW2 : std_logic := '0';
   signal RESET : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal DQ_BIDIR : std_logic_vector(15 downto 0);

 	--Outputs
   signal A : std_logic_vector(19 downto 0);
   signal CE : std_logic;
   signal OE : std_logic;
   signal WE : std_logic;
   signal LED : std_logic_vector(7 downto 0);
   signal RST_MEM : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TP PORT MAP (
          SW0 => SW0,
          SW1 => SW1,
          SW2 => SW2,
          RESET => RESET,
          CLK => CLK,
          DQ_BIDIR => DQ_BIDIR,
          A => A,
          CE => CE,
          OE => OE,
          WE => WE,
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
      -- wait for 100 ns;	
		SW0 <= '1';
		SW1 <= '1';
		SW2 <= '1';
		RESET <= '1';
      wait for CLK_period*5;
		
		SW0 <= '0';		
		wait for CLK_period*50;
		
		SW0 <= '1';
		wait for 1500 us;
		
		
		SW1 <= '0';		
		wait for CLK_period*50;
		
		SW1 <= '1';
		wait for 11 ms;
		
		SW2 <= '0';		
		wait for CLK_period*50;
		
		SW2 <= '1';
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
