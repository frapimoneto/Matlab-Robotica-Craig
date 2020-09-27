% Angulos;
a = 0;
a2 = 0;
a3 = 0;
a4 = 0;

% Transformação do ponto 0 para 1;
T01 = [1 0 0 0;
    0 cos(a) -sin(a) 0 0;
    0 sin(a) cos(a) 0;
    0 0 0 1];

% Transformação do ponto 1 para 2, rotacionando no eixo X e deslocando 4 metros no eixo de X;

T12 = [1 0 0 4;
    0 cos(a2) -sin(a2) 0 0;
    0 sin(a2) cos(a2) 0;
    0 0 0 1];

% Transformação do ponto 2 para 3, rotacionando no eixo X e deslocando 3 metros no eixo de X;

T23 = [1 0 0 3;
    0 cos(a3) -sin(a3) 0 0;
    0 sin(a3) cos(a3) 0;
    0 0 0 1];

% Transformação do ponto 3 para H deslocando 4 metros no eixo de X;

T3H = [1 0 0 2;
    0 cos(a4) -sin(a4) 0 0;
    0 sin(a4) cos(a4) 0;
    0 0 0 1];


