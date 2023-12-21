clear;clc;
syms x1 x2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
epsilon=0.0001;m=50;
x01=[-1,-10]';
x02=[0,0]';
x03=[-1,-1]';
x04=[10,10]';
x05=[10,20]';
f=100*(x2-x1^2)^2+(1-x1)^2;
%%%%%%%%%%%%%%%%%%%%%%%%%  牛顿法  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tic;
% [xbar_n,fxbar_n,n_n,b,g]=newton(f,x01,epsilon,m);
% disp(double(xbar_n));
% disp(double(fxbar_n));
% toc;

% tic;
% [xbar_n,fxbar_n,n_n,b,g]=newton(f,x02,epsilon,m);
% disp(double(xbar_n));
% disp(double(fxbar_n));
% toc;

% tic;
% [xbar_n,fxbar_n,n_n,b,g]=newton(f,x03,epsilon,m);
% disp(double(xbar_n));
% disp(double(fxbar_n));
% toc;

% tic;
% [xbar_n,fxbar_n,n_n,b,g]=newton(f,x04,epsilon,m);
% disp(double(xbar_n));
% disp(double(fxbar_n));
% toc;

% tic;
% [xbar_n,fxbar_n,n_n,b,g]=newton(f,x01,epsilon,m);
% disp(double(xbar_n));
% disp(double(fxbar_n));
% toc;

%%%%%%%%%%%%%%%%%%%%%%%%%  阻尼牛顿法  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tic;
% [xbar_dn,fxbar_dn,n_dn,b,g]=d_newton(f,x01,epsilon,m);
% disp(double(xbar_dn));
% disp(double(fxbar_dn));
% toc;

% tic;
% [xbar_dn,fxbar_dn,n_dn,b,g]=d_newton(f,x02,epsilon,m);
% disp(double(xbar_dn));
% disp(double(fxbar_dn));
% toc;

% tic;
% [xbar_dn,fxbar_dn,n_dn,b,g]=d_newton(f,x03,epsilon,m);
% disp(double(xbar_dn));
% disp(double(fxbar_dn));
% toc;

% tic;
% [xbar_dn,fxbar_dn,n_dn,b,g]=d_newton(f,x04,epsilon,m);
% disp(double(xbar_dn));
% disp(double(fxbar_dn));
% toc;

% tic;
% [xbar_dn,fxbar_dn,n_dn,b,g]=d_newton(f,x05,epsilon,m);
% disp(double(xbar_dn));
% disp(double(fxbar_dn));
% toc;

%%%%%%%%%%%%%%%%%%%%%%%%%  修正牛顿法  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tic;
% [xbar_mn,fxbar_mn,n_mn,b,g]=m_newton(f,x01,epsilon,m);
% disp(double(xbar_mn));
% disp(double(fxbar_mn));
% toc;

% tic;
% [xbar_mn,fxbar_mn,n_mn,b,g]=m_newton(f,x02,epsilon,m);
% disp(double(xbar_mn));
% disp(double(fxbar_mn));
% toc;

% tic;
% [xbar_mn,fxbar_mn,n_mn,b,g]=m_newton(f,x03,epsilon,m);
% disp(double(xbar_mn));
% disp(double(fxbar_mn));
% toc;
 
% tic;
% [xbar_mn,fxbar_mn,n_mn,b,g]=m_newton(f,x04,epsilon,m);
% disp(double(xbar_mn));
% disp(double(fxbar_mn));
% toc;

tic;
[xbar_mn,fxbar_mn,n_mn,b,g]=m_newton(f,x05,epsilon,m);
disp(double(xbar_mn));
disp(double(fxbar_mn));
toc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% x1=0.5:0.01:1.5;x2=x1;a=0.9997;b=0.9993;
% [x,y]=meshgrid(x1,x2);
% z=100*(y-x.^2).^2+(1-x).^2;
% surf(x,y,z);xlabel('x');ylabel('y');zlabel('z');
% disp(double(100*(b-a^2)^2+(1-a)^2));



