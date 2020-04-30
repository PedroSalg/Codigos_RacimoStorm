library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MaquinaEstados_Lectura is
    Port ( leer : in  STD_LOGIC;
           dq : in  STD_LOGIC_VECTOR (11 downto 0);
           clk : in  STD_LOGIC;
           stop : in  STD_LOGIC;
			  from_rp : in  STD_LOGIC;
           en_maquina : in  STD_LOGIC;
           rst_maquina : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           out_dq : out  STD_LOGIC_VECTOR (11 downto 0);
           oe : out  STD_LOGIC;
           ce : out  STD_LOGIC;
           we : out  STD_LOGIC;
           to_rp : out  STD_LOGIC;
           rst_contador : out  STD_LOGIC;
           en_contador : out  STD_LOGIC);
end MaquinaEstados_Lectura;

architecture Behavioral of MaquinaEstados_Lectura is


type Estados is (s0,s2,s3,s4,s5);
signal q_bus, d_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(5 downto 0);


begin


--------------- REGISTRO 
process (clk)
begin
   if clk'event and clk='1' then  
      if rst_maquina='1' then   
         q_bus <= s0;
      elsif en_maquina ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;

--------------- LOGICA DEL ESTADO SIGUIENTE

process (q_bus, d_bus, leer, stop, from_rp)
begin
	case (q_bus) is
		when s0 =>
			if (leer = '1') then
				d_bus <= s2;
			else
				d_bus <= s0;
			end if;
			
		
		when s2 =>
			if (from_rp = '0') then 
				d_bus <= s3;
			else 
				d_bus <= s2;
			end if;
			
		when s3 =>
			if (from_rp = '1') then 
				d_bus <= s4;
			else
				d_bus <= s3;
			end if;
		
		when s4 =>
			if (stop = '1') then 
				d_bus <= s0;
			--elsif ( from_rp = '0' ) then
			--	d_bus <= s5;
			else 
				d_bus <= s5;
			end if;
			
		when s5 => 
			d_bus <= s2;
		
		when others =>
			d_bus <= s0;

	end case;
end process;

--------------- SALIDA

with q_bus select
	led <= "11111111" when s0,
			-- "00000001" when s1,
			 "00000011" when s2,
			 "00000111" when s3,
			 "00001111" when s4,
			 "00011111" when s5,
			 "00011000" when others;

out_dq <= dq;

with q_bus select
	Salidas <= "111010" when s0,
				  --"111000" when s1,
				  "111000" when s2,
				  "001100" when s3,
				  "111000" when s4,
				  "111001" when s5,
				  "111010" when others;
				  
oe <= Salidas(5);
ce <= Salidas(4);
we <= Salidas(3);
to_rp <= Salidas(2);
rst_contador <= Salidas(1);
en_contador <= Salidas(0);

end Behavioral;

