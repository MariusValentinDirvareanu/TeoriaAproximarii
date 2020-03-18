function a=cmmp(X, Y,m)
    %X, Y -- tabelul de date
    %m -- folosim functii de modelare 1,x,...,x^(m)
    A=matriceA(X,m);
    Atilde=A*A';
    b=A*Y';
    a=fliplr((Atilde\b)'); %aflam coeficientii polinomului aproximant de la puterea cea mai mica in sus.
end