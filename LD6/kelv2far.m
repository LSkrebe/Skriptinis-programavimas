function F = kelv2far(K)
%KELV2FAR Konvertuoja temperatura is Kelvino i Farenheita.
%   F = kelv2far(K) grazina temperatura Farenheito laipsniais,
%   kai K - temperatura Kelvino laipsniais.
%   Formule: F = K*(9/5) - 459.67
F = K * (9 / 5) - 459.67;
end
