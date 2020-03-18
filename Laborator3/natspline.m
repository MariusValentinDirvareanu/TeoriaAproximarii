function yval=natspline(x,y,xval)
    %initializam yval
    yval=xval;
    %determinam coeficientii interpolantului spline
    a=natsplinecoef(x,y);
    for i=1:length(xval)
        %determinam indexul primului interval [x_k,x_(k+1)] in care se afla xval(i)
        k=sum(x<=xval(i));
        if(k==n) 
            k=n-1; 
        end
            %***
            %evaluam s in xval(i).Atentie!!! p_k trebuie inlocuit cu formula corespunzatoare
            %prezentata la clasa.
            yval(i)= p_k (xval(i))
    end
end