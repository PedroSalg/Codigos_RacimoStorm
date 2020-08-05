library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity Event_Detect is
    Port ( D : in  STD_LOGIC_VECTOR (11 downto 0);
	        Disparo : in STD_LOGIC;
			  --finish_esc : in STD_LOGIC;
           clk : in  STD_LOGIC;
			  in_trigger : in STD_LOGIC;
           en_maquina : in  STD_LOGIC;
           rst_maquina : in  STD_LOGIC;
			  stop : in  STD_LOGIC;
			  sig_leds : out STD_LOGIC_VECTOR(7 downto 0);
			  reset_sis : out STD_LOGIC;
			  en_cnt_gps : out STD_LOGIC;
			  rst_cnt_gps : out STD_LOGIC;
			  --en_cnt_espera : out  STD_LOGIC;
			  --rst_cnt_espera : out  STD_LOGIC;
			  --disparo_out : out  STD_LOGIC;
           sw0 : out  STD_LOGIC;
           sw1 : out  STD_LOGIC;
           sw2 : out  STD_LOGIC);
end Event_Detect;

	architecture Behavioral of Event_Detect is

type Estados is (s0,Evento,Escritura,Borrado,Envio, E_Esc, E_Env, E_Bor,Ini_Cnt, Espera, est_cero);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(4 downto 0);

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

process (d_bus, q_bus, D, stop, Disparo, in_trigger)
begin

	case (q_bus) is 
		when s0 => 
			if (Disparo = '1') then
				d_bus <= Evento;
			else 
				d_bus <= s0;
			end if;
			
		when Evento => 
			if (in_trigger = '1') then 
				d_bus <= Escritura;
			else
				d_bus <= Evento;
			end if;
			
		when Escritura =>
			d_bus <= E_Esc;
			
		when E_Esc => 
			if (stop = '1') then 
				d_bus <= Envio;
			else 
				d_bus <= E_Esc;
			end if;
						
		when Envio =>
			d_bus <= E_Env;
			
		when E_Env =>
			if (stop = '1') then 
				d_bus <= Borrado;
			else
				d_bus <= E_Env;
			end if;
			
		when Borrado => 
			d_bus <= E_Bor;
			
		when E_Bor => 
			if (stop = '1') then 
				d_bus <= est_cero;
			else
				d_bus <= E_Bor;
			end if;
			
		when est_cero => 
			d_bus <= s0;
						
		when others =>
			d_bus <= s0;
			
	end case;
end process;


--------- LOGICA DE SALIDA
--------- LEDs
with q_bus select
	sig_leds <= "10000000" when s0,
					"11000000" when Evento,
					"11110000" when Escritura,
					"11110000" when E_Esc,
					"11111100" when Borrado, 
					"11111100" when E_Env,
					"11111111" when others;


--------- ASIGNACION DE SALIDAS 
with q_bus select
	Salidas <= "10000" when s0,
				  "10001" when Escritura,
				  "01010" when Envio,
				  "01100" when Borrado,
				  --"000" when Ini_Cnt,
				  --"000" when Espera,
				  "01000" when others;
				  
--------- RESET DEL SISTEMA
with q_bus select
	reset_sis <= '1' when est_cero,
					 '0' when others;

--escritura_memoria <= Salidas(3);
--en_cnt_espera <= Salidas(4);
--rst_cnt_espera <= Salidas(3); 
en_cnt_gps <= Salidas(4);
rst_cnt_gps <= Salidas(3);
sw2 <= Salidas(2);
sw1 <= Salidas(1);
sw0 <= Salidas(0);

end Behavioral;

