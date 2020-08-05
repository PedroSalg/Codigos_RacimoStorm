----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:01:11 06/10/2020 
-- Design Name: 
-- Module Name:    modulo_gps - Behavioral 
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

entity modulo_gps is
    Port ( clk : in  STD_LOGIC;
           in_pps : in  STD_LOGIC;
           reset_sis : in  STD_LOGIC;
           evento_in : in  STD_LOGIC;
			  pin_test : out STD_LOGIC;
           conteo_gps : out  STD_LOGIC_VECTOR (26 downto 0));
end modulo_gps;

architecture Behavioral of modulo_gps is


	COMPONENT contador_gps
	PORT(
		clk : IN std_logic;
		en_cnt_gps : IN std_logic;
		rst_cnt_gps : IN std_logic;          
		gps_cnt : OUT std_logic_vector(26 downto 0)
		);
	END COMPONENT;
	
		COMPONENT maq_en_cnt_gps
	PORT(
		clk : IN std_logic;
		en_maq : IN std_logic;
		rst_maq : IN std_logic;
		even_trigger : IN std_logic;          
		ren_cnt_gps : OUT std_logic
		);
	END COMPONENT;
	COMPONENT maquina_rst_cnt_gps
	PORT(
		clk : IN std_logic;
		en_maq : IN std_logic;
		rst_maq : IN std_logic;
		entra_pps : IN std_logic;          
		rst_cnt : OUT std_logic
		);
	END COMPONENT;


signal bus_en_cnt_gps, bus_rst_cnt_gps : STD_LOGIC; 									-- CONTROL DEL CONTADOR GPS
signal bus_gps_cnt : STD_LOGIC_VECTOR(26 downto 0);									-- SENAL PARA CUENTA DEL GPS


begin

	Inst_contador_gps: contador_gps PORT MAP(
		clk => clk,
		en_cnt_gps => bus_en_cnt_gps,
		rst_cnt_gps => bus_rst_cnt_gps,
		gps_cnt => bus_gps_cnt
	);

	Inst_maq_en_cnt_gps: maq_en_cnt_gps PORT MAP(
		clk => clk,
		en_maq => '1',
		rst_maq => reset_sis,
		even_trigger => evento_in,
		ren_cnt_gps => bus_en_cnt_gps
	);
	
		Inst_maquina_rst_cnt_gps: maquina_rst_cnt_gps PORT MAP(
		clk => clk,
		en_maq => bus_en_cnt_gps,
		rst_maq => reset_sis,
		entra_pps => in_pps,
		rst_cnt => bus_rst_cnt_gps
	);

conteo_gps <= bus_gps_cnt;
pin_test <= bus_rst_cnt_gps;

end Behavioral;

