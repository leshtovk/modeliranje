f = @(x)x .^ 3;
df = @(x)3 .* (x .^ 2); 

interval = [-8, 8]; 
num = 100; 

tangenta(f, df, interval, num);