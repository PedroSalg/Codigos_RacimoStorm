LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Simulacion IS
END Simulacion;
 
ARCHITECTURE behavior OF Simulacion IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT I2C_Prueba
    PORT(
         SCL : INOUT  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         SDA : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

	--BiDirs
   signal SCL : std_logic;
   signal SDA : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: I2C_Prueba PORT MAP (
          SCL => SCL,
          clk => clk,
          rst => rst,
          SDA => SDA
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
		rst <= '0';
		read_req <= '1';
      wait for clk_period*10;
		read_req <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
