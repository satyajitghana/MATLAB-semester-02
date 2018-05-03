function [] =simpson38(f, a, b, n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

if mod(n, 3)
    disp('n must be multiple of 3');
    return
end

h = (b-a)/n;

if numel(f) > 1
    I = (3*h/8)*(f(1) + f(end) + 3*(sum(f(2:3:end-2)) + sum(f(3:3:end-1))) + 2*sum(f(4:3:end-3)));
else
    x = a:h:b;
    I = (3*h/8)*(f(x(1)) + f(x(end)) + 3*(sum(f(x(2:3:end-2))) + sum(f(x(3:3:end-1)))) + 2*sum(f(x(4:3:end-3))));
end

% display the integral
disp(I);
end

