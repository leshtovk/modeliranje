function [X, r] = curcumscribed_circle(T)

T1 = T(:, 1);
T2 = T(:, 2);
T3 = T(:, 3);

t12 = T2 - T1; 
t23 = T3 - T2; 
t31 = T1 - T3; 

r12 = rotiraj(t12, pi/2);
r23 = rotiraj(t23, pi/2);
r31 = rotiraj(t31, pi/2);

R1 = T1 + (t12 ./ 2);
R2 = T2 + (t23 ./ 2);  

M = [r12(2) -r12(1); r23(2) -r23(1)]; 
N = [R1(1)*r12(2) - R1(2)*r12(1); R2(1)*r23(2) - R2(2)*r23(1)];

X = linsolve(M, N);
r = norm(T1 - X); 


end