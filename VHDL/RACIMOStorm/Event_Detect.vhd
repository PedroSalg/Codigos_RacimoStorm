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
           en_maquina : in  STD_LOGIC;
           rst_maquina : in  STD_LOGIC;
			  stop : in  STD_LOGIC;
			  --en_cnt_espera : out  STD_LOGIC;
			  --rst_cnt_espera : out  STD_LOGIC;
			  disparo_out : out  STD_LOGIC;
           sw0 : out  STD_LOGIC;
           sw1 : out  STD_LOGIC;
           sw2 : out  STD_LOGIC);
end Event_Detect;

architecture Behavioral of Event_Detect is

type Estados is (s0,Evento,Escritura,Borrado,Envio, E_Esc, E_Env, E_Bor,Ini_Cnt, Espera);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(2 downto 0);
signal Voltaje : STD_LOGIC_VECTOR(10 downto 0);
--signal Voltaje2 : STD_LOGIC_VECTOR(10 downto 0);
signal Disparo2 : STD_LOGIC;

begin

--- Condicion de disparo cuando se detecte el evento

Voltaje <= conv_std_logic_Vector(100,11); -- 100 mv de disparo convertidos en los respectivos niveles de cuantizacion
Disparo2 <= '1' when (D >= Voltaje) else
            '0';
			  
			  
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

process (d_bus, q_bus, D, stop, Disparo, Disparo2)
begin

	case (q_bus) is 
		when s0 => 
			if (Disparo = '0') then
				d_bus <= Evento;
			else 
				d_bus <= s0;
			end if;
			
		when Evento => 
			if (Disparo2 = '1') then 
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
				d_bus <= Evento;
			else
				d_bus <= E_Bor;
			end if;
						
		when others =>
			d_bus <= s0;
			
	end case;
end process;


--------- LOGICA DE SALIDA
 
with q_bus select
	Salidas <= "000" when s0,
				  "001" when Escritura,
				  "010" when Envio,
				  "100" when Borrado,
				  --"000" when Ini_Cnt,
				  --"000" when Espera,
				  "000" when others;

--escritura_memoria <= Salidas(3);
--en_cnt_espera <= Salidas(4);
--rst_cnt_espera <= Salidas(3); 				  
sw2 <= Salidas(2);
sw1 <= Salidas(1);
sw0 <= Salidas(0);

disparo_out <= Disparo2;

end Behavioral;

