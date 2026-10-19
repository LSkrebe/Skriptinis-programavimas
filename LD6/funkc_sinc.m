function funkc_sinc
global x y
y(x ~= 0) = sin(x(x ~= 0)) ./ x(x ~= 0);
end
