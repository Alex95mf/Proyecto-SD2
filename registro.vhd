library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro is
	Port ( Dado: in STD_LOGIC_VECTOR(4 downto 0);
		clock, res, En: in STD_LOGIC;
	   fint: in STD_LOGIC;
		Puntos: out STD_LOGIC_VECTOR(5 downto 0);
		Casillas: out STD_LOGIC_VECTOR(4 downto 0);
		Fin: out STD_LOGIC;
		SF: out STD_LOGIC);
end registro;

Architecture sol of registro is
Begin
	process (clock, res, En)
	variable s: std_logic_vector(4 downto 0) :="00000";
   variable c: std_logic_vector(5 downto 0) :="000000";
	variable QP: std_logic_vector(5 downto 0) :="000000";
	variable QC: std_logic_vector(4 downto 0) :="00000";
	variable finreg: std_logic :='0';
	begin
		if res='1' then 
		QP:="000000";QC:="00000";c:="000000";s:="00000";Fin<='0';SF<='0';finreg:='0';
		elsif fint='1' then 
		QP:="000000";QC:="00000";c:="000000";s:="00000";Fin<='0';SF<='1';finreg:='0';
		elsif (rising_edge(En)) then
		c:="000000";
		s:=s+Dado;
		SF<='0';
				if s>="00011" then c:=c+"000101";s:=s-"00011";
				end if;
				if s>="00011" then c:=c+"000101";s:=s-"00011";
				end if;
				QC:=QC+Dado;QP:=QP+c;
				if QC="10011" then QC:=QC-"00101";QP:=QP-"00010";
				elsif QC="01111" then QC:="10100";QP:=QP-"00010";finreg:='1';
				elsif QC="01010" then QC:=QC-"00110";QP:=QP-"00010";
				elsif QC="00101" then QC:=QC-"00100";QP:=QP-"00010";
				elsif QC>="10100" then QC:="10100";finreg:='1';
				end if;
		end if;
		Casillas <= QC;
		Puntos <= QP;
		Fin <= finreg;
	end process;	
end sol;