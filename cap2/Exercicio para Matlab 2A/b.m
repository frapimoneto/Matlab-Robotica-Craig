function E = r2euler(a, b, c, d, e, f, g, h, i)

    % montando a matriz
    A= [
        a, b, c;
        d, e, f;
        g, h, i
    ];

    Ox = radtodeg(atan2(h, i));
    Oy = radtodeg(atan2(-g,(sqrt((h^2)* (i^2)))));
    Oz = radtodeg(atan2(d,a));

    Euler = [Ox, Oy, Oz];
    
    fprintf('\n--------------------Matriz---------------------------\n');
    disp(A);

    fprintf('\n--------------------Ângulos---------------------------\n');
    disp(Euler);