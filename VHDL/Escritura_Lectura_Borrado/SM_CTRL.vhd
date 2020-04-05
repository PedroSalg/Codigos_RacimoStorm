library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SM_CTRL is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           sw2 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  band_esc : in  STD_LOGIC;			  
			  rst_sm_ctrl : in  STD_LOGIC;
			  en_sm_ctrl : in STD_LOGIC;
           escribir : out  STD_LOGIC;
           borrado : out  STD_LOGIC;
           reset : out  STD_LOGIC;
           leer : out  STD_LOGIC;
           selector : out  STD_LOGIC_VECTOR (1 downto 0));
end SM_CTRL;

architecture Behavioral of SM_CTRL is

type Estados is (s0,s1,s2,s3,s4,s5,s6,s7);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(3 downto 0);

begin

----- REGISTRO 

process (clk)
begin
   if clk'event and clk='1' then  
      if rst_sm_ctrl='1' then   
         q_bus <= s0;
      elsif en_sm_ctrl ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 
----- LOGICA DEL ESTADO SIGUIENTE 

process (d_bus, q_bus, sw0, sw1, sw2, band_esc)
begin
	case (q_bus) is 
		when s0 => 
			if (sw0 = '0') then
				d_bus <= s1;
			elsif (sw1 = '0') then 
				d_bus <= s3;
			elsif (sw2 = '0') then 
				d_bus <= s5;
			else 
				d_bus <= s0;
			end if;
			
		when s1 =>
			if (sw0 = '1') then 
				d_bus <= s2;
			else 
				d_bus <= s1;
			end if;
			
		when s2 =>
			if (band_esc = '1') then 
				d_bus <= s7;
			else 
				d_bus <= s2;
			end if;
			
		when s3 => 
			if (sw1 = '1') then 
				d_bus <= s4;
			else 
				d_bus <= s3;
			end if;
			
		when s4 =>
			d_bus <= s7;
			
		when s5 =>
			if (sw2 = '1') then 
				d_bus <= s6;
			else 
				d_bus <= s5;
			end if;
			
		when s6 =>
			d_bus <= s7;
			
		when s7 =>
			d_bus <= s0;
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;

----- LÓGICA DE SALIDA 

with q_bus select
	selector <= "00" when s0,
					"01" when s1,
					"01" when s2,
					"11" when s3,
					"11" when s4, 
					"10" when s5,
					"10" when s6,
					"00" when s7,
					"00" when others;
 
with q_bus select
	Salidas <= "0010" when s0,
				  "0000" when s1,
				  "1000" when s2,
				  "0000" when s3,
				  "0001" when s4,
				  "0000" when s5,
				  "0100" when s6,
				  "0000" when s7,
				  "0000" when others;

escribir <= Salidas(3);
borrado <= Salidas(2);
reset <= Salidas(1);
leer <= Salidas(0);
				  
				  


end Behavioral;

