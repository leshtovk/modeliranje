function val = horner(a, x)

[~, n] = size(a);
val = a(1);
for i = 2:n
    
    val = x * val + a(i);

end

end