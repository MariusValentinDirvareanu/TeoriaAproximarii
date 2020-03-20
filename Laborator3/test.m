clc; clear all; close all;
x=[1 2 3 4 5] 
y=[1 1.2 1.4 1 2] 
xval=[1.5 2.5 3.5]
n=length(x);
for i=1:n-1
    h(i)=x(i+1)-x(i);
end
%initializam yval
yval=xval;
%determinam coeficientii interpolantului spline
a=natsplinecoef(x,y);
for i=1:length(xval)
    %determinam indexul primului interval [x_k,x_(k+1)] in care se afla xval(i)
    k=sum(x<=xval(i));
    if k==n
        k=n-1; 
    end
        %***
        %evaluam s in xval(i).Atentie!!! p_k trebuie inlocuit cu formula corespunzatoare
        %prezentata la clasa.
        yval(i)= a(i)*((x(i+1)-xval(i))^3/(6*h(i)))+a(i+1)*((xval(i)-x(i))^3/(6*h(i)))+(y(i)-h(i)^2*a(i)/6)*((x(i+1)-xval(i))/(h(i))+(y(i+1)-h(i)^2*a(i+1)/6)*((xval(i))-x(i)/h(i));
end