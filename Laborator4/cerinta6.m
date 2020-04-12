function cerinta6(fileID, A)
    x=1:5;
    %f=inline('2*x.^2+A');
    f=@(x) (2*x.^2+A);
    xval=1:0.2:5;
    yval=interpcuadratic(x,f,xval);
    fprintf(fileID,'Rezultat: %d\n',norm(yval-2*xval.^2-A));
end