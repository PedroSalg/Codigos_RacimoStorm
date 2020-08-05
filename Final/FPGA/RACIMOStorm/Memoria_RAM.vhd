library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Memoria_RAM is
    Port ( clk : in  STD_LOGIC;
           address : in  STD_LOGIC_VECTOR (3 downto 0);
           data_in : in  STD_LOGIC_VECTOR (11 downto 0);
			  en_ram : in STD_LOGIC;
			  wr : in STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (11 downto 0));
end Memoria_RAM;

architecture Behavioral of Memoria_RAM is

type ram_type is array (15 downto 0) of std_logic_vector (11 downto 0);
signal Memoria_Temporal: ram_type:=(x"000",x"000",x"000",x"000",x"000",x"000",x"000",x"000",x"000",x"000",
												x"000",x"000",x"000",x"000",x"000",x"000");

begin


process (clk)
begin
   if (clk'event and clk = '1') then
      if (en_ram = '1') then 
         if (wr = '1') then
            Memoria_Temporal(conv_integer(address)) <= data_in;
         else
            data_out <= Memoria_Temporal(conv_integer(address));
         end if;
      end if;
   end if;
end process;



end Behavioral;

