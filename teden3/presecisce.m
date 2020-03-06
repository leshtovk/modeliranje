function P = presecisce(T1, T2, s1, s2)
    % T1, T2, s1, s2 are COLUMN vecotrs

A = [0 0; 0 0];
A(:, 1) = s1;
A(:, 2) = -s2;
b = T2 - T1;

x = linsolve(A, b);
P = T1 + (x(1, 1) .* s1);

end