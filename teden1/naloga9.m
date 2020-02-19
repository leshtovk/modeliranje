f = @(x) sin(x) .* exp(sqrt(x)); 
arg = linspace(1, 3, 1000); 
subplot(2, 2, 1);
plot(arg, f(arg));


g1 = @(t) cos(t);
g2 = @(t) sin(t);
angle = 0:0.1:2*pi;
subplot(2, 2, 2);
plot(g1(angle), g2(angle));

h1 = @(t) cos(t);
h2 = @(t) sin(t);
h3 = @(t) t;
angle = 1:0.1:10*pi;
subplot(2, 2, 3); 
plot3(h1(angle), h2(angle), h3(angle)); 

k = @(x, y) (x^2 + y^2)/(1 + x + y); 
xarg = 0:0.1:1;
yarg = 0:0.1:1;
[Xarg, Yarg] = meshgrid(xarg, yarg);
subplot(2, 2, 4); 
surf(Xarg, Yarg, k(Xarg, Yarg));

