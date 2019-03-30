padre(juan,luis).
padre(juan,lia).
padre(luis,jorge).
padre(luis,ines).
padre(jorge,diego).

% 3.1
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


% 3.2
abuelo_paterno(X, Y) :- padre(X, Z), padre(Z, Y).

% a) ¿Quién es el abuelo de Diego?
% abuelo_paterno(X, diego).

% b) Obtener todos los pares de la relación abuelo_paterno.
% abuelo_paterno(X, Y).

madre(ana,luis).
madre(lia,maria).
madre(lia,rosa).
% agrego otros
madre(ana, lia).

% 3.3
abuelo_materno(X, Y) :- padre(X, Z), madre(Z, Y).


% 3.4
abuelo(X, Y) :- abuelo_paterno(X, Y).
abuelo(X, Y) :- abuelo_materno(X, Y).

% Consultar por todos los pares de la relación abuelo
% abuelo(X, Y).


% 3.5
%  Definir la relación hermano y obtener todos los pares de la misma
hermano(X, Y) :- madre(Z, X), madre(Z, Y), padre(W, X), padre(W, Y), X\==Y.
% hermano(X, Y).


% 3.6
% Definir la relación tio
tio(X, Y) :- (hermano(X, Z), madre(Z, Y)); (hermano(X, Z), padre(Z, Y)).


% 3.7
% Defina la relación ancestro como clausura transitiva de las relaciones madre y
% padre según la siguiente definición: “Una persona X es el ancestro de una
% persona Y si X es el padre o madre de Y, o si existe una persona Z tal que Z es
% padre o madre de Y y además X es ancestro de ese mismo Z
ancestro(X, Y) :- padre(X, Y); madre(X, Y); (padre(Z, Y); madre(Z, Y)), ancestro(X, Z).
