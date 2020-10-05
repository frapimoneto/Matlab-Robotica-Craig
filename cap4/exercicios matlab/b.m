% limpando o console
clear all;

% passando as matrizes de exemplo do exercicio
TH1 = [ 1, 0, 0, 9;
        0, 1, 0, 0;
        0, 0, 1, 0;
        0, 0, 0, 1];
TH2 = [ 0.5, -0.866, 0, 7.5373;
        0.866, 0.5, 0, 3.9266;
        0, 0, 1, 0;
        0, 0, 0, 1];
TH3 = [ 0, 1, 0, -3;
        -1, 0, 0, 2;
        0, 0, 1, 0;
        0, 0, 0, 1];
% TH4 = [ 0.866, -0.5, 0, -3.1245;
%         0.5, 0.866, 0, 8.1674;
%         0, 0, 1, 0;
%         0, 0, 0, 1];
TH4 = [ 0.9844    0.1760         0    -1.619;
   -0.1760    0.9844         0    0.8204;
         0         0         1         0;
         0         0         0         1]

% Resolvendo a cinematica inversa, chamando as funcoes getT3_from_TH
% e invKine

invKine(getT3_from_TH(TH1))*180/pi
invKine(getT3_from_TH(TH2))*180/pi
invKine(getT3_from_TH(TH3))*180/pi
invKine(getT3_from_TH(TH4))*180/pi