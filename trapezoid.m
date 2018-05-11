function [] =trapezoid(f, a, b, n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

h = (b-a)/n;

if numel(f) > 1
    I = (h/2)*(f(1) + f(end) + 2*sum(f(2:1:end-1)));
else
    x = a:h:b;
    I = (h/3)*(f(x(1)) + f(x(end)) + 2*sum(f(x(2:1:end-1))) );
end

% display the integral
disp(I);
end

