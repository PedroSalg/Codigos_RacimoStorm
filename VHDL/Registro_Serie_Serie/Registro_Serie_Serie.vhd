library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Registro_Serie_Serie is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           en_reg : in  STD_LOGIC;
           rst_reg : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (5 downto 0));
end Registro_Serie_Serie;

architecture Behavioral of Registro_Serie_Serie is

signal Q_Bus, D_Bus : STD_LOGIC_VECTOR(5 downto 0):=(others => '0');


begin

------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_reg = '1' then   
         Q_Bus <= (others => '0');
      elsif en_reg ='1' then
         Q_Bus <= D_Bus;
      end if;
   end if;
end process;
 
 

------ LOGICA DEL ESTADO SIGUIENTE

D_Bus <= (Q_Bus(4 downto 0) & data_in) when (sel = '1') else
			 Q_Bus;


			
------ LOGICA DE SALIDA 

data_out <= Q_Bus;

end Behavioral;

