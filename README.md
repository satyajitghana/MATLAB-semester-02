# MATLAB-semester-02 2018
#### REG No: 17ETCS002159 Satyajit Ghana
\
NOTE about the plotting steps:

``fplot`` doesn't support a symbolic function as a input argument in MATLAB 2014a and earlier versions,
If you would like to use these codes in older versions of MATLAB that did support ``fplot`` but not symbolic functions,
then convert the symblic function to a function handle and then use fplot, MATLAB 2016 and later support symbolic fplot,
and also ``function_handle`` fplot, i.e. its backwards compatible.

Example for using fplot in earlier versions of MATLAB
```matlab
syms t;
func = t^2-1;
fplot(matlabFunction(func), [0 10]);
```

If you would like to use the primitive ``plot`` to plot the graph do the following :
```matlab
syms t;
func = t.^2-1;
t = 0:0.01:10;
plot(t, eval(func));
```
\
## License
MIT

*Free Software, Hell Yeah !*