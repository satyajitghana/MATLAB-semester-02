%% Author : Satyajit Ghana
disp('yo');
% use the Run-Section option to run a specific section of the code

%% ODE45 : not so important, used only in non-stiff differential equations
% uses the runge-kutta method to get the value at given points
func = @(x,y) -(y*exp(x)+2*exp(x)+y^2)/(exp(x)+2*x*y);
y0=6;
xspan=[0.2 0.4 0.6 0.8];
[x, y] = ode45(func, xspan, y0);
disp(x);
disp(y);
plot(x, y, '-o');

%% dsolve
syms y(x)
ode = diff(y, x, 2) + 4*diff(y, x, 1) + 4*y == (12*x^2-6*x)*exp(2*x);
Dy = diff(y, x, 1);
ySol = dsolve(ode, y(0)==1, Dy(0)==0);
disp(simplify(ySol));

%% trapz
func = @(x) x.*exp(2.*x).*sin(sqrt(x));
t = linspace(0, pi, 16);
val = trapz(t, func(t));
disp(val);

%% polyfit
x = [1 2 3 4 5 6];
y = [0 3 8 15 24 35];
C = polyfit(x, y, 2);
syms t;
poly = C(1)*t.^2+C(2)*t+C(3);
plot(x, y, '*');
hold on;
fplot(poly, [x(1) x(end)]);
legend('Data Points', 'polyfit polynomial');

%% quad : guassian quadrature, int or integral is usually more preferred
func = @(x) 1./(1+x.^2);
val = quad(func, 0, 1);
disp(val)

%% int : uses a symbolic function and uses symbolic integration
func = @(x) 1./(1+x.^2);
val = int(sym(func), 0, 1);
disp(val);

%% integral : uses a function handle
func = @(x) 1./(1+x.^2);
val = integral(func, 0, 1);
disp(val);