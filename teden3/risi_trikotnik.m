function risi_trikotnik(A, B, C)
    % A, B, C are COLUMN vectors

% draw the triangle 
triX = [A(1, 1) B(1, 1) C(1, 1) A(1, 1)];
triY = [A(2, 1) B(2, 1) C(2, 1) A(2, 1)];

plot(triX, triY, 'color', 'k');
axis equal
hold on

plot(A(1, 1), A(2, 1), 'o', 'color', 'k');
plot(B(1, 1), B(2, 1), 'o', 'color', 'k');
plot(C(1, 1), C(2, 1), 'o', 'color', 'k');

% parametrization of a circle
rx = @(rad, phi) rad .* cos(phi);
ry = @(rad, phi) rad .* sin(phi);
angles = linspace(0, 2*pi, 1000);

% draw the inscribed circle
[S1, s1] = simetrala_kota(C, A, B);
[S2, s2] = simetrala_kota(A, B, C);

P1 = presecisce(S1, S2, s1, s2); % coulumn vector
plot(P1(1, 1), P1(2, 1), 'x', 'color', 'b');

AB = B - A;
BC = C - B;
CA = A - C;

a = norm(AB);
b = norm(BC);
c = norm(CA);
s = (a + b + c) / 2;
plosc = sqrt(s * (s - a) * (s - b) * (s - c));

inscR = plosc / s;
inscX = P1(1, 1) + rx(inscR, angles);
inscY = P1(2, 1) + ry(inscR, angles);
plot(inscX, inscY, 'color', 'b');

% draw the circumscribed circle 
[L1, l1] = simetrala_daljice(A, B);
[L2, l2] = simetrala_daljice(B, C);

P2 = presecisce(L1, L2, l1, l2);
plot(P2(1, 1), P2(2, 1), 'x', 'color', 'r');

circR = norm(P2 - A);
circX = P2(1, 1) + rx(circR, angles);
circY = P2(2, 1) + ry(circR, angles);

plot(circX, circY, 'color', 'r');


end