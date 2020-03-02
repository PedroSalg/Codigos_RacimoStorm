
-- VHDL Instantiation Created from source file CNT_101.vhd -- 17:48:19 02/06/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

COMPONENT CNT_101
PORT(
	clk : IN std_logic;
	rst : IN std_logic;
	en_cnt : IN std_logic;          
	cnt : OUT std_logic_vector(2 downto 0)
	);
END COMPONENT;

Inst_CNT_101: CNT_101 PORT MAP(
	clk => ,
	rst => ,
	cnt => ,
	en_cnt => 
);


