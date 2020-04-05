library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Lectura is
    Port ( disp : in  STD_LOGIC;
           dq_in : in  STD_LOGIC_VECTOR(7 downto 0);
           leer : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           en_lec : in  STD_LOGIC;
           rst_lec : in  STD_LOGIC;
           a_lec : out  STD_LOGIC_VECTOR (19 downto 0);
           oe_lec : out  STD_LOGIC;
           ce_lec : out  STD_LOGIC;
           we_lec : out  STD_LOGIC;
			  band_lec : out  STD_LOGIC;
           led_lec : out  STD_LOGIC_VECTOR (7 downto 0);
           en_cnt_2s : out  STD_LOGIC);
end Lectura;

architecture Behavioral of Lectura is

type Estados is (s0,s1,s2,s3);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(4 downto 0);

begin


--- REGISRO 

process (clk)
begin
   if clk'event and clk='1' then  
      if rst_lec='1' then   
         q_bus <= s0;
      elsif en_lec ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 

--- LOGICA DEL ESTADO SIGUIENTE

process (q_bus,d_bus,leer,disp)
begin
	case (q_bus) is 
		when s0 => 
			if (leer='1') then
				d_bus <= s1;
			else 
				d_bus <= s0;
			end if;
		
		when s1 => 
			d_bus <= s2;
		
		when s2 => 
			if (disp = '1') then 
				d_bus <= s3;
			else 
				d_bus <= s2;
			end if;
			
		when s3 =>
			d_bus <= s0;
		
		when others =>
			d_bus <= s0;
			
	end case;
end process;

--- LOGICA DE SALIDA

with q_bus select
	Salidas <= "00000" when s0,
				  "10001" when s1,
				  "10011" when s2,
				  "00000" when s3,
				  "00000" when others;
				  

a_lec <= "00000000000000000111";
		  
			 
with q_Bus select
	led_lec <= "00000001" when S0,
			     "00000001" when S1,
			     dq_in when S2,
			     "00000001" when S3,
			     "00000001" when others;

band_lec <= Salidas(4);			 
ce_lec <= Salidas(3);
oe_lec <= Salidas(2);
we_lec <= Salidas(1);
en_cnt_2s <= Salidas(0);



end Behavioral;

