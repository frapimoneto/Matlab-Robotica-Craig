
% Função recebendo os angulos;
function retorno = KIN(a, b, c)

% limpando execuções anteriores;

% função de transformação para radianos;

rad = pi/180;

% Função sen e cos dos angulos;

cos1 = cos(a*rad);
cos2 = cos(b*rad);
cos3 = cos(c*rad);

sen1 = sin(a*rad);
sen2 = sin(b*rad);
sen3 = sin(c*rad);

% Matriz de transformação de 0 para 1;

T01 = [cos1 -sen1 0 0;
    sen1 cos1 0 0;
    0 0 1 0;
    0 0 0 1];

% Matriz de transformação de 1 para 2;

T12 = [cos2 -sen2 0 0.5;
    sen2 cos2 0 0;
    0 0 1 0;
    0 0 0 1];

% Matriz de transformação de 2 para 3;

T23 = [cos3 -sen3 0 0.5;
    sen3 cos3 0 0;
    0 0 1 0;
    0 0 0 1];

% Matriz de transformação de 3 para 0;

T30 = T01*T12*T23;

% Retornando o resultado;

retorno = T30;

end
