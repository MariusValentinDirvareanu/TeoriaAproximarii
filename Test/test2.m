clc; clear all;
A=1.1
x=[1 2 3 4 5]
y=[A, A+2,-A, 3,A+1]
for j=0:1
    P(j+1,:)=x.^j;
end
Btilde=P*P';
b=P*y';
a=(Btilde\b)'
C=polyfit(x,y,1)
plot(x,y,'*',x,C(1).*x+C(2),'r',x,a(2).*x+a(1),'b')