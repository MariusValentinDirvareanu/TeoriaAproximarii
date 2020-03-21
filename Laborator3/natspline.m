function yval=natspline(x,y,xval)
    n=length(x);
    for i=1:n-1
        h(i)=x(i+1)-x(i);
    end
    %initializam yval
    yval=xval;
    %determinam coeficientii interpolantului spline
    a=natsplinecoef(x,y);
    for i=1:length(xval)
        %determinam indexul primului interval [x_k,x_(k+1)] in care se afla xval(i)
        k=sum(x<=xval(i));
        if k==n
            k=n-1; 
        end
            %***
            %evaluam s in xval(i).Atentie!!! p_k trebuie inlocuit cu formula corespunzatoare
            %prezentata la clasa.
            p(1)=a(i)*(x(k+1)-xval(i))^3/(6*h(i));
            p(2)=a(i+1)*(xval(i)-x(k))^3/(6*h(i));
            p(3)=(y(i)-h(i)^2/6*a(i))*(x(k+1)-xval(i))/h(i);
            p(4)=(y(i+1)-h(i)^2/6*a(i+1))*(xval(i)-x(k))/h(i);
            yval(i)= p(1)+p(2)+p(3)+p(4);
    end
end