function E = homogeneousTransformationMatrix(alpha, beta, gamma, a, b, c)
    % This function calculates Rotation matrix based on angles
    % alpha for Z axis, beta for Y, gamma for X
    ca = cosd(alpha);
    sa = sind(alpha);
    cb = cosd(beta);
    sb = sind(beta);
    cg = cosd(gamma);
    sg = sind(gamma);
    % This function calculates homogeneous transformation matrix
    E = [ca*cb, ca*sb*sg-sa*cg, ca*sb*cg+sa*sg, a;
         sa*cb, sa*sb*sg+ca*cg, sa*sb*cg-ca*sg, b;
         -sb, cb*sg, cb*cg, c
         0, 0, 0 , 1];
     
     
     
     
     
     fprintf('\n--------------------Com inv---------------------------\n');
     
     A = inv(E);
     disp(A);
     
     fprintf('\n-----------Matriz de Transformação-----------\n');