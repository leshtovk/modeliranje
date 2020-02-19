function M = matrika(x, y)

if nargin == 1
    y = x;
    
end

[m, ~] = size(y);
u = linspace(1, 1, m);
for i = 1:m
   
    if abs(y(i)) > 10^(-10) 
        u(i) = 1 / y(i);     
    end
end

M = x * u;

for j = 1:m 
    
    if abs(y(i)) < 10^(-10)
        M(:, i) = 1;
    end

end