function cerinta2(fileID)
    A = log2(sum(double('DIRVAREANUMARIUS')))
    x=1:5;
    % inline este vechi si va fi scos in versiunile anterioare de Matlab
    % f=inline('2*x+10.2503');
    f=@(x) (2*x+10.2503);
    xval=1:0.2:5;
    yval=interpliniar(x,f,xval);
    fprintf(fileID,"%d\n",norm(yval-2*xval-A));
end
