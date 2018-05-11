function [ ] = power_fit(x, y)
%LINEAR_FIT Summary of this function goes here
%   Detailed explanation goes here

n = length(x);
X = log(x);
Y = log(y);
S = [X; ones(1,n)];
A = S*S';
B = S*Y';
C = A\B;

syms t;
poly = exp(C(2))*(t.^(C(1)));

disp('The Polynomial is : ')
disp(vpa(poly,8));
plot(x, y, '*');
hold on;
fplot(poly, [x(1) x(end)]);
legend('Data Points', 'Polynomial');

end

