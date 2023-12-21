clear;clc;
syms x1 x2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lambdamax=10;
x=[-1,1]';
d=[1,1]';
f=100*(x2-x1^2)^2+(1-x1)^2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&  goldstein法  %%%%%%%%%%%%%%%%%%%%%%%%%%%
tic;
[lambda,f_min,n]=goldstein(f,x,d,lambdamax);
disp(double(lambda));
disp(double(f_min));
toc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%  wolfe-powell法  %%%%%%%%%%%%%%%%%%%%%%%%%%
% tic;
% [lambda,f_min,n]=wolfe_powell(f,x,d,lambdamax);
% disp(double(lambda));
% disp(double(f_min));
% toc;


% y=x+lambda*d;
% disp(double(y));
% disp(double(subs(f,[x1,x2],[y(1),y(2)])));