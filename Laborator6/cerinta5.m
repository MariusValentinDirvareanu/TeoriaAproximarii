clc; clear all; close all;
Ast=1.1;
x=linspace(0,1,10);%9 subintervale
y=x.^3+Ast;
c=fem1c5(9);
norm(c'-y)
xx=0:0.01:1;
plot(xx,xx.^3+Ast,'b',x,c,'r');
