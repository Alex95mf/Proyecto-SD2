library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity decoder_tablerovector_a_tablero is
   port( tabin: in std_logic_vector(19 downto 0);
			t1: out std_logic;
			t2: out std_logic;
			t3: out std_logic;
			t4: out std_logic;
			t5: out std_logic;
			t6: out std_logic;
			t7: out std_logic;
			t8: out std_logic;
			t9: out std_logic;
			t10: out std_logic;
			t11: out std_logic;
			t12: out std_logic;
			t13: out std_logic;
			t14: out std_logic;
			t15: out std_logic;
			t16: out std_logic;
			t17: out std_logic;
			t18: out std_logic;
			t19: out std_logic;
			t20: out std_logic);
end decoder_tablerovector_a_tablero;
 
architecture solve of decoder_tablerovector_a_tablero is
begin
	t1<=tabin(0);
	t2<=tabin(1);
	t3<=tabin(2);
	t4<=tabin(3);
	t5<=tabin(4);
	t6<=tabin(5);
	t7<=tabin(6);
	t8<=tabin(7);
	t9<=tabin(8);
	t10<=tabin(9);
	t11<=tabin(10);
	t12<=tabin(11);
	t13<=tabin(12);
	t14<=tabin(13);
	t15<=tabin(14);
	t16<=tabin(15);
	t17<=tabin(16);
	t18<=tabin(17);
	t19<=tabin(18);
	t20<=tabin(19);

end solve;