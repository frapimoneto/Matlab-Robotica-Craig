function angles = invKine(T3)

    % criando um vetor de angulos
    angles = -ones(1, 4);

    % setando l1 e l2
    l1 = 4; l2 = 3;

    %calculando phi
    phi = atan2(T3(2, 1), T3(1,1));

    x = T3(1, 4); y = T3(2, 4);

    % Definindo o cosseno de 2
    c2 = (x^2 + y^2 - l1^2 - l2^2)/(2*l1*l2);

    % Verificando se o valor do cosseno 2 esta entre -1 e 1,
    if c2 < -1 || 1 < c2
        return
    end

    % calculando o valor de seno 2
    s2 = [sqrt(1-c2^2), -sqrt(1-c2^2)];

    % encontrando os valores de k1 e k2
    k1 = l1 + l2*c2;
    k2 = l2.*s2; % 


    r = sqrt(k1^2 + k2.^2);

    % utilizando os valores encontrados acima, foi calculado 
    % theta1, theta2 e theta3
    theta1 = atan2(y, x) - atan2(k2, k1);
    theta2 = atan2(s2, c2);
    theta3 = phi - theta1 -theta2;
    angles = [theta1; theta2; theta3];
end