function [ ] = LIP_simplified(x, y)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

n = length(x);
syms t;
arr = 1;
for i = 1:n
    arr = arr * (t - x(i));
end

poly = 0;
for i = 1:n
    num = arr/(t-x(i));
    den = subs(num, x(i));
    poly = poly + y(i)*(num/den);
end
poly = simplify(poly);
disp('The Polynomial is : ')
disp(poly);
plot(x, y, '*');
hold on;
fplot(poly, [min(x) max(x)]);
legend('Data Points', 'Polynomial');

end

