clear;clc;
syms x1 x2 x3 x4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
epsilon=0.0001;
x=[3,-1,0,1]';
f=(x1+10*x2)^2+5*(x3-10*x4)^2+(x2-2*x3)^2+10*(x1-x4)^2;
%%%%%%%%%%%%%%%%%%%%%%%%%  DFP算法  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tic;
% [xbar,fxbar,ngxbar]=DFP(f,x,epsilon);
% disp(double(xbar));
% disp(double(fxbar));
% disp(double(ngxbar));
% toc;

%%%%%%%%%%%%%%%%%%%%%%%%%  BFGS算法  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tic;
% [xbar,fxbar,ngxbar]=BFGS(f,x,epsilon);
% disp(double(xbar));
% disp(double(fxbar));
% disp(double(ngxbar));
% toc;

