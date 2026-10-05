% Lukas Skrebe
% EIF-25
% 11 variantas
% 2026-10-05

[X, Y] = meshgrid(linspace(-1.5, 1.5, 60));
Z = 1 - (X.^2 + Y.^2);

figure
surf(X, Y, Z, 'FaceColor', 'b', 'EdgeColor', 'none')
alpha(0.5)
xlabel('x')
ylabel('y')
zlabel('z')
title('z(x, y) = 1 - (x^2 + y^2)')
grid on
