function risi_kroznici(T)

[Xv, rv] = inscribed_circle(T);
[Xo, ro] = circumscribed_circle(T);

risi_trikotnik(T);
hold on

x = @(t, C, r)C(1) + r*cos(t);
y = @(t, C, r)C(2) + r*sin(t);
phi = linspace(0, 2*pi, 1000); 

p1 = plot(x(phi, Xv, rv), y(phi, Xv, rv));
p1.Color = 'r';
p1.LineWidth = 1;

p2 = plot(Xv(1), Xv(2), 'x');
p2.Color = 'r'; 
p2.LineWidth = 1;

h1 = plot(x(phi, Xo, ro), y(phi, Xo, ro));
h1.Color = 'b';
h1.LineWidth = 1; 

h2 = plot(Xo(1), Xo(2), 'x');
h2.Color = 'b';
h2.LineWidth = 1; 

end