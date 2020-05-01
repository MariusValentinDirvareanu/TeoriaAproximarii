clc; clear all;
format long
%valoarea exacta a integralei
sin(3)-sin(2)
%ponderi, noduri pe [-1,1]
[w,x]=ponderi();
%ponderi,noduri pe [2,3]
w=(3-2)/2*w;
x=(3-2)/2*x+(2+3)/2;
%aproximam integrala cu formula de cuadratura
w'*cos(x)
