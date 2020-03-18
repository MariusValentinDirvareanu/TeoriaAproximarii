%------------------------------------
clc; clear all; close all;
%generam o retea de numere echidistante pe intervalul -5,5

x=-5:0.01:5;

%generam vectorul ce va fi proiectat, valorile functiei runge pe reteaua x.

v=1./(1+x.^2);

%generam vectorii din spatiul in care proiectam, adica evaluam 1,x,x^2,...,x^11 pe reteaua respectiva si stocam vectorii rezultati pe %liniile lui A.
n=length(v);
A=zeros(11,n);

for k=0:11
    A(k+1,:)=x.^k;
end

%proiectam v pe spatiul generat de primele 6 linii ale lui A (aproximam cu o combo de  1,x,x^2,..x^5)
w5=proj(v,A(1:6,:));


%proiectam v pe spatiul generat de primele 9 linii ale lui A (aproximam cu o combo de 1,x,x^2,..x^8)
w8=proj(v,A(1:8,:));


%proiectam v pe spatiul generat toate liniile lui A (aproximam cu o combo de 1,x,x^2,..x^11)
w11=proj(v,A);

% si acum vizualizam v(in rosu) si proiectiile w5 (albastru), w8(magenta), w11 (negru).

plot(x, v, 'r',x,w5,'b',x,w8,'m',x,w11,'k')

%-------------------------------------------------------