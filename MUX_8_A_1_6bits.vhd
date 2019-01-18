library ieee;
use ieee.std_logic_1164.all;

entity MUX_8_A_1_6bits is
	port (A0, A1, A2, A3, A4, A5, A6, A7: in std_logic_vector(5 downto 0);
			S0, S1, S2: in std_logic;
			Q: buffer std_logic_vector(5 downto 0));
end MUX_8_A_1_6bits;

architecture sol of MUX_8_A_1_6bits is
begin
	process(A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2)
	begin
		 if (S2 = '0' and S1 = '0' and S0 = '0') then
	      Q <= A0;
	    elsif (S2 = '0' and S1 = '0' and S0 = '1') then
	      Q <= A1;
	    elsif (S2 = '0' and S1 = '1' and S0 = '0') then
	      Q <= A2;
		 elsif (S2 = '0' and S1 = '1' and S0 = '1') then
	      Q <= A3;
	    elsif (S2 = '1' and S1 = '0' and S0 = '0') then
	      Q <= A4;
		 elsif (S2 = '1' and S1 = '0' and S0 = '1') then
	      Q <= A5;
	    elsif (S2 = '1' and S1 = '1' and S0 = '0') then
	      Q <= A6;
	    else
	      Q <= A7;
	  end if;
	end process;
end sol;