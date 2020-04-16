clc; clear all;
A=1.1
v1=linspace(-A,A,5)
v2=v1.^2
v3=v1.^3
ok=0;
while ok==0
    vector=rand(1,5);
    if dot(vector,v1)==0 && dot(vector,v2)==0 && dot(vector,v3)==0
        ok=1;
        vector
    end
end


3.6603    0.9151         0    0.9151    3.6603