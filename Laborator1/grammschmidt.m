%------------------------------------------------------
function B=grammschmidt(A)
% 20.02.2020 Dirvareanu Marius-Valentin
% completati aici cu info despre input, output


%aflam numarul de vectori, adica lungimea primei coloane din A
n=length(A(:,1));

%initializam matricea B
B=A;


%procedura Gramm-Schmidt descrisa in (***) mai sus

B(1,:)=B(1,:)/norm(B(1,:));
  for k=2:n 

      for j=1:k-1 
         B(k,:)=B(k,:)-(B(k,:)*B(j,:)')*B(j,:);    
      end


      % normalizam vk, daca vk diferit de 0, luam in calcul si varianta cand v1,v2,..vn nu sunt liniar indep


      if(norm(B(k,:))>10^(-7))
            B(k,:)=B(k,:)/norm(B(k,:));
      end 

  end
%---------------------------------------------------