
f = @(x)sin(x) .* exp(sqrt(x)); % x \in [1, 3]
g = {@(t)cos(t), @(t)sin(t)}; % t \in [0, 2*pi]
h = {@(t)cos(t), @(t)sin(t), @(t)t}; % t \in [0, 10*pi]
k = @(x, y)(x.^2 + y.^2)/(1 + x + y); % x \in [0, 1], y \in [0, 1]

subplot(2, 2, 1); 
x1 = linspace(1, 3, 1000); 
plot(x1, f(x1)); 

subplot(2, 2, 2); 
t2 = linspace(0, 2*pi, 1000); 
plot(g{1}(t2), g{2}(t2));

subplot(2, 2, 3); 
fplot3(h{1}, h{2}, h{3}, [0, 10*pi]);

subplot(2, 2, 4); 
x4range = linspace(0, 1, 100); 
y4range = linspace(0, 1, 100); 
[X, Y] = meshgrid(x4range, y4range); 
Z = k(X, Y); 
% mesh(Z);
surf(Z)
