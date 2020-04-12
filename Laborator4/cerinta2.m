function cerinta2(fileID,A)
    x=1:5;
    % inline este vechi si va fi scos in versiunile anterioare de Matlab
    % f=inline('2*x+A');
    f=@(x) (2*x+A);
    xval=1:0.2:5;
    yval=interpliniar(x,f,xval);
    fprintf(fileID,"Rezultat: %d\n",norm(yval-2*xval-A));
end
