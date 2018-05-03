function [] = quadratic_fit(x, y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(y);

S = [x.^2; x; ones(1, n)];
A = S*S';
B = S*y';
C = A\B;

syms t;
func = C(1).*t.^2+C(2).*t+C(3);
disp(vpa(func,4))

% plot the points and the polynomial obtained
plot(x, y, '*');
hold on;
fplot(matlabFunction(func), [x(1) x(end)]);
legend('Data Points','Quadratic Fit', 'Location' , 'best')
end

