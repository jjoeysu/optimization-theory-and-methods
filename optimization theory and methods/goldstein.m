% goldstein法 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 输入：f是目标函数，x是初始点，d是搜索方向，lambdamax是规定的最大步长
% 输出：lambda是所求步长，f_min是在该步长下的f的值，n是迭代次数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[lambda,f_min,n]=goldstein(f,x,d,lambdamax)
syms x1 x2 lambda
pho=0.1;sigma=0.9;
alpha=1.5;beta=0.5;
lambda=1;
grad=[diff(f,x1);diff(f,x2)];gradx=subs(grad,[x1,x2],[x(1),x(2)]);
phix=subs(f,[x1,x2],[x(1),x(2)]);
x_next=x+lambda*d;
phix_next=subs(f,[x1,x2],[x_next(1),x_next(2)]);k=1;
while lambda<lambdamax
    if phix_next>phix+pho*lambda*gradx'*d
        lambda=beta*lambda;
        x_next=x+lambda*d;
        phix_next=subs(f,[x1,x2],[x_next(1),x_next(2)]);
    else
        if phix_next<phix+sigma*gradx'*d
        lambda=alpha*lambda;
        x_next=x+lambda*d;
        phix_next=subs(f,[x1,x2],[x_next(1),x_next(2)]);
        else
            break;
        end
    end
    k=k+1;
end
n=k;
f_min=subs(f,[x1,x2],[x_next(1),x_next(2)]);
end
