clc; close all; clear all;
x=[1 2 3 4 5];
y=[1 1.2 1.4 1 2];
xval=1:0.1:5;
yval=spline(x,y,xval);
plot(x,y,'*');
hold on;
plot(xval,yval,'r');
hold on;
n=length(x);
for i=1:n-1
    h(i)=x(i+1)-x(i);
end
a=natsplinecoef(x,y);

k1=a(2)/2*h(2)-y(1)/h(1)+h(1)*a(1)/6+y(2)/h(1)-h(1)*a(2)/6;
kn=a(4)/2*h(4)-y(4-1)/h(4-1)+h(4-1)*a(4-1)/6+y(4)/h(4-1)-h(4-1)*a(4)/6;


yval2=spline(x, [k1,y,kn],xval);
plot(xval,yval2,'b');
disp('Norma infinit este:');
disp(norm(abs(yval-yval2),Inf));