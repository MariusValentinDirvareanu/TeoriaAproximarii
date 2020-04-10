%=========================
function yval=interpcuadratic(x,f,xval)
    n=length(x);
    %initializam yval
    yval=xval;
    for k=1:length(xval)
        %in aceasta bucla vom evalua interpolantul in fiecare xval(k)
        %determinam indexul primului interval [x_i,x_(i+1)] in care se afla xval(k)
        i=sum(x<=xval(k));
        if(i==n) 
            i=n-1; 
        end
        %***
        %calculam nodurile pe care interpolam (vezi formula rosie)
        xx=[x(i),(x(i)+x(i+1))/2,x(i+1)];
        %evaluam f in xx
        yy=feval(f,xx);
        %calculam coeficientii interpolantului(vezi formula rosie)
        c=polyfit(xx,yy,2);
        %evaluam interpolantul in xval(k).
        yval(k)= c(1)*xval(k)^2+c(2)*xval(k)+c(3);
    end
end
%==========================