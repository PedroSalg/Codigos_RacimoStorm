----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:54 06/10/2020 
-- Design Name: 
-- Module Name:    maq_trigger - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity maq_trigger is
    Port ( en_maq : in  STD_LOGIC;
           rst_maq : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           sig_trigger : in  STD_LOGIC;
           Trigger_Disparo : out  STD_LOGIC);
end maq_trigger;

architecture Behavioral of maq_trigger is

type Estados is (s0,event_trig);
signal d_bus, q_bus : Estados;

begin


			  
----- REGISTRO 

process (clk)
begin
   if clk'event and clk='1' then  
      if rst_maq='1' then   
         q_bus <= s0;
      elsif en_maq ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;

 
----- LOGICA DEL ESTADO SIGUIENTE 


process (d_bus, q_bus, rst_maq, sig_trigger)
begin

	case (q_bus) is 
		when s0 => 
			if (sig_trigger='1') then
				d_bus <= event_trig;
			else 
				d_bus <= s0;
			end if;
		
		when event_trig =>
			if (rst_maq = '1') then 
				d_bus <= s0;
			else
				d_bus <= event_trig;
			end if;		
			

		when others =>
			d_bus <= s0;
			
	end case;
end process;


--------- LOGICA DE SALIDA
 
with q_bus select
	Trigger_Disparo <= '1' when event_trig,
							 '0' when others;


end Behavioral;

