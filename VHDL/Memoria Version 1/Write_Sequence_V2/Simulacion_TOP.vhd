-------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Simulacion_TOP IS
END Simulacion_TOP;
 
ARCHITECTURE behavior OF Simulacion_TOP IS 
 
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
      -- hold reset state for 100 ns.
      --wait for 100 ns;	
		SW0 <= '1';
      wait for CLK_period*300;
		SW0 <= '0';
		wait for CLK_period*30;
		SW0 <= '1';
		wait for CLK_period*4000;
		SW0 <= '0';
		wait for CLK_period*30;
		SW0 <= '1';
		wait for CLK_period*4000;
		

      -- insert stimulus here 

      wait;
   end process;

END;
