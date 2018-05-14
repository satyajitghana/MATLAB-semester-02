function [] = NDD(x, y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

n = length(y);

differences(:, 1) = y;

% construct the divided differences table
for j = 2:n
    for i = j:n
        differences(i, j) = differences(i, j-1) - differences(i-1, j-1);
        differences(i, j) = differences(i, j) / (x(i) - x(i-j+1));
    end
end

% extract the zero divided differences from the previously created table
diff_zeros = diag(differences);

syms t

product = [1 (t-x(1))];
for i = 3:n
    product(i) = product(i-1)*(t-x(i-1));
end

polynomial = simplify(product * diff_zeros);

% plot the points and the polynomial obtained
plot(x, y, '*');
hold on;
fplot(matlabFunction(polynomial), [min(x) max(x)]);
legend('Data Points', 'Interpolating Polynomial', 'Location', 'Best')
end

