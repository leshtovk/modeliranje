xInt = 0:0.01:1;
yInt = 0:0.01:2; 
[X, Y] = ndgrid(xInt, yInt);

f = @(x, y) sin(x.^2 - y.^4) ./ (x.^2 - y.^4);
Z = f(X, Y);

% -------------------------- b ---------------------------

Z(isnan(Z)) = 1;
figure
surf(Z)
hold on
shading interp

% -------------------------- c ---------------------------

maxf = max(max(Z));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
inds = find(Z == maxf); 

plot3(X(inds), Y(inds), Z(inds), 'o-');

% -------------------------- d ---------------------------

syms f(x, y);

dfx = diff(f, x);
dfy = diff(f, y); 

dfx_x_dfy = @(x, y) [-dfx(x, y); -dfy(x, y); 1];







