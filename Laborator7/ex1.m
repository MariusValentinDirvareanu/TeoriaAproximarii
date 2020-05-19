%v1=<1 0 0 1> v2=<0 1 1 1> v3=<-1 0 0 1>
clc; clear all; close all;
v1=[1 0 0 1]
v2=[0 1 1 1]
v3=[-1 0 0 1]
u1=v1
u1prodv1=dot(u1,v2)/dot(u1,u1)*u1
u2=v2-u1prodv1
u1prodv3=dot(u1,v3)/dot(u1,u1)*u1
u2prodv3=dot(u2,v3)/dot(u2,u2)*u2
u3=v3-u1prodv3-u2prodv3
dot(u1,u2)
dot(u1,u3)
dot(u2,u3)

%v =< 1 2 3 2 >
vector=[1 2 3 2]
w=0;
w=w+(vector*u1')*u1;
w=w+(vector*u2')*u2;
w=w+(vector*u3')*u3
dot(w,v1)
dot(w,v2)
dot(w,v3)