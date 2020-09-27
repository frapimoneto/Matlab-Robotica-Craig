% a,b,c s�o os angulos de entrada que entrar�o na fun��o KIN;
% px1, py1 a1 s�o as posi��es em x e y e angulo da transforma��o de B para S;
% px2, py2 a2 s�o as posi��es em x e y e angulo da transforma��o de W para T;
function retorno = WHERE(a,b,c, x1, y1, a1, x2, y2, a2)

% Fun��o para transforma��o em radiano;
rad = pi/180;

% Transforma��o de B para S;
Tsb = [cos(rad*a1) -sin(rad*a1) 0 x1;
    sin(rad*a1) cos(rad*a1) 0 y1;
    0 0 1 0;
    0 0 0 1];

% Transforma��o de W para T;

Ttw = [cos(rad*a2) -sin(rad*a2) 0 x2;
    sin(rad*a2) cos(rad*a2) 0 y2;
    0 0 1 0;
    0 0 0 1];

% Transforma��o de B para W;

Tbw = KIN(a,b,c);


% Aplicando a formula;
retorno = inv(Tsb)*Ttw*Tbw;

end


