X=[1 2 3 4 5]
Y=[1 1.2 1.1 2 1.5]
m=1;
C=cmmp(X,Y,m)
plot(X,Y,'*',X,C(1)*X+C(2),'b')