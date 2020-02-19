function M = naloga2(n)

A = diag(1:n); 
B = zeros(n) + 4; 
B = triu(B, 1);

v = linspace(1, 1, n-1);
u = linspace(-1, -1, n-2);
C = diag(v, -1); 
C = C + diag(u, -2); 

M = A + B + C;

end 