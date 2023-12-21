% 最速下降法 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 输入：f是目标函数，x是初始点，epsilon是精度要求，m是最大迭代次数
% 输出：xbar是近似极小点，fxbar是近似极小值，n是迭代次数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[xbar,fxbar,n]=SD(f,x,epsilon,m)
syms x1 x2 s
k=1;
grad=[diff(f,x1);diff(f,x2)];
d=-subs(grad,[x1,x2],[x(1),x(2)]);

while(norm(d,2)>epsilon&&k<m)
    x_next=x+s*d;
    phi=subs(f,[x1,x2],[x_next(1),x_next(2)]);
    phinew=inline(phi);
    lambda=fminbnd(phinew,0,1000);
    x=x+lambda*d;
    k=k+1;
    d=-subs(grad,[x1,x2],[x(1),x(2)]);toc;
end
n=k;
xbar=x;fxbar=subs(f,[x1,x2],[xbar(1),xbar(2)]);
end