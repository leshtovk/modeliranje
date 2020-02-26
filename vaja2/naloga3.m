% x = rcos(phi)
% y = rsin(phi)
% z = r * phi 

x = @(r, phi) r .* cos(phi); 
y = @(r, phi) r .* sin(phi); 

rInt = linspace(1, 2, 100); 
phiInt = linspace(0, 10 * pi, 100); 

xInt = x(rInt, phiInt); 
yInt = y(rInt, phiInt); 

z = @(x, y) sqrt(x.^2 + y.^2) .* atan(y./x); 
[X, Y] = meshgrid(xInt, yInt); 
Z = z(X, Y); 

surf(Z);