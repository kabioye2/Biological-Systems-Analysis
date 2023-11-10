clc
clear all
close all
% Problem 3
nmax=5;
tol=1e-6;
x=[1;1]
% f1=2*x+y-1;
% f2=-x-(2*(y^2))+1;
fun = @(x) [(2*x(1,1)^2+x(2,1)-1);(-x(1,1)-2*x(2,1)^2+1)];
dfun = @(x) [4*x(1,1) 1;-1 -4*x(2,1)];
alfa=1;
x1 = -1:.1:2;
x2 = -1:.1:2;
for i=1:length(x1);
 for j=1:length(x2);
 resN = [(2*x1(i)^2)+x2(j)-1;(-x1(i)-2*x2(j)^2+1)];
 resSurf(i,j) = resN'*resN;
 end
end
contour(x1,x2,resSurf)
title('Residual Error Contour');
[xvect,resnorm] = newton(x,fun,dfun,nmax,alfa,tol)
% Problem 4
x=[2;1];
% x=[-1;-1];
% f1=2*(x^2)+y-6;
% f2=x+(2*(y^2))-3.5;
nmax=5;
tol=1e-6;
fun = @(x) [(2*x(1,1)^2+x(2,1)-6);(x(1,1)+2*x(2,1)^2-3.5)];
dfun = @(x) [4*x(1,1) 1;1 4*x(2,1)];
alfa=1;
alfa2=0.5;
alfa3=0.25;
x1 = -1:.1:2;
x2 = -1:.1:2;
for i=1:length(x1);
 for j=1:length(x2);
 resN = [(2*x1(i)^2+x2(j)-6);(x1(i)+2*x2(j)^2-3.5)];
 resSurf(i,j) = resN'*resN;
 end
end
figure
contour(x1,x2,resSurf,20)
title('Residual Error Contour');
[xvect,resnorm]= newton(x,fun,dfun,nmax,alfa,tol)
[xvect,resnorm]= newton(x,fun,dfun,nmax,alfa2,tol)
[xvect,resnorm]= newton(x,fun,dfun,nmax,alfa3,tol)
[xvect,resnorm]= newton(x,fun,dfun,nmax,alfa,tol)
[xvect,resnorm]= newton(x,fun,dfun,nmax,alfa2,tol)
[xvect,resnorm]= newton(x,fun,dfun,nmax,alfa3,tol)
