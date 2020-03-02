LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Simulacion_SM IS
END Simulacion_SM;
 
ARCHITECTURE behavior OF Simulacion_SM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SM
    PORT(
         SW0 : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         EN : IN  std_logic;
         A : OUT  std_logic_vector(19 downto 0);
         DQ : OUT  std_logic_vector(7 downto 0);
         OE : OUT  std_logic;
         CE : OUT  std_logic;
         WE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SW0 : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal A : std_logic_vector(19 downto 0);
   signal DQ : std_logic_vector(7 downto 0);
   signal OE : std_logic;
   signal CE : std_logic;
   signal WE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SM PORT MAP (
          SW0 => SW0,
          RST => RST,
          CLK => CLK,
          EN => EN,
          A => A,
          DQ => DQ,
          OE => OE,
          CE => CE,
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
      
		EN <= '1';
		SW0 <= '1';

      wait for CLK_period*10;
		
		SW0 <= '0';
		
		wait for CLK_period*10;
		
		SW0 <= '1';
		
		wait for CLK_period*100;

      -- insert stimulus here 

      wait;
   end process;

END;
