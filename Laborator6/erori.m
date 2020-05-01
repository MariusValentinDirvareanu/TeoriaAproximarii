%=====================
function [er,erprim]=erori(n)
    h=1/n;
    c=fem1(n);
    er=0;
    erprim=0.0;
    for i=1:n
        %pe [-1,1]
        [w,x]=ponderi();
        %ponderi, noduri pe [(i-1)/n,i/n]
        w=w*h/2;
        x=x*h/2+(2*i-1)/(2*n);
        %aplicam formula de cuadratura
        erprim=erprim+w'*(pi*cos(pi*x)+c(i)/h-c(i+1)/h).^2;
        er=er+w'*(sin(pi*x)-c(i)*(i/n-x)/h-c(i+1)*(x-(i-1)/n)/h).^2;
    end
    er=sqrt(er);
    erprim=sqrt(erprim);
end
%=======================