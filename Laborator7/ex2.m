X=[-1 0 1 2]
Y=[3 2 2 7]
m=1;
C=cmmp(X,Y,m)
plot(X,Y,'*',X,C(1)*X+C(2),'b')