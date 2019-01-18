library ieee;
use ieee.std_logic_1164.all;

entity mss is
	Port( Clock_100Hz, reset, start, jugar, puntuaciones, dado1, dado2: in std_logic;
			tcont3, dcont3, gcont5, spevent: in std_logic;
			finj1, finj2, dadodif, sf1, sf2: in std_logic;
			ledj1, ledj2, sdcont1, sdcont2, stcont, d7s1, d7s2,punt1, punt2: out std_logic;
			tab1, tab2, vdado1, vdado2, fin, d7sgana1, d7sgana2: out std_logic;
			enpcont, endadodif, par, res, pdado1, pdado2: out std_logic);
end mss;

Architecture solucion of mss is
type estado is (TP1,TP2,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19,T20,T21,T22,T23,T24,T25,TF1,TF2);
Signal y: estado;
Begin
	Process(Clock_100Hz, reset)
	Begin
		if reset='1' then y<=T1;
		elsif (Clock_100Hz'event and Clock_100Hz='1') then
			case y is
				when T1=> 	if start='1' then y<=T2;
								else y<=T1;
								end if;
				when T2=> 	if start='0' then y<=T3;
								else y<=T2;
								end if;
				when T3=> 	if (puntuaciones='1' and jugar='0') then y<=TP1;
								elsif (puntuaciones='0' and jugar='1') then y<=T4;
								else y<=T3;
								end if;
				when TP1=>	if puntuaciones='0' then y<=TP2;
								else y<=TP1;
								end if;				
				when TP2=>  if spevent='1' then y<=T3;
								else y<=TP2;
								end if;				
				when T4=>   if jugar='0' then y<=T5;
								else y<=T4;
								end if;
				when T5=>   if dado1='1' then y<=T6;
								else y<=T5;
								end if;
				when T6=>   if dado1='0' then y<=T7;
								else y<=T6;
								end if;				
				when T7=>   if dcont3='1' then y<=T8;
								else y<=T7;
								end if;				
				when T8=>   if dado2='1' then y<=T9;
								else y<=T8;
								end if;
				when T9=>   if dado2='0' then y<=T10;
								else y<=T9;
								end if;				
				when T10=>  if dcont3='1' then y<=T11;
								else y<=T10;
								end if;			
				when T11=>  if tcont3='1' then y<=T12;
								else y<=T11;
								end if;	
				when T12=>  if dadodif='1' then y<=T13;
								else y<=T5;
								end if;		
				when T13=>  if dado1='1' then y<=T14;
								else y<=T13;
								end if;
				when T14=>  if dado1='0' then y<=T15;
								else y<=T14;
								end if;				
				when T15=>  if dcont3='1' then y<=T16;
								else y<=T15;
								end if;	
				when T16=>  if tcont3='1' then y<=T17;
								else y<=T16;
								end if;			
				when T17=>  if finj1='1' then y<=T18;
								else y<=T19;
								end if;				
				when T18=>  if gcont5='1' then y<=TF1;
								else y<=T18;
								end if;
				when TF1=>  if sf1='1' then y<=T3;
								else y<=TF1;
								end if;
				when T19=>  if dado2='1' then y<=T20;
								else y<=T19;
								end if;
				when T20=>  if dado2='0' then y<=T21;
								else y<=T20;
								end if;		
				when T21=>  if dcont3='1' then y<=T22;
								else y<=T21;
								end if;
				when T22=>  if tcont3='1' then y<=T23;
								else y<=T22;
								end if;				
				when T23=>  if finj2='1' then y<=T24;
								else y<=T25;
								end if;				
				when T24=>  if gcont5='1' then y<=TF2;
								else y<=T24;
								end if;		
				when TF2=>  if sf2='1' then y<=T3;
								else y<=TF2;
								end if;				
			   when T25=>  y<=T13; 
	
			end case;
		end if;
	end Process;
	Process(y)
	Begin
		enpcont<='0';ledj1<='0';ledj2<='0';tab1<='0';tab2<='0';sdcont1<='0';sdcont2<='0';fin<='0';
		d7s1<='0';d7s2<='0';vdado1<='0';vdado2<='0';endadodif<='0';punt1<='0';punt2<='0';
		stcont<='0';d7sgana1<='0';d7sgana2<='0';par<='0';res<='0';pdado1<='0';pdado2<='0';
		case y is	
			when T2=>
			when TP1=>
			when T4=>
			when T1=>res<='1';
			when T3=>enpcont<='0';ledj1<='0';ledj2<='0';tab1<='0';tab2<='0';sdcont1<='0';sdcont2<='0';fin<='0';
					  d7s1<='0';d7s2<='0';vdado1<='0';vdado2<='0';endadodif<='0';punt1<='0';punt2<='0';
				     stcont<='0';d7sgana1<='0';d7sgana2<='0';par<='0';res<='0';pdado1<='0';pdado2<='0';
			when TP2=>enpcont<='1';
			when T5=>d7s2<='1';
			when T6=>pdado1<='1';
			when T7=>sdcont1<='1';
			when T8=>d7s1<='1';
			when T9=>pdado2<='1';
			when T10=>sdcont2<='1';endadodif<='0';
					  sdcont1<='0';d7s1<='0';
			when T11=>d7s2<='1';stcont<='1';endadodif<='0';
		   when T12=>endadodif<='1';d7s2<='1';
			when T13=>ledj2<='0';ledj1<='1';stcont<='0';d7s2<='1';
			when T14=>ledj1<='1';d7s2<='1';pdado1<='1';
			when T15=>sdcont1<='1';ledj1<='1';
			        sdcont2<='0';d7s2<='0';
			when T16=>stcont<='1';ledj1<='1';d7s1<='1';tab1<='1';tab2<='0';vdado1<='1';vdado2<='0';
			when T17=>ledj1<='1';tab1<='1';tab2<='0';d7s1<='1';d7s2<='0';
			when T18=>d7sgana1<='1';punt1<='1';ledj1<='1';tab1<='1';tab2<='0';d7s1<='1';par<='1';
			when TF1=>fin<='1';
			when T19=>stcont<='0';ledj1<='0';ledj2<='1';d7s1<='1';
			when T20=>ledj2<='1';pdado2<='1';
			when T21=>sdcont2<='1';ledj2<='1';
			         sdcont1<='0';d7s1<='0';
			when T22=>stcont<='1';ledj2<='1';d7s2<='1';tab1<='0';tab2<='1';vdado1<='0';vdado2<='1';
			when T23=>ledj2<='1';tab1<='0';tab2<='1';d7s1<='0';d7s2<='1';
			when T24=>d7sgana2<='1';punt2<='1';ledj2<='1';tab1<='0';tab2<='1';d7s2<='1';par<='1';
			when TF2=>fin<='1';
			when T25=>ledj2<='1';d7s2<='1';
			
		end case;
	end Process;
end solucion;