clc; clear all;
A=1.1
v1=linspace(-A,A,5)
v2=v1.^2
v3=v1.^3

u1=v1
u1prodv1=dot(u1,v2)/dot(u1,u1)*u1
u2=v2-u1prodv1
u1prodv3=dot(u1,v3)/dot(u1,u1)*u1
u2prodv3=dot(u2,v3)/dot(u2,u2)*u2
u3=v3-u1prodv3-u2prodv3
dot(u1,u2)
dot(u1,u3)
dot(u2,u3)


vector=[1 1 1 1 1]
w=0;
w=w+(vector*u1')*u1;
w=w+(vector*u2')*u2;
w=w+(vector*u3')*u3
dot(vector,v1)
dot(vector,v2)
dot(vector,v3)


M=zeros(20);
for i=1:20
    for j=1:20
        if i-j==1 || j-i==1
            M(i,j)=1;
        end
        if i==j
            M(i,j)=A;
        end
    end
end
M

f=@(x)(cos(7*x +A));
x=linspace(0,A,8)
y=feval(f,x)
C=polyfit(x,y,1)

% Exercitiul 7
syms t;
T(1)=1*t^0;
T(2)=t;
n=8;
for i=3:n+1
    T(i)=simplifyFraction((2*t*T(i-1)-T(i-2)),'Expand',true);
end
z=(double(solve(T(9)==0,t)))'
C2=polyfit(z,y,2)


