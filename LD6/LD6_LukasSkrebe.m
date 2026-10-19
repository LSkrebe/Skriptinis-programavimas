% Lukas Skrebe
% EIF-25
% 2 variantas
% 2026-10-19

help kelv2far
disp(kelv2far(273.15))
disp(kelv2far(0))

global x y
x = 2 * pi:-0.1:-2 * pi;
y = zeros(size(x));
funkc_sinc
funkc_vienetas
figure
plot(x, y, '--y*')
xlabel('x')
ylabel('y')
title('y(x)')
grid on
whos global
