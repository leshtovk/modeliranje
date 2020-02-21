function cvet(a, b, n)

% parametrization of an elipse
r1 = @(a, t) a .* cos(t);
r2 = @(b, t) b .* sin(t);
param = @(a, b, t) [r1(a, t); r2(b, t)];

% the points we will be plugging into the parametrizations
t = linspace(0, 2*pi, 1000);

plot(r1(a, t), r2(b, t));
hold on; 

increment = 2*pi/n; 
phi = increment; 
% in each iteration we will be incrementing the angle `phi`
% by which we will rotate the elipse 
for i = 2:n
   
   rotated = rotiraj(param(a, b, t), phi);
   plot(rotated(1, :), rotated(2, :)); 
   
   phi = phi + increment; 
    
end

end