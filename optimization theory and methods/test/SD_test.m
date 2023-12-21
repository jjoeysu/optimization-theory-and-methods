clear;clc;
syms x1 x2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
epsilon=0.001;m=13;
x=[0,3]';
f=(x1-2)^4+(x1-2*x2)^2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic;
[xbar,fxbar,n]=SD(f,x,epsilon,m);
disp(double(xbar));
disp(double(fxbar));
toc;


% x1=0:0.1:3;x2=0:0.1:3;
% [x,y]=meshgrid(x1,x2);
% z=(x-2).^4+(x-2*y).^2;
% surf(x,y,z);xlabel('x');ylabel('y');zlabel('z');
