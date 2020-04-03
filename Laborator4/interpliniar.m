%=========================
function yval=interpliniar(x,f,xval)
%x,y =f(x), se calculeaza cu functia feval
n=length(x);
y=feval(f,x);
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
        %evaluam interpolantul in xval(k). (a se vedea formula (1),
        % aveti in vedere ca y_i=f(x_i)) deci
        yval(k)=rezolvare;
    end
end
%==========================