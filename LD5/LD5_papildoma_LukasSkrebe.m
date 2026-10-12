% Lukas Skrebe
% EIF-25
% 5 variantas
% 2026-10-12

x = input('Iveskite x: ');
y = input('Iveskite y: ');
for k = 1:10
    m = randi(x);
    n = randi(y);
    A = zeros(x, y);
    A(m, n) = NaN;
    disp(A)
    pause(1)
    clc
end
