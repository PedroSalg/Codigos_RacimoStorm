
-- VHDL Instantiation Created from source file SM_CTRL.vhd -- 20:24:18 04/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SM_CTRL
	PORT(
		sw0 : IN std_logic;
		sw1 : IN std_logic;
		sw2 : IN std_logic;
		clk : IN std_logic;
		band_esc : IN std_logic;
		band_bor : IN std_logic;
		rst_sm_ctrl : IN std_logic;
		en_sm_ctrl : IN std_logic;
		stop : IN std_logic;          
		escribir : OUT std_logic;
		borrado : OUT std_logic;
		reset : OUT std_logic;
		leer : OUT std_logic;
		en_cnt_dir : OUT std_logic;
		rst_contador : OUT std_logic;
		en_cnt_bor : OUT std_logic;
		selector : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_SM_CTRL: SM_CTRL PORT MAP(
		sw0 => ,
		sw1 => ,
		sw2 => ,
		clk => ,
		band_esc => ,
		band_bor => ,
		rst_sm_ctrl => ,
		en_sm_ctrl => ,
		stop => ,
		escribir => ,
		borrado => ,
		reset => ,
		leer => ,
		en_cnt_dir => ,
		rst_contador => ,
		en_cnt_bor => ,
		selector => 
	);


