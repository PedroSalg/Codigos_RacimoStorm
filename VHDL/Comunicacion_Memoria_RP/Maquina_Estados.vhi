
-- VHDL Instantiation Created from source file Maquina_Estados.vhd -- 21:57:31 04/21/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_Maquina_Estados: Maquina_Estados PORT MAP(
		sw0 => ,
		dq => ,
		clk => ,
		stop => ,
		from_rp => ,
		en_maquina => ,
		rst_maquina => ,
		led => ,
		out_dq => ,
		oe => ,
		ce => ,
		we => ,
		to_rp => ,
		rst_contador => ,
		en_contador => 
	);


