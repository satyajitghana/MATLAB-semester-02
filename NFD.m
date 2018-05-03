function [] = NFD(x, y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(y);
h = x(2) - x(1);
% create the forward difference table
differences(:, 1) = y;
for j = 2:n
    for i = j:n
        differences(i, j) = differences(i, j-1) - differences(i-1, j-1);
    end
end

% first forward difference of each degree delta_zeros
delta_zeros = diag(differences);

syms t;
s = (t - x(1)) / h;
product = [1 s];
for i = 3:n
    product(i) = product(i-1)*(s-(i-2)) / (i-1);
end

polynomial = simplify(product * delta_zeros);

disp(polynomial);

% plot the points and the polynomial obtained
plot(x, y, '*');
hold on;
func = matlabFunction(polynomial);
fplot(func, [x(1) x(end)]);
legend('Data Points','Interpolatin Function', 'Location' , 'best')
end

