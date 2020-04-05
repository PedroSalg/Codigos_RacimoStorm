--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:47:44 04/04/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Escritura_Borrado_Lectura/Escritura/Simuacion_SM_Ctrl.vhd
-- Project Name:  Escritura
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SM_CTRL
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
 
ENTITY Simuacion_SM_Ctrl IS
END Simuacion_SM_Ctrl;
 
ARCHITECTURE behavior OF Simuacion_SM_Ctrl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SM_CTRL
    PORT(
         sw0 : IN  std_logic;
         sw1 : IN  std_logic;
         sw2 : IN  std_logic;
         clk : IN  std_logic;
         rst_sm_ctrl : IN  std_logic;
         en_sm_ctrl : IN  std_logic;
         escribir : OUT  std_logic;
         borrado : OUT  std_logic;
         reset : OUT  std_logic;
         leer : OUT  std_logic;
         selector : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sw0 : std_logic := '0';
   signal sw1 : std_logic := '0';
   signal sw2 : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst_sm_ctrl : std_logic := '0';
   signal en_sm_ctrl : std_logic := '0';

 	--Outputs
   signal escribir : std_logic;
   signal borrado : std_logic;
   signal reset : std_logic;
   signal leer : std_logic;
   signal selector : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SM_CTRL PORT MAP (
          sw0 => sw0,
          sw1 => sw1,
          sw2 => sw2,
          clk => clk,
          rst_sm_ctrl => rst_sm_ctrl,
          en_sm_ctrl => en_sm_ctrl,
          escribir => escribir,
          borrado => borrado,
          reset => reset,
          leer => leer,
          selector => selector
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
      
		sw0 <= '1';
		sw1 <= '1';
		sw2 <= '1';
		en_sm_ctrl <= '1';
      wait for clk_period*5;

		sw0 <= '0';
		wait for clk_period*2;
		
		sw0 <= '1';
		wait for clk_period*5;
		
		sw1 <= '0';
		wait for clk_period*2;
		
		sw1 <= '1';
		wait for clk_period*5;
		
		sw2 <= '0';
		wait for clk_period*2;
		
		sw2 <= '1';
		wait for clk_period*5;
		
      -- insert stimulus here 

      wait;
   end process;

END;
