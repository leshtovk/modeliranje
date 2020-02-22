function tangenta(f, df, interval, st_tock)

k = interval(1); 
l = interval(2); 
X1 = linspace(k, l, 1000);  

X2 = linspace(k, l, st_tock);
for i = 1:st_tock
   
    plot(X1, f(X1))
    xlim([k l])
    ylim([min(f(X1)), max(f(X1))])
    hold on
    
    x0 = X2(i);
    plot(X1, f(x0) + (X1 - x0) .* df(x0))
    
    pause(.1)
    hold off
    
end

end