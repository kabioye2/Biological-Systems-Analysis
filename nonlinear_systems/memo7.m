clc
clear all
%Problem 2
p1 =30; %mmHg
p2 =4; %mmHg
c1 =20; %µmol*µm-3
c2 =2; %µmol*µm-3
D =10; %µm*s-1
sigma= 0.5;
T =298; %K
LP= 1.67e-4; %µm*mmHg-1*s-1
L =2; %µm
Ap= 5; %µm2
jw=5; %µm3*s-1
jw2=-5
Pe=((1-sigma)*jw*L)/(D*Ap);
Pe2=((1-sigma)*jw2*L)/(D*Ap);
czero=((c1-c2)/(1-exp(Pe)))*exp(0)+(c2-c1*exp(Pe))/(1-exp(Pe))
czero2=((c1-c2)/(1-exp(Pe2)))*exp(0)+(c2-c1*exp(Pe2))/(1-exp(Pe2))
% can't put a zero in for loop. I get an error message that I can only put
% positive integers or logicals
for i=1:L
 c(i)=((c1-c2)/(1-exp(Pe)))*exp((Pe*i)/L)+(c2-c1*exp(Pe))/(1-exp(Pe))
end
for i=1:L
 cAlt(i)=((c1-c2)/(1-exp(Pe2)))*exp((Pe2*i)/L)+(c2-c1*exp(Pe2))/(1-
exp(Pe2))
end
c= [czero c]
cAlt= [czero2 cAlt]
%same values whether jw is negative or positive
x=0:L;
plot(x,c)
hold on
plot(x,cAlt)
title('Concentration Profile');
xlabel('distance');
ylabel('concentration');
legend('Jw=5','Jw=-5')
%Question 3
% x=0;
% x=0.5*L;
x=L;
gamma= 0.0000333;
Pe3= gamma*jw;
u= ((1-sigma)*jw);
sFlux= (u*c1)-((u*((c1-c2)/(1-exp(Pe3))))*exp((u/D)*x))
%%Question 4
p1= 30;
p2= 4;
beta = .206365;
gamma1 = .02;
jw4 = (-50:30);
js4 = (-60:800);
for i = 1:length(jw4);
 for j = 1:length(js4);
 Pe3 = gamma1*jw4(i);
 ci = js4(j)/jw4(i);
 g1(i,j) = (LP*(p1-p2)-beta*(c1-ci)-(jw4(i)/Ap));
 g2(i,j) = ((jw4(i)/Ap)*(1-sigma)*(c2-c1*exp(Pe3))/(1-exp(Pe3))-
(js4(j)/Ap));
 res(i,j) = g1(i,j)*g1(i,j);
 res2(i,j) = g2(i,j)*g2(i,j);
 sum(i,j) = res(i,j)+res2(i,j);
 end
end
sum = sum';
figure;
surf(jw4,js4,sum)
title('Residual Error');
xlabel('Jw');
ylabel('Js');
zlabel('Total Residual');
figure;
contour(jw4,js4,sum,50)
title('Residual Error');
xlabel('Jw');
ylabel('Js');
%Problem 6
%c2=5
c2=5;
for i = 1:length(jw4);
 for j = 1:length(js4);
 Pe3 = gamma1*jw4(i);
 ci = js4(j)/jw4(i);
 g1(i,j) = (LP*(p1-p2)-beta*(c1-ci)-(jw4(i)/Ap));
 g2(i,j) = ((jw4(i)/Ap)*(1-sigma)*(c2-c1*exp(Pe3))/(1-exp(Pe3))-
(js4(j)/Ap));
 res(i,j) = g1(i,j)*g1(i,j);
 res2(i,j) = g2(i,j)*g2(i,j);
 sum(i,j) = res(i,j)+res2(i,j);
 end
end
sum = sum';
%c2=10
c2=10
for i = 1:length(jw4);
 for j = 1:length(js4);
 Pe3 = gamma1*jw4(i);
 ci = js4(j)/jw4(i);
 g1(i,j) = (LP*(p1-p2)-beta*(c1-ci)-(jw4(i)/Ap));
 g2(i,j) = ((jw4(i)/Ap)*(1-sigma)*(c2-c1*exp(Pe3))/(1-exp(Pe3))-
(js4(j)/Ap));
 res(i,j) = g1(i,j)*g1(i,j);
 res2(i,j) = g2(i,j)*g2(i,j);
 sum(i,j) = res(i,j)+res2(i,j);
 end
end
sum = sum';
%c2=15
c2=15;
for i = 1:length(jw4);
 for j = 1:length(js4);
 Pe3 = gamma1*jw4(i);
 ci = js4(j)/jw4(i);
 g1(i,j) = (LP*(p1-p2)-beta*(c1-ci)-(jw4(i)/Ap));
 g2(i,j) = ((jw4(i)/Ap)*(1-sigma)*(c2-c1*exp(Pe3))/(1-exp(Pe3))-
(js4(j)/Ap));
 res(i,j) = g1(i,j)*g1(i,j);
 res2(i,j) = g2(i,j)*g2(i,j);
 sum(i,j) = res(i,j)+res2(i,j);
 end
end
sum = sum';
%c2=20
c2=20;
for i = 1:length(jw4);
 for j = 1:length(js4);
 Pe3 = gamma1*jw4(i);
 ci = js4(j)/jw4(i);
 g1(i,j) = (LP*(p1-p2)-beta*(c1-ci)-(jw4(i)/Ap));
 g2(i,j) = ((jw4(i)/Ap)*(1-sigma)*(c2-c1*exp(Pe3))/(1-exp(Pe3))-
(js4(j)/Ap));
 res(i,j) = g1(i,j)*g1(i,j);
 res2(i,j) = g2(i,j)*g2(i,j);
 sum(i,j) = res(i,j)+res2(i,j);
 end
end
sum = sum';
