% Lukas Skrebe
% EIF-25
% 15 variantas
% 2026-10-12

grupe.pavardes = {'Skrebe', 'Kazlauskas', 'Jonaitis', 'Petraitis', 'Balciunas'};
grupe.amzius = [19, 20, 19, 21, 20];
grupe = orderfields(grupe, {'amzius', 'pavardes'});

format compact
while 1
    x = input('Iveskite x: ');
    y = input('Iveskite y: ');
    if x == 0 && y == 0
        break
    end
    b = atan(y / x);
    rez = zeros(10, 3);
    for n = 1:10
        kaire = (cos(b) + 1i * sin(b))^n;
        desine = cos(n * b) + 1i * sin(n * b);
        rez(n, 1) = kaire;
        rez(n, 2) = desine;
        rez(n, 3) = kaire - desine;
    end
    disp(rez)
end
