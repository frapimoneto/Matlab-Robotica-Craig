function E = r2euler(alpha, beta, gamma)
    % This function calculates euler angles based on Rotation matrix  
    ca = cosd(alpha);
    sa = sind(alpha);
    cb = cosd(beta);
    sb = sind(beta);
    cg = cosd(gamma);
    sg = sind(gamma);

    E = [ca*cb, ca*sb*sg-sa*cg, ca*sb*cg+sa*sg;
         sa*cb, sa*sb*sg+ca*cg, sa*sb*cg-ca*sg;
         -sb, cb*sg, cb*cg];