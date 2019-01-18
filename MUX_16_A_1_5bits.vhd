library ieee;
use ieee.std_logic_1164.all;

entity MUX_16_A_1_5bits is
	port (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15: in std_logic_vector(4 downto 0);
			S0, S1, S2, S3: in std_logic;
			Q: buffer std_logic_vector(4 downto 0));
end MUX_16_A_1_5bits;

architecture sol of MUX_16_A_1_5bits is
begin
	process(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, S0, S1, S2, S3)
	begin
		 if (S3 ='0' and S2 = '0' and S1='0' and S0='0') then
	      Q <= A0;
		 elsif (S3 ='0' and S2 = '0' and S1='0' and S0='1') then
	      Q <= A1;
		 elsif (S3 ='0' and S2 = '0' and S1='1' and S0='0') then
	      Q <= A2;
		 elsif (S3 ='0' and S2 = '0' and S1='1' and S0='1') then
	      Q <= A3;
		 elsif (S3 ='0' and S2 = '1' and S1='0' and S0='0') then
	      Q <= A4;	
		 elsif (S3 ='0' and S2 = '1' and S1='0' and S0='1') then
	      Q <= A5;
		 elsif (S3 ='0' and S2 = '1' and S1='1' and S0='0') then
	      Q <= A6;
		 elsif (S3 ='0' and S2 = '1' and S1='1' and S0='1') then
	      Q <= A7;
		 elsif (S3 ='1' and S2 = '0' and S1='0' and S0='0') then
	      Q <= A8;
		 elsif (S3 ='1' and S2 = '0' and S1='0' and S0='1') then
	      Q <= A9;
		 elsif (S3 ='1' and S2 = '0' and S1='1' and S0='0') then
	      Q <= A10;	
		 elsif (S3 ='1' and S2 = '0' and S1='1' and S0='1') then
	      Q <= A11;
		 elsif (S3 ='1' and S2 = '1' and S1='0' and S0='0') then
	      Q <= A12;
		 elsif (S3 ='1' and S2 = '1' and S1='0' and S0='1') then
	      Q <= A13;
		 elsif (S3 ='1' and S2 = '1' and S1='1' and S0='0') then
	      Q <= A14;
	    else
	      Q <= A15;
		 end if;
	end process;
end sol;