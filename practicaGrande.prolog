% Desarrollo una gramatica bnf (como la del video) para validar una 
% direccion ipv4 asi como una mascara de red.
% https://es.wikipedia.org/wiki/M%C3%A1scara_de_red#Tabla_de_m%C3%A1scaras_de_red
% Realice la implementacion de dicha gramatica en prolog donde
% se pueda validar la cadena donde esta esa ip o mascara ejemplo


latom_lstring([],[]).
latom_lstring([F|C],R):- latom_lstring(C,S), atom_string(F,SF), append([SF],S,R) .

preparar_string(Term,LS):-
			atom(Term),
			atom_string(Term,Str),
			preparar_string(Str,LS).

preparar_string(Str,LS):-
			string(Str),
			string_chars(Str,LAC),
			latom_lstring(LAC,LS).

digito(D) :- D=="1";D=="2";D=="3";D=="4";D=="5";D=="6";D=="7";D=="8";D=="9";D=="0".

r5(D):- D=="1";D=="2";D=="3";D=="4";D=="5";D=="0".

valida_tres([F|[A|[B|[C|D]]]]):- C==".", F=="2", r5(A), r5(B); C==".", F=="1", digito(A), digito(B),valida_gral(D).
valida_tres([F|[A|[B|[]]]]):- F=="2", r5(A), r5(B); F=="1", digito(A), digito(B).

valida_dos([F|[A|[B|C]]]):- B==".", digito(F), digito(A),valida_gral(C).
valida_dos([F|[A|[]]]):- digito(F), digito(A).

valida_uno([F|[A|B]]):- A==".", digito(F),valida_gral(B).
valida_uno([F|[]]):- digito(F).

valida_gral(R):- valida_tres(R); valida_dos(R); valida_uno(R).

ip(N):- preparar_string(N,R),valida_gral(R).

%mascara

uno_punto([D|[E|[F|[G|C]]]]):-G==".",D=="1", E=="2", F=="8", octeto(C);G==".",D=="1", E=="9", F="2",octeto(C).
uno([D|[E|[F|[]]]]):- D=="1",E=="2", F=="8"; D=="1",E=="9", F="2".

dos_punto([D|[E|[F|[G|C]]]]):-G==".", D=="2",E=="2", F=="4", octeto(C);
							G==".", D=="2", E=="4", F="0",octeto(C);
							G==".", D=="2", E=="4", F=="8",octeto(C);
							G==".", D=="2", E=="5", F=="2", octeto(C);
							G==".", D=="2", E=="5", F=="4",octeto(C);
							G==".", D=="2", E=="5", F=="5", octeto(C).

dos([D|[E|[F|[]]]]):- D=="2",E=="2", F=="4";
					D=="2", E=="4", F="0";
					D=="2", E=="4", F=="8";
					D=="2", E=="5", F=="2";
					D=="2", E=="5", F=="4";
					D=="2", E=="5", F=="5".

cero_punto([D|[E|[C|A]]]):- E==".", D=="0", C=="0",octeto([C|A]).
cero([D|[]]):- D=="0".


octeto(LM):-uno_punto(LM);dos_punto(LM) ; uno(LM) ;dos(LM);cero_punto(LM);cero(LM).

mascara(MASCARA):- preparar_string(MASCARA,LM),octeto(LM).

