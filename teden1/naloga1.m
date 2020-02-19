A = [11 2 -3 0; 2 1 8 7; 0 22 21 -9; 4 -3 2 0; 5 1 10 -8];

% 1. del
questa = max(max(A));
questb = A' * A;
questc = A .* A;

%2. del
B = A(:, 1:3);

columns = [2, 4];
C = A(1:end-1, [2, 4]); 

A(1:end-1, [2, 4]) = 1; 



