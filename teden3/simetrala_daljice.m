function [S, s] = simetrala_daljice(A, B)
    % A, B are COLUMN vecotrs
   
    AB = B - A;
    S = A + (AB ./ 2);
    s = rotiraj_vektor(AB, pi/2);
    
end