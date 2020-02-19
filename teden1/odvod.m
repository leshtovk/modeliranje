function q = odvod(p)

 [~, n] = size(p);
 q = p(1:n-1);
 q = diag(n-1:-1:1) * q'; 
 q = q';
 
end