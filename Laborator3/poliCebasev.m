clc; clear all; close all;
% Exercitiul 1
a=rand+2
% Exercitiul 2
syms t;
T(1)=1*t^0;
T(2)=t;
n=11;
for i=3:n+1
    T(i)=simplifyFraction((2*t*T(i-1)-T(i-2)),'Expand',true);
end
z=(double(solve(T(8)==0,t)))';
i=1;
for j=1:length(z)
    if double(z(j))>=-a && double(z(j))<=a
        x(i)=z(j);
        i=i+1;
    end
end
disp('Valorile pentru z sunt:');
disp(z);
disp('Valorile pentru x sunt:');
disp(x);
% Exercitiul 3
for i=1:length(x)
    y(i)=f(x(i),a);
end
disp(y);

% Exercitiul 4
m=length(x)-1;
C=cmmp(x,y,m);
disp(C);
d=-a:0.1:a;
plot(x,y);
axis(-a:a);
% ,-a:0.1:a,C(1)*x.^6+C(2)*x.^5+C(3)*x.^4+C(4)*x.^3+C(5)*x.^2+C(6)*x.^1+C(7),'r'

