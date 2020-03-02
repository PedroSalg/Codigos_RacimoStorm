library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2C_Prueba is
    Port ( SCL : inout  STD_LOGIC;
			  clk : in STD_LOGIC;
			  rst : in STD_LOGIC;
           SDA : inout  STD_LOGIC);
end I2C_Prueba;

architecture Behavioral of I2C_Prueba is

	
component I2C_slave is
  generic (
    slave_addr          : std_logic_vector(6 downto 0)   := "0000000"); -- I added := "0000000" to get it to compile
  port (
    scl                 : inout std_logic;
    sda                 : inout std_logic;
    clk                 : in    std_logic;
    rst                 : in    std_logic;
    -- User interface
    read_req            : out   std_logic;
    data_to_master      : in    std_logic_vector(7 downto 0);
    data_valid          : out   std_logic;
    data_from_master    : out   std_logic_vector(7 downto 0));
end component I2C_slave;


signal read_req         : std_logic                      := '0';
signal data_to_master   : std_logic_vector (7 downto 0)  := "01010101";
signal data_valid       : std_logic                      := '0';
signal data_from_master : std_logic_vector (7 downto 0)  := "00000000"; 


begin

i2cSlave: I2C_slave 
   generic map (
      SLAVE_ADDR => "0001000"
      )
   port map(
      scl               => SCL,
      sda               => SDA,
      clk               => clk,
      rst               => rst,
      -- User interface
      read_req          => read_req,
      data_to_master    => data_to_master,
      data_valid        => data_valid,
      data_from_master  => data_from_master
      );
		

process (clk)
begin
		
if rising_edge(clk) then
	if data_valid = '1' then
		if data_from_master = "00000000" then
			data_to_master <= "00001010";
		elsif data_from_master = "00000001" then
			data_to_master <= "00001111";
		end if;
	end if;
end if;
end process;

end Behavioral;

