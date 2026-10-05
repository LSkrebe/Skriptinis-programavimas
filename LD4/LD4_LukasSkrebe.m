% Lukas Skrebe
% EIF-25
% 9 variantas
% 2026-10-05

rng(1)
x = (2 * rand(1, 200) - 1) .* sqrt(pi / 2);
y = (2 * rand(1, 200) - 1) .* sqrt(pi / 2);
[X, Y] = meshgrid(sort(x), sort(y));
Z = sin(X.^2 + Y.^2);

figure
h1 = surf(X, Y, Z);
colormap(jet)
shading interp
rotate(h1, [0 0 1], 15)
xlabel('x')
ylabel('y')
zlabel('z')
title('f(x, y) = sin(x^2 + y^2)')
grid on

[X2, Y2] = meshgrid(linspace(-1, 1, 50));
R = sqrt(X2.^2 + Y2.^2);
Z2 = exp(R.^2);

figure
h2 = surf(X2, Y2, Z2);
colormap(cool)
shading interp
rotate(h2, [0 0 1], 20)
xlabel('x')
ylabel('y')
zlabel('z')
title('z(r) = e^{r^2}, r = sqrt(x^2 + y^2)')
grid on
