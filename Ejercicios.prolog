
% Desarrolle un predicado que permita validar un NIP de una banco que 
% Responde a la siguiente gramatica
% Nip ::= <Digito> ' ' <Digito> ' ' <Digito> ' ' <Digito>
% Digito ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

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

valida([F|[A|[B|[C|D]]]]) :- D==[], digito(F), digito(A), digito(B), digito(C).

nip(S):- preparar_string(S,R),valida(R).




% Desarrolle un predicado que permita validar un octeto de una ip
% Responde a la siguiente gramatica
% Octeto ::= '2'<R5><R5> | '1'<Digito><Digito> | <Digito><Digito> | <Digito>
% R5 ::= 0 | 1 | 2 | 3 | 4 | 5
% Digito ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

r5(D):- D=="1";D=="2";D=="3";D=="4";D=="5";D=="0".

valida_num([F|[A|[B|C]]]):- C==[], F=="2", r5(A), r5(B); C==[], F=="1", digito(A), digito(B).
valida_dos([F|[A|B]]):- B==[], digito(F), digito(A).
valida_uno([F|A]):- A==[], digito(F).

valida_gral(R):- valida_num(R); valida_dos(R); valida_uno(R).

octeto(N):- preparar_string(N,R),valida_gral(R).
