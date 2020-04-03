A = log2(sum(double('DIRVAREANUMARIUS')))
x=1:5;
f=inline('2*x+A');
xval=1:0.2:5;
yval=interpliniar(x,f,xval);
norm(yval-2*xval-A)