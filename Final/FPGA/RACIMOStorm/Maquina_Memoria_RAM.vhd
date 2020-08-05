
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

			

entity Maquina_Memoria_RAM is
    Port ( evento : in  STD_LOGIC;
           escritura_memoria : in  STD_LOGIC;
           sw0 : in  STD_LOGIC;
           adc_reloj : in  STD_LOGIC;
			  en_retenedor : in  STD_LOGIC;
			  clk : in STD_LOGIC;
			  en_maquina : in  STD_LOGIC;
			  rst_maquina : in  STD_LOGIC;
           numero : in  STD_LOGIC_VECTOR (3 downto 0);
           --termino_escritura : out  STD_LOGIC;
           sel : out  STD_LOGIC;
			  en_retenedor_out : out  STD_LOGIC;
           out_wr : out  STD_LOGIC;
           en_cnt : out  STD_LOGIC;
           rst_cnt : out  STD_LOGIC;
			  en_mem : out  STD_LOGIC;
           suma_resta : out  STD_LOGIC);
end Maquina_Memoria_RAM;

architecture Behavioral of Maquina_Memoria_RAM is

type Estados is (s0,s1,habi1,esp_esc,s2,habi2,senal_fini,senal_end, sinc_freq_mues, sinc_freq_mues_2);
signal d_bus, q_bus : Estados;
signal numero_ter : STD_LOGIC_VECTOR(3 downto 0);
signal Salidas : STD_LOGIC_VECTOR(5 downto 0);

begin


			  
----- REGISTRO 

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

 
----- LOGICA DEL ESTADO SIGUIENTE 


process (d_bus, q_bus, evento, escritura_memoria, sw0, adc_reloj, numero_ter, numero,sw0,en_retenedor)
begin

	case (q_bus) is 
		when s0 => 
			if (sw0 = '1') then
				d_bus <= s1;
			else 
				d_bus <= s0;
			end if;
			
		when s1 =>
			if (adc_reloj = '1') then
				d_bus <= habi1;
			else
				d_bus <= s1;
			end if;
		
		when habi1 =>			
			if (evento = '0') then 
				d_bus <= sinc_freq_mues;
			else
				d_bus <= esp_esc;
			end if;
							
		when sinc_freq_mues => 
			if (en_retenedor = '1') then 
				d_bus <= s1;
			else
				d_bus <= sinc_freq_mues;
			end if;
			
		when esp_esc =>
			if (escritura_memoria = '1') then 
				d_bus <= s2;
				numero_ter <= numero ;
			else
				d_bus <= esp_esc;
			end if;
		
		when s2 =>
			if (adc_reloj = '1') then 
				d_bus <= habi2;
			else
				d_bus <= s2 ;
			end if;
		
		when habi2 =>
			d_bus <= sinc_freq_mues_2;
		
--		when desa2 => 
--			if ( numero = numero_ter) then 
--				d_bus <= senal_fini;
--			else
--				d_bus <= sinc_freq_mues_2;
--			end if;
		
		when sinc_freq_mues_2 => 
				if ( numero = numero_ter ) then 
					d_bus <= senal_fini;
				elsif (en_retenedor = '1') then 
					d_bus <= s2;
				else
					d_bus <= sinc_freq_mues_2;
				end if;
		
		when senal_fini =>
			d_bus <= senal_end;
			
		when senal_end =>
			d_bus <= s1;			
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;


--------- LOGICA DE SALIDA
 
with q_bus select
	Salidas <= "000100" when s0,
				  "011001" when habi1,
				  "000000" when esp_esc,
				  --"0101011" when esp_mem,
				  --"0100011" when sin_adc,
				  "100011" when s2,
				  "101011" when habi2,
				  --"0100011" when desa2,
				  "100011" when sinc_freq_mues_2,
				  "000100" when senal_fini,
				  "000100" when senal_end,
				  "000000" when others;
				  
with q_bus select
	en_retenedor_out <= '1' when sinc_freq_mues, 
							  '1' when sinc_freq_mues_2,
							  '0' when others;
				  
				  
--termino_escritura <= Salidas(6);
sel <= Salidas(5);
out_wr <= Salidas(4);
en_cnt <= Salidas(3);
rst_cnt <= Salidas(2);
suma_resta <= Salidas(1);
en_mem <= Salidas(0);


end Behavioral;

