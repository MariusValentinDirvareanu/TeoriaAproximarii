function cerinta3(A)
    figure(1);
    % f=inline('sin(x+A)');
    x=0:0.01:pi/2;
    f=@(x) (sin(x+A));
    rez=feval(f,x);
    plot(x,rez,'b');
    hold on;
    xval1=linspace(0,pi/2,5);
    yval1=interpliniar(x,f,xval1);
    plot(xval1,yval1,'r');
    hold on;
    xval2=linspace(0,pi/2,9);
    yval2=interpliniar(x,f,xval2);
    plot(xval2,yval2,'y');
    hold on;
    xval3=linspace(0,pi/2,17);
    yval3=interpliniar(x,f,xval3);
    plot(xval3,yval3,'magenta');
end