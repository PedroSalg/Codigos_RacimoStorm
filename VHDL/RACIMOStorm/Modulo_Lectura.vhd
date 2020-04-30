library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Modulo_Lectura is
Port ( SW0 : in  STD_LOGIC;
	  CLK : in  STD_LOGIC;
	  DQ : in  STD_LOGIC_VECTOR(11 downto 0);
	  RESET : in  STD_LOGIC;
	  freq_out : in STD_LOGIC;
	  FROM_RP : in STD_LOGIC;
	  SDA : inout  STD_LOGIC;
	  SCL : inout  STD_LOGIC;
	  TO_RP : out  STD_LOGIC;
	  A : out  STD_LOGIC_VECTOR (19 downto 0);
	  CE : out  STD_LOGIC;
	  OE : out  STD_LOGIC;
	  WE : out  STD_LOGIC;
	  Stop_cnt_lec : out  STD_LOGIC;
	  LED : out  STD_LOGIC_VECTOR (7 downto 0));
end Modulo_Lectura;

architecture Behavioral of Modulo_Lectura is


COMPONENT Maquina_Estados
	PORT(
		sw0 : IN std_logic;
		dq : IN std_logic_vector(11 downto 0);
		clk : IN std_logic;
		stop : IN std_logic;
		from_rp : IN std_logic;
		en_maquina : IN std_logic;
		rst_maquina : IN std_logic;          
		led : OUT std_logic_vector(7 downto 0);
		out_dq : OUT std_logic_vector(11 downto 0);
		oe : OUT std_logic;
		ce : OUT std_logic;
		we : OUT std_logic;
		to_rp : OUT std_logic;
		rst_contador : OUT std_logic;
		en_contador : OUT std_logic
		);
	END COMPONENT;
	COMPONENT Contador_Lectura
	PORT(
		en_cnt_lec : IN std_logic;
		rst_cnt_lec : IN std_logic;
		clk : IN std_logic;          
		cuenta : OUT std_logic_vector(19 downto 0);
		out_cnt_lectura : OUT std_logic
		);
	END COMPONENT;
	
	
	COMPONENT div_frec_lectura
	PORT(
		clk : IN std_logic;
		en_div_frec : IN std_logic;
		rst_div_frec : IN std_logic;          
		out_div_frec : OUT std_logic
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
signal data_to_master   : std_logic_vector (7 downto 0)  := "00000000";
signal data_valid       : std_logic                      := '0';
signal data_from_master : std_logic_vector (7 downto 0)  := "00000000"; 

signal bus_out_div_frec, bus_out_cnt_lectura : STD_LOGIC;
signal bus_cuenta : STD_LOGIC_VECTOR(19 downto 0);
signal bus_rst_contador, bus_en_contador, bus_we : STD_LOGIC;
signal bus_ce, bus_oe, bus_to_rp : STD_LOGIC;
signal bus_out_dq : STD_LOGIC_VECTOR(11 downto 0);
signal bus_led, B0, B1 : STD_LOGIC_VECTOR(7 downto 0);

begin


B1 <= "0000" & bus_out_dq(11 downto 8);
B0 <= bus_out_dq(7 downto 0);

	Inst_Maquina_Estados: Maquina_Estados PORT MAP(
		sw0 => SW0,
		dq => DQ,
		clk => CLK,
		stop => bus_out_cnt_lectura,
		from_rp => FROM_RP,
		en_maquina => bus_out_div_frec,
		rst_maquina => '0',
		led => bus_led,
		out_dq => bus_out_dq,
		oe => bus_oe,
		ce => bus_ce,
		we => bus_we,
		to_rp => bus_to_rp,
		rst_contador => bus_rst_contador,
		en_contador => bus_en_contador
	);

	Inst_Contador_Lectura: Contador_Lectura PORT MAP(
		--en_cnt_lec => bus_en_contador and bus_freq_out,
		en_cnt_lec => bus_en_contador,
		rst_cnt_lec => bus_rst_contador,
		clk => CLK,
		cuenta => bus_cuenta,
		out_cnt_lectura => bus_out_cnt_lectura
	);
	

	Inst_div_frec_lectura: div_frec_lectura PORT MAP(
		clk => CLK,
		en_div_frec => freq_out,
		rst_div_frec => '0',
		out_div_frec => bus_out_div_frec
	);
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
		

process (clk)
begin
if rising_edge(clk) then
	if data_valid = '1' then		
		if data_from_master = "00000000" then
			data_to_master <= B0;
			--data_to_master <= "00000001";
		elsif data_from_master = "00000001" then
			data_to_master <= B1;
		end if;
	end if;
end if;
end process;

TO_RP <= bus_to_rp;   -- Configuracion Original
A <= bus_cuenta;
CE <= bus_ce;
OE <= bus_oe;
WE <= bus_we;
LED <= bus_led;
Stop_cnt_lec <= bus_out_cnt_lectura;


end Behavioral;

