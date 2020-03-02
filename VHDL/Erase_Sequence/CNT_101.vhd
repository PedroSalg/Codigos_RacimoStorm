library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity CNT_101 is
    Port ( clk : in  STD_LOGIC;
		     rst : in  STD_LOGIC;
           cnt : out  STD_LOGIC_VECTOR (2 downto 0);
           en_cnt : in  STD_LOGIC);
end CNT_101;

architecture Behavioral of CNT_101 is

signal q_bus, d_bus : std_logic_vector(2 downto 0):=(others => '0');
--signal bus_sel : std_logic;

begin

------- registro process (clk)
process (clk)
begin
   if clk'event and clk='1' then  
      if rst='1' then   
         q_bus <= "000";
      elsif en_cnt ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;

 
 
------- logica del estado siguiente 	  
d_bus <= q_bus + '1' when ( q_bus <= "101" ) else
			"000";
			
------ logica de salida 
cnt <= q_bus;			

 end Behavioral;


