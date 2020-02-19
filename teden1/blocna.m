function M = blocna(n)

% construction of T
T = diag(linspace(-4, -4, n)); 

v = linspace(1, 1, n-1); 
Tu = diag(v, 1); 
Tl = diag(v, -1); 

T = T + Tu + Tl;

% construction of M

I = diag(linspace(1, 1, n)); 
M = T; 

for k = 2:n
   
    %???
    
end

end