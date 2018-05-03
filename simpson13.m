function [] =simpson13(f, a, b, n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

if mod(n, 2)
    disp('n must be even');
    return
end

h = (b-a)/n;

if numel(f) > 1
    I = (h/3)*(f(1) + f(end) + 4*sum(f(2:2:end-1)) + 2*sum(f(3:2:end-2)));
else
    x = a:h:b;
    I = (h/3)*(f(x(1)) + f(x(end)) + 4*sum(f(x(2:2:end-1))) + 2*sum(f(x(3:2:end-2))));
end

% display the integral
disp(I);
end

