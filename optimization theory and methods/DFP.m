% DFP算法 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 输入：f是目标函数，x是初始点，epsilon是精度要求
% 输出：xbar是近似极小点，fxbar是近似极小值，ngxbar是xbar处的二范数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[xbar,fxbar,ngxbar]=DFP(f,x,epsilon)
syms x1 x2 x3 x4 s
H=eye(4);
grad=[diff(f,x1);diff(f,x2);diff(f,x3);diff(f,x4)];
gradx=subs(grad,[x1,x2,x3,x4],[x(1),x(2),x(3),x(4)]);
k=1;
d=-H*gradx;
x_next=x+s*d;
phi=subs(f,[x1,x2,x3,x4],[x_next(1),x_next(2),x_next(3),x_next(4)]);
phi=inline(phi);
lambda=fminbnd(phi,0,100);
x_next=x+lambda*d;
gradx_next=subs(grad,[x1,x2,x3,x4],[x_next(1),x_next(2),x_next(3),x_next(4)]);
while norm(gradx_next,2)>epsilon
    if k==4
        H=eye(4);
        gradx=subs(grad,[x1,x2,x3,x4],[x(1),x(2),x(3),x(4)]);
        k=1;
        d=-H*gradx;
        x_next=x+s*d;
        phi=subs(f,[x1,x2,x3,x4],[x_next(1),x_next(2),x_next(3),x_next(4)]);
        phi=inline(phi);
        lambda=fminbnd(phi,0,100);
        x_next=x+lambda*d;
        gradx_next=subs(grad,[x1,x2,x3,x4],[x_next(1),x_next(2),x_next(3),x_next(4)]);
    else
        p=x_next-x;q=gradx_next-gradx;
        H=H+p*p'/(p'*q)-H*(q*q')*H/(q'*H*q);k=k+1;
        x=x_next;
        gradx=subs(grad,[x1,x2,x3,x4],[x(1),x(2),x(3),x(4)]);
        d=-H*gradx;
        x_next=x+s*d;
        phi=subs(f,[x1,x2,x3,x4],[x_next(1),x_next(2),x_next(3),x_next(4)]);
        phi=inline(phi);
        lambda=fminbnd(phi,0,100);
        x_next=x+lambda*d;
        gradx_next=subs(grad,[x1,x2,x3,x4],[x_next(1),x_next(2),x_next(3),x_next(4)]);
    end
end
ngxbar=norm(gradx_next,2);
xbar=x_next;fxbar=subs(f,[x1,x2,x3,x4],[x_next(1),x_next(2),x_next(3),x_next(4)]);
end
        
        