function [S, s] = simetrala_kota(C, A, B)
    % C, A, B COLUMN vectors

AB = B - A;
AC = C - A;

s = (norm(AC) .* AB) + (norm(AB) .* AC);
S = A;

end