X=[-1 0 1 2]
Y=[1 -1 0 1]
m=1;
C=cmmp(X,Y,m)
plot(X,Y,'+',X,C(1)*sin(X)+C(2)*cos(X),'r')