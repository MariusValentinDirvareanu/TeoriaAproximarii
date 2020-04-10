%=========================
function [eroaref,eroarefprim]=calcul_erori_quad(n)
    %n va reprezenta nr de subintervale in care este divizat intervalul [0,pi/2]
    % aceasta este diviziunea
    x=linspace(0,pi/2,n+1);
    eroaref=0;
    eroarefprim=0;
    for i=1:n
        % calculam integralele din formula 2
        %c1,c2,c3 sunt coef interpolantului asa ca el sa fie c1*x^2+c2*x+c3
        %ei pot fi calculati cu polyfit ca in formula rosie
        xx=[x(i),(x(i)+x(i+1))/2,x(i+1)];
        yy=??????;
        c=polyfit(???????);
        c1=c(1);c2=c(2);c3=c(3);
        %vrem sa calculam integrala functiei (sin(t)+A-(c1*t^2+c2*t+c3))^2
        % pe intervalul [ xi,x(i+1)],
        g=inline( '(sin(t)+????????).^2','t','c1','c2','c3');
        er= quad(@(t)g(t,c1,c2,c3),?????);
        eroaref=eroaref+ er;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %vrem sa calculam integrala functiei (cos(t)-(2*c1*t+c2))^2
        %pe intervalul [ xi,x(i+1)],
        g=inline( '(cos(t)????????).^2','t','c1','c2');
        er= quad(@(t)g(t,c1,c2),????????);
        eroarefprim=eroarefprim+er;
    end
    eroaref=eroaref^0.5;
    eroarefprim=eroarefprim^0.5;
end
%==========================