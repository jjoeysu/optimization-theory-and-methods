% fibonacci法 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 输入：f是目标函数，a和b分别是初始搜索区间的左右端点，delta是判别常数，
%       epsilon是精度要求
% 输出：p是极小点所在区间，xbar是近似极小点，fxbar是近似极小值，n是迭代次数，
%       lx是xbar的误差限
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[p,xbar,fxbar,lx,n]=fibonacci_method(f,a,b,delta,epsilon)
syms x
d=b-a;m=d/epsilon;n=1;
while(fibonacci(n)<m)
    n=n+1;
end
lambda=a+fibonacci(n-2)/fibonacci(n)*d;
mu=a+fibonacci(n-1)/fibonacci(n)*d;
flambda=subs(f,x,lambda);fmu=subs(f,x,mu);
k=1;
while(k~=n-2)
    if(flambda>fmu)
        a=lambda;lambda=mu;d=b-a;mu=a+fibonacci(n-k-1)/fibonacci(n-k)*d;
        fmu=subs(f,x,mu);flambda=subs(f,x,lambda);
    else
        b=mu;mu=lambda;d=b-a;lambda=a+fibonacci(n-k-2)/fibonacci(n-k)*d;
        flambda=subs(f,x,lambda);fmu=subs(f,x,mu);
    end
    k=k+1;
end
mu=lambda+delta;flambda=subs(f,x,lambda);fmu=subs(f,x,mu);
if(flambda>fmu)
    a=lambda;
else
    b=lambda;
end
p=[a,b];lx=b-a;n=n-1;
xbar=(a+b)/2;fxbar=subs(f,x,xbar);
end
