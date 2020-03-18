function A=matriceA(X,m)
    %x vector linie
    %m -- folosim functii de modelare 1,x,...,x^(m)
    for j=0:m
        A(j+1,:)=X.^j;
    end
end