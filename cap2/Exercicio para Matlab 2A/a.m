function R = euler2r(alpha, beta, gamma)
    
    %passando os cossenos e senos para as variaveis
    ca = cosd(alpha);
    sa = sind(alpha);
    cb = cosd(beta);
    sb = sind(beta);
    cg = cosd(gamma);
    sg = sind(gamma);

    % Essa função calcula a Matriz de rotação utilizando os angulos de Euler
    R = [ca*cb, ca*sb*sg-sa*cg, ca*sb*cg+sa*sg;
         sa*cb, sa*sb*sg+ca*cg, sa*sb*cg-ca*sg;
         -sb, cb*sg, cb*cg];