x=linspace(0,1,10);%9 subintervale
y=Ast*sin(pi*x);
c=fem1(9);
norm(c'-y)
xx=0:0.01:1;
plot(xx,Ast*sin(pi*xx),x,c);
