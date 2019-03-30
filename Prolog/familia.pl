padre(juan,luis).
padre(juan,lia).
padre(luis,jorge).
padre(luis,ines).
padre(jorge,diego).

% a) ¿Quién es el padre de Inés?
% padre(Quien, ines).

% b) ¿Es Luis padre de Jorge?
% padre(luis, jorge).

% c) ¿Es Jorge padre de María?
% padre(jorge, maria).

% d) ¿Quién es el padre de María?
% padre(Quien, maria).

% e) Indicar una consulta para que retorne la relación padre completa.
% padre(X, Y).

% f) Consultar si Juan es padre.
% padre(juan,_).

abuelo_paterno(X, Y) :- padre(X, Z), padre(Z, Y).

% a) ¿Quién es el abuelo de Diego?
% abuelo_paterno(X, diego).

% b) Obtener todos los pares de la relación abuelo_paterno.
% abuelo_paterno(X, Y).

madre(ana,luis).
madre(lia,maria).
madre(lia,rosa).

abuelo_materno(X, Y) :- padre(X, Z), madre(Z, Y).

abuelo(X, Y) :- abuelo_paterno(X, Y).
abuelo(X, Y) :- abuelo_materno(X, Y).

% Consultar por todos los pares de la relación abuelo
% abuelo(X, Y).
