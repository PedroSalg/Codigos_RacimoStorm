library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity CNT2S is
    Port ( CLK : in  STD_LOGIC;
           EN_DISP : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           --EN_CNT2S : in  STD_LOGIC;
           DISP_OUT : out  STD_LOGIC);
end CNT2S;

architecture Behavioral of CNT2S is

--signal Q_Bus, D_Bus, M : STD_LOGIC_VECTOR(27 downto 0):=(others => '0');
signal Q_Bus, D_Bus, M : STD_LOGIC_VECTOR(25 downto 0):=(others => '0');
signal Bus_Sel, R : STD_LOGIC:='0';

begin


M <= conv_std_logic_Vector(12500000,26);    -- 10M ; Frecuencia de 10 Hz
--M <= conv_std_logic_Vector(9,27);    -- 10M ; Frecuencia de 10 Hz

------ REGISTRO 

process (CLK)
begin
   if CLK'event and CLK='1' then  
      if RESET='1' then   
         q_bus <= (others => '0');
      elsif EN_DISP ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;


------ LOGICA DEL ESTADO SIGUIENTE

Bus_Sel <= '1' when (Q_Bus >= M) else
			  '0';
			  
D_Bus <= Q_Bus + '1' when (Bus_Sel = '0') else
			(others => '0');
			
------ LOGICA DE SALIDA 

DISP_OUT <= Bus_Sel;

end Behavioral;

