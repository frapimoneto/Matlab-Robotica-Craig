function E = homogeneousTransformationMatrix(alpha, beta, gamma, a, b, c)

    %passando os cossenos e senos para as variaveis
    ca = cosd(alpha);
    sa = sind(alpha);
    cb = cosd(beta);
    sb = sind(beta);
    cg = cosd(gamma);
    sg = sind(gamma);

    % Essa função calcula a matriz de transformação
    E = [ca*cb, ca*sb*sg-sa*cg, ca*sb*cg+sa*sg, a;
         sa*cb, sa*sb*sg+ca*cg, sa*sb*cg-ca*sg, b;
         -sb, cb*sg, cb*cg, c
         0, 0, 0 , 1];

     % Mostrando o resultado na tela
     %plot(E)