function [] = LIP(x, y)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

n = length(y);
syms t;

polynomial = 0;
for i = 1:n
    product = 1;
    for j = 1:n
        if i~=j
            product = product *( (t - x(j)) / (x(i) - x(j)) );
        end
    end
    polynomial = polynomial + y(i) * product;
end

polynomial = simplify(polynomial);
disp(polynomial)

% plot the points and the polynomial obtained
plot(x, y, '*');
hold on;
fplot(matlabFunction(polynomial), [x(1) x(end)]);
legend('Data Points', 'Interpolating Polynomial', 'Location', 'Best')
end

