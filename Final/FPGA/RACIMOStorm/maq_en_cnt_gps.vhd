library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity maq_en_cnt_gps is
    Port ( clk : in  STD_LOGIC;
           en_maq : in  STD_LOGIC;
           rst_maq : in  STD_LOGIC;
           even_trigger : in  STD_LOGIC;
           ren_cnt_gps : out  STD_LOGIC);
end maq_en_cnt_gps;

architecture Behavioral of maq_en_cnt_gps is

type Estados is (s0,esp_evento);
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

process (d_bus, q_bus, even_trigger, rst_maq)
begin

	case (q_bus) is 
		when s0 => 
			if ( even_trigger = '1' ) then 
				d_bus <= esp_evento;
			else
				d_bus <= s0;
			end if;
		
		when esp_evento =>
			if ( rst_maq = '1' ) then 
				d_bus <= s0;
			else
				d_bus <= esp_evento;
			end if;
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;



with q_bus select
	ren_cnt_gps <= '0' when esp_evento,
				      '1' when others;

end Behavioral;

