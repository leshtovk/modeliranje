function u = rotiraj_vektor(v, phi)

R = [cos(phi) -sin(phi); sin(phi) cos(phi)];
u = R * v;

end