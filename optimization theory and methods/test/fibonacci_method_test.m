clear;clc;
syms x;
delta=0.002;epsilon=0.01;
%%%%%%%%%%%%%%%%%%%%%%%%%%% f1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic;
a1=-1;b1=1;
f1=exp(-x)+x^2;
[p1,xbar1,fxbar1,lx1,n1]=fibonacci_method(f1,a1,b1,delta,epsilon);
disp(double(xbar1));
disp(double(fxbar1));
toc;

% x=-1:0.1:1;
% y=exp(-x)+x.^2;
% plot(x,y);
%%%%%%%%%%%%%%%%%%%%%%%%%%% f2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic;
a2=-4;b2=4;
f2=3*x^4-4*x^3-12*x^2;
[p2,xbar2,fxbar2,lx2,n2]=fibonacci_method(f2,a2,b2,delta,epsilon);
disp(double(xbar2));
disp(double(fxbar2));
toc;

% x=-4:0.1:4;
% y=3*x.^4-4*x.^3-12*x.^2;
% plot(x,y);
%%%%%%%%%%%%%%%%%%%%%%%%%%% f3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic;
a3=-4;b3=4;
f3=x^4+2*x+5;
[p3,xbar3,fxbar3,lx3,n3]=fibonacci_method(f3,a3,b3,delta,epsilon);
disp(double(xbar3));
disp(double(fxbar3));
toc;

% x=-4:0.1:4;
% y=x.^4+2*x+5;
% plot(x,y);
%%%%%%%%%%%%%%%%%%%%%%%%%%% f4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic;
a4=-4;b4=4;
f4=x^3-3*x+1;
[p4,xbar4,fxbar4,lx4,n4]=fibonacci_method(f4,a4,b4,delta,epsilon);
disp(double(xbar4));
disp(double(fxbar4));
toc;

% x=-4:0.1:4;
% y=x.^3-3*x+1;
% plot(x,y);
