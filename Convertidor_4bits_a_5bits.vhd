library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Convertidor_4bits_a_5bits is
port (A: in std_logic_vector(3 downto 0);
		Q: out std_logic_vector(4 downto 0));
end Convertidor_4bits_a_5bits;

architecture SOL of Convertidor_4bits_a_5bits is
begin
Q<= '0' & A (3 downto 0);
end SOL;