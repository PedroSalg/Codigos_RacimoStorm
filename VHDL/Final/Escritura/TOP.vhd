--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:56:21 04/27/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Final/Escritura/TOP.vhd
-- Project Name:  Escritura
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Modulo_Escritura
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
 
ENTITY TOP IS
END TOP;
 
ARCHITECTURE behavior OF TOP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Modulo_Escritura
    PORT(
         clk : IN  std_logic;
         en_cnt_dir : IN  std_logic;
         rst_cnt_dir : IN  std_logic;
         escribir : IN  std_logic;
         div_frec : IN  std_logic;
         dq_in_esc : IN  std_logic_vector(11 downto 0);
         stop_cnt_dir : OUT  std_logic;
         a_esc : OUT  std_logic_vector(19 downto 0);
         dq_esc : OUT  std_logic_vector(11 downto 0);
         ce_esc : OUT  std_logic;
         oe_esc : OUT  std_logic;
         we_esc : OUT  std_logic;
         led_esc : OUT  std_logic_vector(7 downto 0);
         band_esc : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal en_cnt_dir : std_logic := '0';
   signal rst_cnt_dir : std_logic := '0';
   signal escribir : std_logic := '0';
   signal div_frec : std_logic := '0';
   signal dq_in_esc : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal stop_cnt_dir : std_logic;
   signal a_esc : std_logic_vector(19 downto 0);
   signal dq_esc : std_logic_vector(11 downto 0);
   signal ce_esc : std_logic;
   signal oe_esc : std_logic;
   signal we_esc : std_logic;
   signal led_esc : std_logic_vector(7 downto 0);
   signal band_esc : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Modulo_Escritura PORT MAP (
          clk => clk,
          en_cnt_dir => en_cnt_dir,
          rst_cnt_dir => rst_cnt_dir,
          escribir => escribir,
          div_frec => div_frec,
          dq_in_esc => dq_in_esc,
          stop_cnt_dir => stop_cnt_dir,
          a_esc => a_esc,
          dq_esc => dq_esc,
          ce_esc => ce_esc,
          oe_esc => oe_esc,
          we_esc => we_esc,
          led_esc => led_esc,
          band_esc => band_esc
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

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
