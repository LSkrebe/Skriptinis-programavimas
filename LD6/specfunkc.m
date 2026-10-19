function varargout = specfunkc(varargin)
if nargin == 1
    rez = varargin{1}.^2;
elseif nargin == 2
    x = varargin{1};
    y = varargin{2};
    x2 = x.^2;
    y3 = y.^3;
    rez = cos(max(x, y));
else
    error('specfunkc: reikia 1 arba 2 argumentu')
end
if nargout == 0
    disp(rez)
else
    varargout{1} = rez;
end
end
