clc; close all; clear global;
fileID = fopen('rezolvare.txt','w');
fprintf(fileID,'==Cerinta 2==\n');
fprintf(fileID,'Explicatie: \n');
cerinta2(fileID);
fclose(fileID);