----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:59 01/20/2020 
-- Design Name: 
-- Module Name:    TOP_ADC_FPGA_V0 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_ADC_FPGA_V0 is
    Port ( D : in std_logic_vector(11 downto 0);
			  LED : out std_logic_vector(7 downto 0);
           CLK : in  STD_LOGIC;
           CLK_ADC : inout  STD_LOGIC;
           SCL : inout  STD_LOGIC;
           SDA : inout  STD_LOGIC);
end TOP_ADC_FPGA_V0;

architecture Behavioral of TOP_ADC_FPGA_V0 is

type	array_muestras_adc_type is array (10 downto 0) of std_logic_vector(11 downto 0);	

signal muestras_adc_reg, muestras_adc_next : array_muestras_adc_type;
	
--
--	COMPONENT I2C_Prueba
--	PORT(
--		clk : IN std_logic;
--		rst : IN std_logic;       
--		SCL : INOUT std_logic;
--		SDA : INOUT std_logic
--		);
--	END COMPONENT;

COMPONENT PWM_SIGNAL
PORT(
	CLK : IN std_logic;          
	PWM_OUT : OUT std_logic
	);
END COMPONENT;

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

signal B1, B2 : std_logic_vector (7 downto 0)  := "00000000"; 
--signal BUS_ADC_CLK : STD_LOGIC;

begin

Inst_PWM_SIGNAL: PWM_SIGNAL PORT MAP(
	CLK => CLK,
	PWM_OUT => CLK_ADC
);

--CLK_ADC <= BUS_ADC_CLK;


i2cSlave: I2C_slave 
   generic map (
      SLAVE_ADDR => "0001000"
      )
   port map(
      scl               => SCL,
      sda               => SDA,
      clk               => clk,
      rst               => '0',
      -- User interface
      read_req          => read_req,
      data_to_master    => data_to_master,
      data_valid        => data_valid,
      data_from_master  => data_from_master
      );
		
		
B2 <= '0' & '0' & '0' & '0' & D(11) & D(10) & D(9) & D(8);
B1 <= D(7)  & D(6) & D(5) & D(4) & D(3) & D(2) & D(1) & D(0);

LED <= B1;
------------------------------------------------------------------------------------------------------
	--adquisicion de las muestras de los canales
process(CLK_ADC)
begin	
for i in (10) downto 0 loop
if (CLK_ADC'event and CLK_ADC='1') then
        muestras_adc_reg(i) <= muestras_adc_next(i);
     	end if;
   		-- next state logic
     	if (i = (10)) then
				muestras_adc_next(i) <= D;
			else
				muestras_adc_next(i) <= muestras_adc_reg(i+1);
			end if;
		end loop;
	end process;
		
		
		
		
		
--process (CLK_ADC)
--begin
--if rising_edge(CLK_ADC) then
--	B2 <= '0' & '0' & '0' & '0' & D(11) & D(10) & D(9) & D(8);
--	B1 <= D(7)  & D(6) & D(5) & D(4) & D(3) & D(2) & D(1) & D(0);
--end if;
--end process;
		

process (clk)
begin
if rising_edge(clk) then
	if data_valid = '1' then		


		if data_from_master = "00000000" then
			--data_to_master <= B1;
			data_to_master <= muestras_adc_next(1)(7 downto 0);
			--data_to_master <= "00000001";
		elsif data_from_master = "00000001" then
			data_to_master <= B2;
			--data_to_master <= "00000011";
		end if;
	end if;
end if;
end process;



end Behavioral;

