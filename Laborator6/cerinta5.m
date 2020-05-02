clc; clear all; close all;
x=linspace(0,1,10);%9 subintervale
Ast=1.1;
y=-6*x;
c=fem1(9);
norm(c'-y)
xx=0:0.01:1;
plot(xx,-6*xx,'b',x,c,'r');
