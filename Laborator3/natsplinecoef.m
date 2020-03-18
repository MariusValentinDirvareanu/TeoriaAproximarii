function a=natsplinecoef(x,y)
    n=length(x);
    A=eye(n);
    for i=1:n-1
        h(i)=x(i+1)-x(i);
    end
    for i=2:n-1
        for j=1:n
            if i==j
                A(i,j)=(h(j-1)+h(j))/3;
            end
            if i<j
                A(i,j)=h(j-1)/6;
            end
            if i-j==1
                A(i,j)=h(j)/6
            end
        end
    end
    %construieste vectorul b conform formulelor
    b(1)=0;
    b(n)=0;
    for i=1:n-2
        b(i+1)=y(i)/h(i)-y(i+1)*(1/h(i)+1/h(i+1))+y(i+2)/h(i+1);
    end
    b=b'
    a=A\b
end