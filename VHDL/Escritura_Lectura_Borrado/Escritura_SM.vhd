library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Escritura_SM is
    Port ( escritura : in  STD_LOGIC;
           en_esc : in  STD_LOGIC;
           rst_esc : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dq_esc : out  STD_LOGIC_VECTOR (7 downto 0);
           a_esc : out  STD_LOGIC_VECTOR (19 downto 0);
           ce_esc : out  STD_LOGIC;
           oe_esc : out  STD_LOGIC;
           we_esc : out  STD_LOGIC;
			  band_esc : out  STD_LOGIC;
           led_esc : out  STD_LOGIC_VECTOR (7 downto 0));
end Escritura_SM;

architecture Behavioral of Escritura_SM is

type Estados is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(3 downto 0);

begin

--- REGISRO 

process (clk)
begin
   if clk'event and clk='1' then  
      if rst_esc='1' then   
         q_bus <= s0;
      elsif en_esc ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 

--- LOGICA DEL ESTADO SIGUIENTE

process (q_bus,d_bus,escritura)
begin
	case (q_bus) is 
		when s0 => 
			if (escritura='1') then
				d_bus <= s1;
			else 
				d_bus <= s0;
			end if;
		
		when s1 =>
			d_bus <= s2;
		
		when s2 => 
			d_bus <= s3;
			
		when s3 =>
			d_bus <= s4;
		
		when s4 =>
			d_bus <= s5;
			
		when s5 =>
			d_bus <= s6;
			
		when s6 =>
			d_bus <= s7;
			
		when s7 =>
			d_bus <= s8;
			
		when s8 =>
			d_bus <= s0;
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;

--- LOGICA DE SALIDA

with q_bus select
	Salidas <= "0011" when s0,
				  "1010" when s1,
				  "0011" when s2,
				  "0010" when s3,
				  "0011" when s4,
				  "0010" when s5,
				  "0011" when s6,
				  "0010" when s7,
				  "0011" when s8,
				  "0011" when others;
				  

with q_Bus select
	a_esc <= "00000000000000000000" when S0,
			   x"05555" when S1,
			   "00000000000000000000" when S2,
			   x"02AAA" when S3,
			   "00000000000000000000" when S4,
			   x"05555" when S5,
			   "00000000000000000000" when S6,
			   "00000000000000000111" when S7,
			   "00000000000000000000" when S8,
			   "00000000000000000000" when others;
		  
with q_Bus select
	dq_esc <= "00000000" when S0,
				 x"AA" when S1,
				 "00000000" when S2,
				 x"55" when S3,
				 "00000000" when S4,
				 x"A0" when S5,
				 "00000000" when S6,
				 "10101010" when S7,
				 "00000000" when S8,
				 "00000000" when others;
				 
with q_bus select
	led_esc <= "00000011" when s0,
				  "00000011" when s1,
				  "00000011" when s2,
				  "00000011" when s3,
				  "00000011" when s4,
				  "00000011" when s5,
				  "00000011" when s6,
				  "00000011" when s7,
				  "00000011" when s8,
				  "00000011" when others;
				  

band_esc <= Salidas(3);		 
ce_esc <= Salidas(2);
oe_esc <= Salidas(1);
we_esc <= Salidas(0);

end Behavioral;

