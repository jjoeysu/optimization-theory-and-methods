% 阻尼牛顿法 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 输入：f是目标函数，x是初始点，epsilon是精度要求，m是最大迭代次数
% 输出：xbar是近似极小点，fxbar是近似极小值，n是迭代次数，b是n*2矩阵，
%       其第k行表示第k次迭代的点xk',g是n维列向量，其第k个分量表示f在xk处的
%       梯度的二范数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[xbar,fxbar,n,b,g]=d_newton(f,x,epsilon,m)
syms x1 x2 s
grad=[diff(f,x1);diff(f,x2)];
hf=[diff(grad(1),x1),diff(grad(1),x2);diff(grad(2),x1),diff(grad(2),x2)];
xx=double(x);
gradx=subs(grad,[x1,x2],[xx(1),xx(2)]);
hfx=subs(hf,[x1,x2],[xx(1),xx(2)]);
d=-hfx^(-1)*gradx;
k=1;
b(k,1:2)=x;g(k,1)=norm(gradx,2);

while(norm(gradx,2)>epsilon&&k<m)
    xx=double(x);
    [lambda,~]=wolfe_powell(f,xx,d,100);
    x=x+lambda*d;
    xx=double(x);
    gradx=subs(grad,[x1,x2],[xx(1),xx(2)]);
    hfx=subs(hf,[x1,x2],[xx(1),xx(2)]);
    d=-hfx^(-1)*gradx;
    k=k+1;
    b(k,1:2)=x;g(k,1)=norm(gradx,2);toc;
end
n=k;
xbar=x;fxbar=subs(f,[x1,x2],[xbar(1),xbar(2)]);
end