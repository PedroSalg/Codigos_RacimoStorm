--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:58:56 05/07/2020
-- Design Name:   
-- Module Name:   /home/pedro/Documents/ISE/Registro_Serie_Serie/Simulacion_Serie_Serie.vhd
-- Project Name:  Registro_Serie_Serie
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Registro_Serie_Serie
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
 
ENTITY Simulacion_Serie_Serie IS
END Simulacion_Serie_Serie;
 
ARCHITECTURE behavior OF Simulacion_Serie_Serie IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registro_Serie_Serie
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic;
         sel : IN  std_logic;
         en_reg : IN  std_logic;
         rst_reg : IN  std_logic;
         data_out : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic := '0';
   signal sel : std_logic := '0';
   signal en_reg : std_logic := '0';
   signal rst_reg : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registro_Serie_Serie PORT MAP (
          clk => clk,
          data_in => data_in,
          sel => sel,
          en_reg => en_reg,
          rst_reg => rst_reg,
          data_out => data_out
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
		
		rst_reg <= '0';
		en_reg <= '0';
		data_in <= '1';
		sel <= '0';
		
		wait for clk_period;
		en_reg <= '1';
		sel <= '1';
		wait for clk_period;
			
      en_reg <= '0';
		sel <= '0';
		wait for clk_period*4;
		
		
		en_reg <= '1';
		sel <= '1';
		wait for clk_period*3;
		en_reg <= '0';
		sel <= '0';
		wait for clk_period;
		
		
		
		
		
		


      -- insert stimulus here 

      wait;
   end process;

END;
