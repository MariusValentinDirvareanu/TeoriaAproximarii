clc; close all; clear all;
x=[-1 0 1 2] 
y=x+1
xval=[-0.5 0.5 1.5]
yval=natspline(x,y,xval)
plot(x,y,'*');
hold on;
plot(xval,yval,'r');