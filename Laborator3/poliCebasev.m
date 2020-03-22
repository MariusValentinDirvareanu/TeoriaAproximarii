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
disp('Valorile pentru y sunt:');
disp(y);

% Exercitiul 4
m=length(x)-1;
C=cmmp(x,y,m);
disp('Valorile polinomului Lagrange de interpolare sunt:');
disp(C);
% Exercitiul 5
figure(1);
plot(x,y,'r');
hold on;
plot(x,C(1)*x.^6+C(2)*x.^5+C(3)*x.^4+C(4)*x.^3+C(5)*x.^2+C(6)*x.^1+C(7),'b');
% Exercitiul 6
%plot(x,C(1)*x.^10+C(2)*x.^9+C(3)*x.^8+C(4)*x.^7+C(5)*x.^6+C(6)*x.^5+C(7)*x.^4+C(8)*x.^3+C(9)*x.^2+C(10)*x.^1+C(11),'b');
axis([-a,a,min(y)-0.1,max(y)+0.1]);

