function risi_trikotnik(T)

x = [T(1, :) T(1, 1)];
y = [T(2, :) T(2, 1)]; 

p = plot(x, y);
p.Color = 'k';
p.LineWidth = 1;
p.MarkerSize = 3;
p.Marker = 'o';

end