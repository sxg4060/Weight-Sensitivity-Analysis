acc6 = load('acc7.txt');
x0 = load('x.txt');
y0 = load('y.txt');

x = x0(:);
y = y0(:);
z = acc6(:);
F = scatteredInterpolant(x,y,z);
[X,Y] = meshgrid(x,y);
Z = F(X,Y);
surf(X,Y,Z)
print -dpng acc6.png