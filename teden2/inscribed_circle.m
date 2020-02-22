function [X, r] = inscribed_circle(T)

T1 = T(:, 1);
T2 = T(:, 2);
T3 = T(:, 3);

t12 = T2 - T1; 
t23 = T3 - T2; 
t31 = T1 - T3; 

r12 = rotiraj(t12, pi);
r23 = rotiraj(t23, pi);
r31 = rotiraj(t31, pi);

% get the bisectors of each angle
S1 = (norm(t23) .* r12) + (norm(r12) .* t23); 
S1 = S1 ./ norm(S1); 

S2 = (norm(t31) .* r23) + (norm(r23) .* t31); 
S2 = S2 ./ norm(S2);

S3 = (norm(t12) .* r31) + (norm(r31) .* t12); 
S3 = S3 ./ norm(S3); 

% get the intersection of two bisector lines
M = [S3(2) -S3(1); S1(2) -S1(1)]; 
N = [T1(1)*S3(2) - T1(2)*S3(1); T2(1)*S1(2) - T2(2)*S1(1)]; 
X = linsolve(M, N); 

% get the circumference of the inscribed circle
a = norm(t12); 
b = norm(t23); 
c = norm(t31);
s = (a + b + c)/2;
r = sqrt(s*(s-a)*(s-b)*(s-c))/s;

end