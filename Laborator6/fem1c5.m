%===========================
function c=fem1c5(n)
    Ast=1.1;
    %metoda elementului finit cu elemente continue, liniare pe portiuni.
    % f(x)=pi^2 sin(pi x)
    %solutie exacta u(x)=sin(pi x)
    %n reprezinta nr de subintervale in care e divizat (0,1).
    % c va reprezenta vectorul coeficientilor solutiei aproximante u_X in baza aleasa
    %c=(c_0,c_1,...,c_n),
    % A este matricea sistemului
    A=eye(n+1,n+1);
    %marimea retelei
    h=1/n;
    %calculam componentele matricii A
    for i=2:n
        A(i,i-1)=-1/h;
        A(i,i)=2/h;
        A(i,i+1)=-1/h;
    end
    %termenul liber
    F=zeros(n+1,1);
    %F(1)=0 corespunde lui 0
    %F(2) lui 1/n
    %F(3) lui 2/n
    %F(i) lui (i-1)/n
    %bucla peste toate subintervalele pt i=1,n
    % primul subinterval este [0,1/n], al doilea [1/n,2/n]
    %subintervalul i este [(i-1)/n,i/n]
    for i=1:n
        %pe [-1,1]
        [w,x]=ponderi();
        %pe subintervalul i --- > [(i-1)/n,i/n]
        w=w*h/2;
        x=x*h/2+(2*i-1)/(2*n);
        %subintervalul i va contribui la modificarea a doua componente din F, anume F(i) si F(i+1)
        % a se vedea formula de calcul pentru F(i)
        %aplicam formula de cuadratura pe [(i-1)/n,i/n]
        % ea presupune evaluarea functiilor ce trebuie integrate in nodurile
        %formulei de cuadratura
        F(i)=F(i)+w'*(-6*x.*(i/n-x)/h);
        F(i+1)= F(i+1)+w'*(-6*x.*(x-(i-1)/n)/h);
    end
    F(1)=Ast;
    F(n+1)=Ast+1;
    c=A\F;
end
%===========================