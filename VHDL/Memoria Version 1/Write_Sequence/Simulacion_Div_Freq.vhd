LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Simulacion_Div_Freq IS
END Simulacion_Div_Freq;
 
ARCHITECTURE behavior OF Simulacion_Div_Freq IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Div_Fre_Var
    PORT(
         EN : IN  std_logic;
         CLK : IN  std_logic;
         FREQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal EN : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal FREQ : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Div_Fre_Var PORT MAP (
          EN => EN,
          CLK => CLK,
          FREQ => FREQ
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
      wait for 100 ns;	
		EN <= '0';
		wait for CLK_period*5;
		EN <= '1';
      wait for CLK_period*500;

      -- insert stimulus here 

      wait;
   end process;

END;
