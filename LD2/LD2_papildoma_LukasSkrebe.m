% Lukas Skrebe
% EIF-25
% 6 variantas
% 2026-09-27

A = input('Iveskite vektoriu A: ');
B = A(2:2:end);
C = A(end - mod(end + 1, 2):-2:1);
disp('vektorius B yra:')
disp(B)
disp(C)
