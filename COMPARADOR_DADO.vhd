library ieee;
use ieee.std_logic_1164.all;

entity COMPARADOR_DADO is
port (A, B: in std_logic_vector(3 downto 0);
		En: in std_logic;
		Q: out std_logic);
end COMPARADOR_DADO;

architecture SOL of COMPARADOR_DADO is
begin
process(A, B)
begin
	if En='1' then
		if A/=B then Q<='1';
		else Q<='0';
		end if;
		else Q<='0';
	end if;
end process;
end SOL;