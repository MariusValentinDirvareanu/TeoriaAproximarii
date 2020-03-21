clc; close all; clear all;
x=[1 2 3 4 5];
y=[1 1.2 1.4 1 2];
xval=[1.5 2.5 3.5];
yval=natspline(x,y,xval);
plot(x,y,'*');
hold on;
plot(xval,yval,'r');
