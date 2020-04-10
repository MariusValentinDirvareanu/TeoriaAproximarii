clc; close all; clear global;
fileID = fopen('rezolvare.txt','w');
fprintf(fileID,'==Cerinta 2==\n');
cerinta2(fileID);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'==Cerinta 3==\n');
cerinta3();
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'==Cerinta 5==\n');
[e1,e1p]=calcul_erori(4)
[e2,e2p]=calcul_erori(8)
[e3,e3p]=calcul_erori(16)
[e4,e4p]=calcul_erori(32)
e1/e2
e2/e3
e3/e4
e1p/e2p
e2p/e3p
e3p/e4p
fclose(fileID);