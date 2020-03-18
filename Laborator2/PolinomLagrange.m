X=[1 2 3 4]
Y=[2 5 10 17]
m=length(X)-1;
C=cmmp(X,Y,m)
plot(X,Y,'+',X,C(1)*X.^3+C(2)*X.^2+C(3)*X+C(4),'r')