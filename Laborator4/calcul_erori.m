%=========================
function [eroaref,eroarefprim]=calcul_erori(n)
    %n va reprezenta nr de subintervale in care este divizat intervalul [0,pi/2]
    %ca atare vom avea marimea retelei h=pi/(2n)
    % si vom avea n+1 noduri echidistante in retea
    % aceasta este diviziunea
    x=linspace(0,pi/2,n+1);
    %inlocuiti A corespunzator
    y=sin(x)+A;
    eroaref=0;
    eroarefprim=0;
    for i=1:n
        % calculam integralele din formula 2
        % c1,c2 sunt coef interpolantului asa ca el sa fie c1*x+c2
        % ei pot fi calculati direct din formula 1, sau pot fi calculati cu polyfit
        c=polyfit(??????,1);
        c1=c(1);
        c2=c(2);
        %vrem sa calculam integrala functiei (sin(t)+A-(c1*t+c2))^2 pe intervalul [ x(i),x(i+1)],
        %vezi exemplul 0.1 de mai sus.
        %inlocuiti corespunzator
        g=inline( '(sin(t)+?????????).^2','t','c1','c2');
        er= quad(@(t)g(t,c1,c2),????????);
        eroaref=eroaref+ er;
        %acum vrem sa calculam eroarea in aproximarea derivatei vezi a 2-a integrala in formula (2).
        g=inline( '(cos(t)-??????).^2','t','c1');
        er= quad(@(t)g(t,c1),???????);
        eroarefprim=eroarefprim+ er;
    end
    eroaref=eroaref^0.5;
    eroarefprim=eroarefprim^0.5;
end
%==========================
