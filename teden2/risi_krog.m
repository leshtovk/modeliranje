function risi_krog(C, r)

x = @(t)C(1) + r*cos(t);
y = @(t)C(2) + r*sin(t);
phi = linspace(0, 2*pi, 1000); 

plot(x(phi), y(phi));

end