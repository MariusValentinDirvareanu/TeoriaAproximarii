clc; clear all; close all;
Ast=1.1;
format long
%valoarea exacta a integralei
-cos(1+Ast)+cos(Ast)
%ponderi, noduri pe [-1,1]
[w,x]=ponderi();
%ponderi,noduri pe [2,3]
w=1/2*w;
x=1/2*x+1/2;
%aproximam integrala cu formula de cuadratura
w'*sin(x+Ast)