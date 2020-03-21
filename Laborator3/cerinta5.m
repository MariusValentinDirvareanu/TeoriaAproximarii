clc; close all; clear all;
x=[1 2 3 4 5];
y=[1 1.2 1.4 1 2];
xval=1:0.1:5;
yval=spline(x,y,xval);
plot(x,y,'*');
hold on;
plot(xval,yval,'r');
n=length(x);
for i=1:n-1
    h(i)=x(i+1)-x(i);
end
a=natsplinecoef(x,y);

k1=a(2)/2*h(2)-y(1)/h(1)+h(1)*a(1)/6+y(2)/h(1)-h(1)*a(2)/6;
%kn=a(n+1)/2*h(n+1)-y(n)/h(n)+h(n)*a(n)/6+y(n+1)/h(n)-h(n)*a(n+1)/6;


%spline(x, [k1,y,kn],xval);