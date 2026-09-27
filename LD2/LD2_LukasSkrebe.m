% Lukas Skrebe
% EIF-25
% 1 variantas
% 2026-09-27

v1 = 5:2:34;
v2 = exp(v1);
rez = (v1 ./ v2)';

A = [pi/2, 3i; log(2), 2*pi];
B = exp(A(1, :));
A = [A; B];
eil_sumos = sum(A, 2);

t = 0:0.001:1;
Amp = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;
s = Amp * sin(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;
atrinkti = x(x > U1);
filtruotas = x;
filtruotas(abs(filtruotas) < U2) = 0;
dydis_nefiltr = length(x);
dydis_atrinkti = length(atrinkti);
max_f = max(filtruotas);
min_f = min(filtruotas);
