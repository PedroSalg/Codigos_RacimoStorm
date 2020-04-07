library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Borrado is
    Port ( borrado : in  STD_LOGIC;
			  A_in : in STD_LOGIC_VECTOR(5 downto 0);
           clk : in  STD_LOGIC;
           en_bor : in  STD_LOGIC;
           rst_bor : in  STD_LOGIC;
           dq_bor : out  STD_LOGIC_VECTOR (15 downto 0);
           a_bor : out  STD_LOGIC_VECTOR (19 downto 0);
           ce_bor : out  STD_LOGIC;
           oe_bor : out  STD_LOGIC;
           we_bor : out  STD_LOGIC;
			  band_bor : out  STD_LOGIC;
           led_bor : out  STD_LOGIC_VECTOR (7 downto 0));
end Borrado;

architecture Behavioral of Borrado is

type Estados is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(3 downto 0);
signal bus_dir_a_bor : STD_LOGIC_VECTOR(19 downto 0):=(others => '0');

begin

bus_dir_a_bor <= "00000000000000" & A_in;
--- REGISTRO

process (clk)
begin
   if clk'event and clk='1' then  
      if rst_bor='1' then   
         q_bus <= s0;
      elsif en_bor ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 

--- LOGICA DEL ESTADO SIGUIENTE

process (q_bus,d_bus,borrado)
begin
	case (q_bus) is 
		when s0 => 
			if (borrado='1') then
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
			d_bus <= s9;
			
		when s9 =>
			d_bus <= s10;
			
		when s10 =>
			d_bus <= s11;
			
		when s11 =>
			d_bus <= s12;
			
		when s12 =>
			d_bus <= s0;
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;

--- LOGICA DE SALIDA

with q_bus select
	Salidas <= "0011" when s0,
				  "1010" when s1,
				  "1011" when s2,
				  "1010" when s3,
				  "1011" when s4,
				  "1010" when s5,
				  "1011" when s6,
				  "1010" when s7,
				  "1011" when s8,
				  "1010" when s9,
				  "1011" when s10,
				  "1010" when s11,
				  "0011" when s12,
				  "0011" when others;
				  

with q_bus select
	a_bor <=  x"05555" when s1,
				 x"02AAA" when s3,
				 x"05555" when s5,
				 x"05555" when s7,
				 x"02AAA" when s9,
				 bus_dir_a_bor when s11,
				 X"00000" when others;

with q_Bus select
	dq_bor <=  x"00AA" when s1,
			     x"0055" when s3,
			     x"0080" when s5,
			     x"00AA" when s7,
				  x"0055" when s9,
				  x"0050" when s11,
				  X"0000" when others;
				 
with q_bus select
	led_bor <= "11000000" when s0,
				  "11000000" when s1,
				  "11000000" when s2,
				  "11000000" when s3,
				  "11000000" when s4,
				  "11000000" when s5,
				  "11000000" when s6,
				  "11000000" when s7,
				  "11000000" when s8,
				  "11000000" when others;
				
band_bor <= Salidas(3);
ce_bor <= Salidas(2);
oe_bor <= Salidas(1);
we_bor <= Salidas(0);


end Behavioral;

