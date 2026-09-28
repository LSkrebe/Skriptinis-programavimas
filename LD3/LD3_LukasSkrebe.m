% Lukas Skrebe
% EIF-25
% 7 variantas
% 2026-09-28

t = linspace(-pi, pi, 50);
y = sin(t);

figure
plot(t, y, 'r--')
xlabel('t')
ylabel('y(t)')
title('y(t) = sin(t)')
legend('sin(t)', 'Location', 'northeast')
axis([min(t) max(t) min(y) max(y)])
grid on

x = linspace(-pi, pi, 50);
y1 = -x.^2 + 9;
y2 = x.^3 - 2*x.^2 - 9;

figure
plot(x, y1, x, y2)
xlabel('x')
ylabel('y')
title('y_1(x) ir y_2(x)')
legend('y_1 = -x^2 + 9', 'y_2 = x^3 - 2x^2 - 9', 'Location', 'southwest')
axis([min(x) max(x) min([y1 y2]) max([y1 y2])])
grid on

pazymiai = [
    8 7 9 6
    5 8 7 9
    9 6 8 7
    7 9 6 8
    6 5 9 7
    8 8 7 9
];
vardai = {'L.S.', 'A.K.', 'M.P.', 'J.B.', 'E.N.', 'D.R.'};
vidurkiai_ld = mean(pazymiai, 1);

figure
subplot(2, 1, 1)
bar(pazymiai')
xlabel('ld')
ylabel('Pazymys')
title('Studentu pazangumas kiekvieno LD metu')
legend(vardai, 'Location', 'eastoutside')
ylim([0 10])
grid on

subplot(2, 1, 2)
stem(1:4, vidurkiai_ld, 'filled')
xlabel('ld')
ylabel('Vidurkis')
title('Kiekvieno laboratorinio darbo vidurkis')
ylim([0 10])
xlim([0.5 4.5])
grid on
