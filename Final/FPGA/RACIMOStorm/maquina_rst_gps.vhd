library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity maquina_rst_cnt_gps is
    Port ( clk : in  STD_LOGIC;
           en_maq : in  STD_LOGIC;
           rst_maq : in  STD_LOGIC;
           entra_pps : in  STD_LOGIC;
           rst_cnt : out  STD_LOGIC);
end maquina_rst_cnt_gps;

architecture Behavioral of maquina_rst_cnt_gps is

type Estados is (s0,cnt,res);
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

process (d_bus, q_bus, entra_pps)
begin

	case (q_bus) is 
		when s0 => 
			if (entra_pps = '0') then 
				d_bus <= cnt;
			else
				d_bus <= s0;
			end if;
		
		when cnt =>
			if ( entra_pps = '1' ) then 
				d_bus <= res;
			else
				d_bus <= cnt;
			end if;
			
		when res =>
			d_bus <= s0;	
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;



with q_bus select
	rst_cnt <= '1' when res,
				  '0' when others;



end Behavioral;

