clc
clear all
close all
%%Part 1
A=[2 1;1 3]; b=[-1;-3];
C=[A b];
x=linspace(-2,2,9);
y=-1-(2*x);
y2=(-3-y)/3;
xhistory=[1;-1;(-1/6);(-1/36)];
yhistory=[1;(-2/3);(-17/18);(-107/108)];
plot(x,y)
hold on
plot(x,y2)
hold on
plot(xhistory,yhistory,'o')
hold on
plot(xhistory,yhistory)
xlabel('X1');ylabel('X2')
verify=A\b;
%%Part 2
A2=[4 1 -1;2 7 1;1 -3 12]; b2=[7;15;-17];
A3=[-10 -1 2 0;-1 11 -1 3;-2 -1 10 -1;0 3 -1 8]; b3=[6;25;-11;-15];
C2=[A2 b2];
C3=[A3 b3];
x0=[1;1;1];
x10=[2;2;2];
x20=[3;3;3];
x30=[4;4;4];
x40=[5;5;5];
nmax=1000;
tol=1e-6;
omega=1;
% function [x,iter]=Gauss(A,b,x0,nmax,tol,omega)
% [n,m]=size(A);
% if n ~= m, error('Only squared systems'); end
% iter=0; r=b-A*x0; r0=norm(r); err=norm(r); xold=x0;
% while err > tol & iter < nmax
% iter = iter + 1;
% for i=1:n
% s=0;
% for j = 1:i-1, s=s+A(i,j)*x(j); end
% for j = i+1:n, s=s+A(i,j)*xold(j); end
% x(i,1)=omega*(b(i)-s)/A(i,i)+(1-omega)*xold(i);
% end
% xold=x; r=b-A*x; err=norm(r)/r0;
% end
% return
%Part A equations 2
[xHist,xfinal,iters,r,err]= Gauss(A2,b2,x0,nmax,tol,omega)
[xHist,xfinal2,iters2,r2,err2]= Gauss(A2,b2,x10,nmax,tol,omega)
[xHist,xfinal3,iters3,r3,err3]= Gauss(A2,b2,x20,nmax,tol,omega)
[xHist,xfinal4,iters4,r4,err4]= Gauss(A2,b2,x30,nmax,tol,omega)
[xHist,xfinal5,iters5,r5,err5]= Gauss(A2,b2,x40,nmax,tol,omega)
%Part B equations 2
plot(1:iters,err,'-o')
hold on
plot(1:iters2,err2)
hold on
plot(1:iters3,err3)
hold on
plot(1:iters4,err4)
hold on
plot(1:iters5,err5)
xlabel('Residual Error')
ylabel('Iterations')
title('Evolution of the Total Residual Error')
%Part A equations 3
x0=[1;1;1;1];
x10=[2;2;2;2];
x20=[3;3;3;3];
x30=[4;4;4;4];
x40=[5;5;5;5];
[xHist,xfinal,iters,r,err]= Gauss(A3,b3,x0,nmax,tol,omega)
[xHist,xfinal2,iters2,r2,err2]= Gauss(A3,b3,x10,nmax,tol,omega)
[xHist,xfinal3,iters3,r3,err3]= Gauss(A3,b3,x20,nmax,tol,omega)
[xHist,xfinal4,iters4,r4,err4]= Gauss(A3,b3,x30,nmax,tol,omega)
[xHist,xfinal5,iters5,r5,err5]= Gauss(A3,b3,x40,nmax,tol,omega)
%Part B equtions 3
plot(1:iters,err,'-o')
hold on
plot(1:iters2,err2)
hold on
plot(1:iters3,err3)
hold on
plot(1:iters4,err4)
hold on
plot(1:iters5,err5)
xlabel('Residual Error')
ylabel('Iterations')
title('Evolution of the Total Residual Error')
%Part C
verify2=A2\b2;
verify3=A3\b3;
%%Part 3
x0 = [-8;8];
A = [2 1;1 3];
b = [-1;-3];
tol=1e-6;
% function [xHistory,rNew,alphaR,resR,surfRes]=gradient1(A,b,x,tol)
% xHistory(:,1) = x; %Store initial guess
% r = b-A*x; %Compute first residual
% for i = 2:100
% alpha = r'*r/(r'*A*r);
% xHistory(:,i) = x + alpha*r;
% rNew = r - alpha*A*r;
% if norm(rNew) < tol % using the norm
% if norm(rNew,inf) < tol % using the maxNorm
% xHistory(:,i), break
% end
% end
% x = xHistory(:,i); r = rNew; %update variables
% alphaR(:,i-1)=alpha;
% resR(:,i-1) = r;
% surfRes(:,i-1) = r'*r;
% end
% return
[xHistory,rNew,alphaR,resR,SurfRes]=gradient1(A,b,x0,tol)
xVal = -20:20;
yVal = -20:20;
for i = 1:length(xVal);
 for j = 1:length(yVal);
 res = [xVal(i)+(3*yVal(j))+3;(2*xVal(i))+yVal(j)+1];
 resM(i,j)= res'*(res);
 end
end
figure;
contour(xVal,yVal,resM)
title('Contour Map');
xlabel('x');
ylabel('y');
figure;
contour(xVal,yVal,resM)
hold on
plot(xHistory(1,:),xHistory(2,:));
hold on
plot(xHistory(1,:),xHistory(2,:),'o')
title('Convergence History');
xlabel('x');
ylabel('y');
%Part 4
clc
clear all
A2=[4 1 -1;2 7 1;1 -3 12]; b2=[7;15;-17];
x02 = [10;-10;10];
A3=[-10 -1 2 0;-1 11 -1 3;-2 -1 10 -1;0 3 -1 8]; b3=[6;25;-11;-15];
x03 = [0;0;0;0];
tol=1e-6;
[xHistory,rNew,alphaR,resR,SurfRes]=gradient1(A2,b2,x02,tol)
[xHistory,rNew,alphaR,resR,SurfRes]=gradient1(A3,b3,x03,tol)
%Part 5
A2=[4 1 -1;2 7 1;1 -3 12]; b2=[7;15;-17];
x02 = [10;-10;10];
tol = 1e-6;
% function [xNew,alphaNew,resid,ResidSurf,itr,newp]=conjgrad(A,b,x,tol)
% xNew(:,1) = x;
% r = b-A*x; p=r; itr =0;
% for i=2:100
% itr = itr+1;
% alpha = (p'*r)/(p'*A*p);
% xNew(:,i) = x+(alpha*p);
% rNew = r-(alpha*A*p);
% beta = ((A*p)'*rNew)/((A*p)'*p);
% Pnew = rNew-(beta*p);
% if norm(rNew)<tol
% if norm(rNew,inf)<tol;
% xNew(:,i),itr, break
% end
% end
% x = xNew(:,i); r = rNew; alphaNew(:,i) = alpha;
% resid(:,i) = r; newp(:,i)= p; p = Pnew; ResidSurf(:,i) = r'*r;
% end
[xNew2,alphaNew,resid,residSurf,itr,newp]=conjgrad(A2,b2,x02,tol)
%Part 6
x = -1:.1:2;
y= -1:.1:2;
for i=1:length(x);
 for j=1:length(y);
 resN = [x(i)^2+x(i)*y(j)+y(j)^2-2.5;2*x(i)-y(j)^3+3];
 resSurf(i,j) = resN'*resN;
 end
end
figure;
surf(x,y,resSurf)
title('Residual Surface');
zlabel('Residual Error');
