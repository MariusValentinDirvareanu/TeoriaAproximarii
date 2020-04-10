clc; close all; clear global;
A = log2(sum(double('DIRVAREANUMARIUS')));
fileID = fopen('rezolvare.txt','w');


fprintf(fileID,'==Cerinta 2==\n');
cerinta2(fileID,A);
fprintf(fileID,'Explicatie: \n');



fprintf(fileID,'==Cerinta 3==\n');
cerinta3(A);
fprintf(fileID,'Explicatie: \n');



fprintf(fileID,'==Cerinta 5==\n');
[e1,e1p]=calcul_erori(4)
[e2,e2p]=calcul_erori(8)
[e3,e3p]=calcul_erori(16)
[e4,e4p]=calcul_erori(32)
fprintf(fileID,'Explicatie: \n');
e1/e2
e2/e3
e3/e4
e1p/e2p
e2p/e3p
e3p/e4p
fprintf(fileID,'Explicatie: \n');


fprintf(fileID,'==Cerinta 6==\n');
x=1:5;
%f=inline('2*x.^2+A');
f=@(x) (2*x.^2+A);
xval=1:0.2:5;
yval=interpcuadratic(x,f,xval);
fprintf(fileID,'%d\n',norm(yval-2*xval.^2-A));
fprintf(fileID,'Explicatie: \n');


fprintf(fileID,'==Cerinta 7==\n');
f=@(x) (sin(x+A));
xval0=0:0.2:pi/2;
figure(2);
yval0=feval(f,xval0);
plot(xval0,yval0,'r');
hold on;
x1=linspace(0,pi/2,2);
yval1=interpcuadratic(x1,f,xval0);
plot(xval0,yval1,'b');
hold on;
x2=linspace(0,pi/2,3);
yval2=interpcuadratic(x2,f,xval0);
plot(xval0,yval2,'y');
hold on;
fprintf(fileID,'Explicatie: \n');



fclose(fileID);