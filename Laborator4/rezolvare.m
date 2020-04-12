clc; close all; clear global;
A = log2(sum(double('DIRVAREANUMARIUS')))
fileID = fopen('rezolvare.txt','w');


fprintf(fileID,'==Cerinta 2==\n');
cerinta2(fileID,A);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'Rezultatul obtinut arata diferenta dintre aproximarea interpolantului Lagrange pe portiuni si functia data (f=2*x+A) evaluata in fiecare xval, facandu-se norma 2. Valoarea este foarte apropiata de 0 datorita aproximarii foarte bune.\n');
fprintf(fileID,'\n\n');



fprintf(fileID,'==Cerinta 3==\n');
cerinta3(fileID, A);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'Graficul arata efectul impartirii intervalului [0,pi/2] in cat mai multe bucati. Cu cat sunt mai multe bucati, cu atat aproximarea este mai buna.\n');
fprintf(fileID,'\n\n');



fprintf(fileID,'==Cerinta 5==\n');
[e1,e1p]=calcul_erori(4);
[e2,e2p]=calcul_erori(8);
[e3,e3p]=calcul_erori(16);
[e4,e4p]=calcul_erori(32);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'e1, e2, e3, e4 reprezinta eroarile aprozimatii functiei f pe subintervalele 4, 8, 16, 32, iar e1p, e2p, e3p, e4p reprezinta erorile aproximarii primei derivate a functiei f pe aceleasi subintervale.\n');
fprintf(fileID,'e1/e2=%d\n',e1/e2);
fprintf(fileID,'e2/e3=%d\n',e2/e3);
fprintf(fileID,'e3/e4=%d\n',e3/e4);
fprintf(fileID,'e1p/e2p=%d\n',e1p/e2p);
fprintf(fileID,'e2p/e3p=%d\n',e2p/e3p);
fprintf(fileID,'e3p/e4p=%d\n',e3p/e4p);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'Din rezultatele de mai sus se observa o diferenta foarte mica intre erori, acestea fiind aproximative intre ele, atat pentru functia f, cat si pentru prima derivata a acesteia.\n');
fprintf(fileID,'\n\n');


fprintf(fileID,'==Cerinta 6==\n');
cerinta6(fileID, A);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'Rezultatul obtinut arata diferenta dintre aproximarea interpolantului Lagrange pe portiuni si functia data (f=2*x^2-A) evaluata in fiecare xval, facandu-se norma 2. Valoarea este foarte apropiata de 0 datorita aproximarii foarte bune.\n');
fprintf(fileID,'\n\n');

fprintf(fileID,'==Cerinta 7==\n');
cerinta7(fileID,A);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'Graficul arata efectul impartirii intervalului [0,pi/2] in cat mai multe bucati. Cu cat sunt mai multe bucati, cu atat aproximarea este mai buna.\n');
fprintf(fileID,'\n\n');



fprintf(fileID,'==Cerinta 9==\n');
[e1,e1p]=calcul_erori_quad(4);
[e2,e2p]=calcul_erori_quad(8);
[e3,e3p]=calcul_erori_quad(16);
[e4,e4p]=calcul_erori_quad(32);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'e1, e2, e3, e4 reprezinta eroarile aprozimatii functiei f pe subintervalele 4, 8, 16, 32, iar e1p, e2p, e3p, e4p reprezinta erorile aproximarii primei derivate a functiei f pe aceleasi subintervale.\n');
fprintf(fileID,'e1/e2=%d\n',e1/e2);
fprintf(fileID,'e2/e3=%d\n',e2/e3);
fprintf(fileID,'e3/e4=%d\n',e3/e4);
fprintf(fileID,'e1p/e2p=%d\n',e1p/e2p);
fprintf(fileID,'e2p/e3p=%d\n',e2p/e3p);
fprintf(fileID,'e3p/e4p=%d\n',e3p/e4p);
fprintf(fileID,'Explicatie: \n');
fprintf(fileID,'Din rezultatele de mai sus se observa o diferenta de aproximativ 10^-1 intre valorile erorilor, atat pentru aproximarea functiei f, cat si pentru prima derivata a acesteia. Din aceste rezultate reiese faptul ca o impartire a subintervalului cat mai mare asigura o aproximare cat mai buna.\n');


fclose(fileID);