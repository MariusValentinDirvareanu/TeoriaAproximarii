%------------------------------------------------------
function w=proj(v, A)
% 20.02.2020 Dirvareanu Marius-Valentin
% completati aici cu info despre input, output

n=length(A(:,1));
B=grammschmidt(A);

w=0;

for k=1:n 

w=w+(v*B(k,:)')*B(k,:);

end
%---------------------------------------------------