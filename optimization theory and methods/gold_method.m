% 0.618法 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 输入：f是目标函数，a和b分别是初始搜索区间的左右端点，epsilon是精度要求
% 输出：p是极小点所在区间，xbar是近似极小点，fxbar是近似极小值,
%      lx是xbar的误差限,n是迭代次数，m是n*4矩阵，其第k行表示
%      [ak,bk,λk,μk,f(λk),f(μk)]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[p,xbar,fxbar,lx,n,m]=gold_method(f,a,b,epsilon)
syms x;
alpha=(sqrt(5)-1)/2;d=b-a;
lambda=a+(1-alpha)*d;mu=a+alpha*d;
flambda=subs(f,x,lambda);fmu=subs(f,x,mu);
k=1;
m(k,:)=[a,b,lambda,mu,flambda,fmu];
while(d>epsilon)
    if(flambda>fmu)
        a=lambda;lambda=mu;d=b-a;
        mu=a+alpha*d;
        fmu=subs(f,x,mu);flambda=subs(f,x,lambda);
        k=k+1;
        m(k,:)=[a,b,lambda,mu,flambda,fmu];
    else
        b=mu;mu=lambda;d=b-a;
        lambda=a+(1-alpha)*d;
        flambda=subs(f,x,lambda);fmu=subs(f,x,mu);
        k=k+1;
        m(k,:)=[a,b,lambda,mu,flambda,fmu];
    end
end
n=k;
p=[a,b];lx=b-a;
xbar=(a+b)/2;fxbar=subs(f,x,xbar);
end


