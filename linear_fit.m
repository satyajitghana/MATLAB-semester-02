function [] = linear_fit(x, y)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

n = length(y);

S = [x; ones(1, n)];
A = S*S';
B = S*y';
C = A\B;

syms t
func = C(1)*t+C(2);
disp(func)

% plot the points and the polynomial obtained
plot(x, y, '*');
hold on;
fplot(matlabFunction(func), [min(x) max(x)]);
legend('Data Points','Linear Fit', 'Location' , 'best')
end

