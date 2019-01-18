library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Decoder_de_bcd_2_cifras_junto_a_separado is
   port( bcdin: in std_logic_vector(7 downto 0);
			dec: out std_logic_vector(3 downto 0);
			uni: out std_logic_vector(3 downto 0));
end Decoder_de_bcd_2_cifras_junto_a_separado;
 
architecture solve of Decoder_de_bcd_2_cifras_junto_a_separado is
begin
	dec<=bcdin (7 downto 4);
	uni<=bcdin (3 downto 0);
end solve;