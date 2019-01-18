library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM_Punt is
	Port ( RP1, RP2: in STD_LOGIC_VECTOR(5 downto 0);
		clock, res, cargar, punt1, punt2: in STD_LOGIC;
		Puntuacion: out STD_LOGIC_VECTOR(5 downto 0);
		finish: out STD_LOGIC);
end RAM_Punt;

Architecture sol of RAM_Punt is
constant maxcont: INTEGER := 300;
signal cont: INTEGER range 0 to maxcont;
signal c: INTEGER range 0 to 11;
type lista_q is array (0 to 9) of std_logic_vector(5 downto 0);
Begin
	Process(clock, res, punt1, punt2, RP1, RP2)
	variable Q: lista_q;
	variable t: lista_q;
	variable i: std_logic_vector(5 downto 0);
	variable j: std_logic_vector(5 downto 0);
	variable temp: std_logic_vector(5 downto 0);
	Begin
	if res='1' then
		Q(9):="000000";
		Q(8):="000000";
		Q(7):="000000";
		Q(6):="000000";
		Q(5):="000000";
		Q(4):="000000";
		Q(3):="000000";
		Q(2):="000000";
		Q(1):="000000";
		Q(0):="000000";
		c<=0;
		cont<=0;
		FOR i in 1 to 9 LOOP
			FOR j in 0 to (9-i) LOOP
				if(Q(j)>Q(j+1)) then
					temp:=Q(j);
					Q(j):=Q(j+1);
					Q(j+1):=temp;
				end if;
			END LOOP;
		END LOOP;
	elsif (clock'event and clock='1') then
		if (punt1='1' and punt2='0') then
			if RP1>Q(9) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9),RP1);
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(8) and RP1/=Q(9)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),RP1,Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(7) and RP1/=Q(9) and RP1/=Q(8)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),RP1,Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(6) and RP1/=Q(9) and RP1/=Q(8) and RP1/=Q(7)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),RP1,Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(5) and RP1/=Q(9) and RP1/=Q(8) and RP1/=Q(7) and RP1/=Q(6)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),RP1,Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(4) and RP1/=Q(9) and RP1/=Q(8) and RP1/=Q(7) and RP1/=Q(6) and RP1/=Q(5)) then
				t:=(Q(1),Q(2),Q(3),Q(4),RP1,Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(3) and RP1/=Q(9) and RP1/=Q(8) and RP1/=Q(7) and RP1/=Q(6) and RP1/=Q(5) and RP1/=Q(4)) then
				t:=(Q(1),Q(2),Q(3),RP1,Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(2) and RP1/=Q(9) and RP1/=Q(8) and RP1/=Q(7) and RP1/=Q(6) and RP1/=Q(5) and RP1/=Q(4) and RP1/=Q(3)) then
				t:=(Q(1),Q(2),RP1,Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(1) and RP1/=Q(9) and RP1/=Q(8) and RP1/=Q(7) and RP1/=Q(6) and RP1/=Q(5) and RP1/=Q(4) and RP1/=Q(3) and RP1/=Q(2)) then
				t:=(Q(1),RP1,Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP1>Q(0) and RP1/=Q(9) and RP1/=Q(8) and RP1/=Q(7) and RP1/=Q(6) and RP1/=Q(5) and RP1/=Q(4) and RP1/=Q(3) and RP1/=Q(2) and RP1/=Q(1)) then
				t:=(RP1,Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);		
			end if;		
				elsif (punt1='0' and punt2='1') then
			if RP2>Q(9) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9),RP2);
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(8) and RP2/=Q(9)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),RP2,Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(7) and RP2/=Q(9) and RP2/=Q(8)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),RP2,Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(6) and RP2/=Q(9) and RP2/=Q(8) and RP2/=Q(7)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),RP1,Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(5) and RP2/=Q(9) and RP2/=Q(8) and RP2/=Q(7) and RP2/=Q(6)) then
				t:=(Q(1),Q(2),Q(3),Q(4),Q(5),RP1,Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(4) and RP2/=Q(9) and RP2/=Q(8) and RP2/=Q(7) and RP2/=Q(6) and RP2/=Q(5)) then
				t:=(Q(1),Q(2),Q(3),Q(4),RP2,Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(3) and RP2/=Q(9) and RP2/=Q(8) and RP2/=Q(7) and RP2/=Q(6) and RP2/=Q(5) and RP2/=Q(4)) then
				t:=(Q(1),Q(2),Q(3),RP2,Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(2) and RP2/=Q(9) and RP2/=Q(8) and RP2/=Q(7) and RP2/=Q(6) and RP2/=Q(5) and RP2/=Q(4) and RP2/=Q(3)) then
				t:=(Q(1),Q(2),RP2,Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(1) and RP2/=Q(9) and RP2/=Q(8) and RP2/=Q(7) and RP2/=Q(6) and RP2/=Q(5) and RP2/=Q(4) and RP2/=Q(3) and RP2/=Q(2)) then
				t:=(Q(1),RP2,Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);
			elsif (RP2>Q(0) and RP2/=Q(9) and RP2/=Q(8) and RP2/=Q(7) and RP2/=Q(6) and RP2/=Q(5) and RP2/=Q(4) and RP2/=Q(3) and RP2/=Q(2) and RP2/=Q(1)) then
				t:=(RP2,Q(1),Q(2),Q(3),Q(4),Q(5),Q(6),Q(7),Q(8),Q(9));
				Q(0):=t(0);
				Q(1):=t(1);
				Q(2):=t(2);
				Q(3):=t(3);
				Q(4):=t(4);
				Q(5):=t(5);
				Q(6):=t(6);
				Q(7):=t(7);
				Q(8):=t(8);
				Q(9):=t(9);		
			end if;		
		elsif cargar='1' then 
			FOR i in 1 to 9 LOOP
			FOR j in 0 to (9-i) LOOP
				if(Q(j)>Q(j+1)) then
					temp:=Q(j);
					Q(j):=Q(j+1);
					Q(j+1):=temp;
				end if;
			END LOOP;
			END LOOP;
			if cont<maxcont-1 then cont<=cont+1;
			else c<=c+1;cont<=1;
			end if;
			if c=0 then Puntuacion<="000000";finish<='0';
			elsif c=1 then 
				if Q(9)/="000000" then 
					Puntuacion<=Q(9);finish<='0';
				else c<=2;cont<=1;finish<='0';
				end if;
			elsif c=2 then 
				if Q(8)/="000000" then 
					Puntuacion<=Q(8);finish<='0';
				else c<=3;cont<=1;finish<='0';
				end if;
			elsif c=3 then 
				if Q(7)/="000000" then 
					Puntuacion<=Q(7);finish<='0';
				else c<=4;cont<=1;finish<='0';
				end if;
			elsif c=4 then 
				if Q(6)/="000000" then 
					Puntuacion<=Q(6);finish<='0';
				else c<=5;cont<=1;finish<='0';
				end if;
			elsif c=5 then 
				if Q(5)/="000000" then 
					Puntuacion<=Q(5);finish<='0';
				else c<=6;cont<=1;finish<='0';
				end if;
			elsif c=6 then 
				if Q(4)/="000000" then 
					Puntuacion<=Q(4);finish<='0';
				else c<=7;cont<=1;finish<='0';
				end if;
			elsif c=7 then 
				if Q(3)/="000000" then 
					Puntuacion<=Q(3);finish<='0';
				else c<=8;cont<=1;finish<='0';
				end if;
			elsif c=8 then 
				if Q(2)/="000000" then 
					Puntuacion<=Q(2);finish<='0';
				else c<=9;cont<=1;finish<='0';
				end if;
			elsif c=9 then 
				if Q(1)/="000000" then 
					Puntuacion<=Q(1);finish<='0';
				else c<=10;cont<=1;finish<='0';
				end if;
			elsif c=10 then 
				if Q(0)/="000000" then 
					Puntuacion<=Q(0);finish<='0';
				else c<=11;cont<=1;finish<='0';
				end if;
			elsif c=11 then Puntuacion<="000000";finish<='1';c<=0;
			end if;
		end if;
	end if;
	end Process;
end sol;