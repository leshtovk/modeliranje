xInt = 0:0.01:1;
yInt = 1:0.01:2; 
[X, Y] = meshgrid(xInt, yInt);

f = @(x, y) sin(x.^2 - y.^4) ./ (x.^2 - y.^4);
Z = f(X, Y);

nans = isnan(Z);
X(nans) = 1;
overfls = find(Z > 1e10);
X(overfls) = 1;

%[m, n] = size(X);
%for i = 1:m 
%   for j = 1:n
%    
%       if Z(i, j) > 1e10
%          
%           X(i, j) = 1;
%           
%       end
%       
%   end
%    
%end

Z2 = f(X, Y);
surf(Z2);



