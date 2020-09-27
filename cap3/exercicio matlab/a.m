a1 = 0;
a2 = 0;
a3 = 0;


% comando para limpar o cmd;
clc;

% Tabela de Denavit-Harteberg;
tabela = [a1 0 0 0;
    a2 0 4 0;
    a3 0 3 0];
disp('-----------Tabela de Denavit-Harteberg---------');
disp(tabela);

% Teste do SerialLink;
disp('-----------Teste do SerialLink---------');
R = SerialLink(tabela);
disp(R)