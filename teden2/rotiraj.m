function U = rotiraj(V, phi)
%
% u = rotiraj(v, phi)
% 
% input arguments: 
% V - (2 x m) array
% phi - an angle by which we rotate the columns of V
%
% output argument: 
% U - (2 x m) array whose columns are the rotated columns of V

R = @(t)[cos(t), -sin(t); sin(t), cos(t)];
U = R(phi) * V;

end