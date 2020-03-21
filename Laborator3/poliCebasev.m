clc; clear all; close all;
syms x;
a=rand+2
T(1)=1*x^0;
T(2)=x;
n=9;
for i=3:n+1
    T(i)=2*x*T(i-1)-T(i-2);
end
z=solve(T(8)==0,x);
for j=1:length(z)
    if double(z(j))>=-a && double(z(j))<=a
        xx=z(j)
    end
end
plot3(z,xx,'+')
