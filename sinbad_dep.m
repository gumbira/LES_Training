clc; clear all;
d=load('bedmodel.dat');
x=d(:,1);
z=d(:,2);
x1=(1:80);
y1=(1:8);
x1=x1'
y1=y1';
z1=interp1(x,z,x1);
z1=z1-2.65
z1=z1';
z1=flip(z1);
z1=z1*-1;
%A = repmat(y1,80,1);
C=repmat(z1,19,1);
%D=reshape(C,[1,640]);
%D=D';
%E = repelem(x1,8);
%E=E'
%F=[E';A';D'];
%F=F';
save('sinbad1.txt','C','-ascii');
