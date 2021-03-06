function [] = exponential_fit(x, y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(y);
Y = log(y);
S = [x; ones(1, n)];
A = S*S';
B = S*Y';
C = A\B;

syms t;
func = exp(C(1).*t+C(2));
disp(vpa(func,4))

% plot the points and the polynomial obtained
plot(x, y, '*');
hold on;
fplot(matlabFunction(func), [min(x) max(x)]);
legend('Data Points','Exponential Fit', 'Location' , 'best')
end

