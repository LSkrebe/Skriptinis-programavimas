% Lukas Skrebe
% EIF-25
% 12 variantas
% 2026-09-28

rng(1)
t = 0:0.001:1;
Amp = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;
s = Amp * sin(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;
filtruotas = x;
filtruotas(abs(filtruotas) < U2) = 0;
idx = x > U1;
t_sel = t(idx);
x_sel = x(idx);
[xmax, i_max] = max(x_sel);
[xmin, i_min] = min(x_sel);

figure
subplot(2, 1, 1)
plot(t, x, 'c')
hold on
plot(t, filtruotas, 'Color', [0.5 0 0.5])
plot([t(1) t(end)], [U1 U1], 'k-')
plot([t(1) t(end)], [U2 U2], 'k:')
hold off
xlabel('t, s', 'Color', 'b', 'FontSize', 11, 'FontWeight', 'bold')
ylabel('U, V', 'Color', 'b', 'FontSize', 11, 'FontWeight', 'bold')
title('Pradinis ir filtruotas signalai')
legend({'Pradinis', 'Filtruotas', 'U_1', 'U_2'}, 'Location', 'southwest')
axis([min(t) max(t) min(x) max(x)])
grid on

subplot(2, 1, 2)
stem(t_sel, x_sel, 'filled')
hold on
plot(t_sel(i_max), xmax, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 8)
plot(t_sel(i_min), xmin, 'y^', 'MarkerFaceColor', 'y', 'MarkerSize', 8)
hold off
xlabel('t, s', 'Color', 'b', 'FontSize', 11, 'FontWeight', 'bold')
ylabel('U, V', 'Color', 'b', 'FontSize', 11, 'FontWeight', 'bold')
title('Reiksmes virsijančios U_1')
legend({'U > U_1', 'Max', 'Min'}, 'Location', 'southwest')
axis([min(t) max(t) min(x_sel) max(x_sel)])
grid on
