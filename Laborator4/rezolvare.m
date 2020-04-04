clc; close all; clear global;
fileID = fopen('rezolvare.txt','w');
fprintf(fileID,'==Cerinta 2==\n');
cerinta2(fileID);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'==Cerinta 3==\n');
cerinta3();
fprintf(fileID,'Explicatie: \n');
fclose(fileID);