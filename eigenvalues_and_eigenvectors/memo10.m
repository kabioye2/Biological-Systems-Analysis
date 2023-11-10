clc
clear all
close all
t = 0:.01:5;
%Equation 1
A1 = [-58/3 32/3;-20/3 -2/3];
eig1=eig(A1)
%z0=(M^-1)*y0
%y(t)=(Me^?t)*z0
y01=[20;12];
M1=[1 1;1/2 5/4];
z01=M1\y01
Av=M1\M1*eig1
y1 = (exp(-14*t)*z01(1,:))+(exp(-6*t)*z01(2,:));
y2 = ((1/2)*exp(-14*t)*z01(1,:))+((5/4)*exp(-6*t)*z01(2,:));
plot(t,y1,t,y2)
xlabel('t')
ylabel('Y(t)')
legend('Y1(t)','Y2(t)');
%Equation 2
A2 = [2 -45;6 -31];
eig2=eig(A2)
y02=[7;8];
M2=[1 1;1/3 2/5];
z02=M2\y02
Av=M2\M2*eig2
y1 = (exp(-13*t)*z02(1,:))+(exp(-16*t)*z02(2,:));
y2 = ((1/3)*exp(-13*t)*z02(1,:))+((2/5)*exp(-16*t)*z02(2,:));
figure;
plot(t,y1,t,y2)
xlabel('t')
ylabel('Y(t)')
legend('Y1(t)','Y2(t)');
%Equation 3
A3 = [-3/2 -1/4;-1 -3/2];
eig3=eig(A3)
y03=[2;3];
M3=[1 1;2 -2];
z03=M3\y03
Av=M3\M3*eig3
y1 = (exp(-2*t)*z03(1,:))+(exp(-t)*z03(2,:));
y2 = (2*exp(-2*t)*z03(1,:))+(-2*exp(-t)*z03(2,:));
figure;
plot(t,y1,t,y2)
xlabel('t')
ylabel('Y(t)')
legend('Y1(t)','Y2(t)');
%Equation 4
A4 = [-5/2 1;1/4 -5/2];
eig4=eig(A4)
y04=[3;2];
M4=[1 1;-1/2 1/2];
z04=M4\y04
Av=M4\M4*eig4
y1 = (exp(-3*t)*z04(1,:))+(exp(-2*t)*z04(2,:));
y2 = ((-1/2)*exp(-3*t)*z04(1,:))+(1/2*exp(-2*t)*z04(2,:));
figure;
plot(t,y1,t,y2)
xlabel('t')
ylabel('Y(t)')
legend('Y1(t)','Y2(t)');
%Equation 5
A5 = [-3 2;1 -2];
eig5=eig(A5)
y05=[5;3];
M5=[1 1;-1/2 1];
z05=M5\y05
Av=M5\M5*eig5
y1 = (exp(-4*t)*z05(1,:))+(exp(-t)*z05(2,:));
y2 = ((-1/2)*exp(-4*t)*z05(1,:))+(exp(-t)*z05(2,:));
figure;
plot(t,y1,t,y2)
xlabel('t')
ylabel('Y(t)')
legend('Y1(t)','Y2(t)');
%Equation 6
A6 = [-7/2 3;1/4 -5/2];
eig6=eig(A6)
y06=[10;10];
M6=[1 1;-1/6 1/2];
z06=M6\y06
Av=M6\M6*eig6
y1 = (exp(-4*t)*z06(1,:))+(exp(-2*t)*z06(2,:));
y2 = ((-1/6)*exp(-4*t)*z06(1,:))+((1/2)*exp(-2*t)*z06(2,:));
figure;
plot(t,y1,t,y2)
xlabel('t')
ylabel('Y(t)')
legend('Y1(t)','Y2(t)');
%Equation 7
A7=[-1 -3 1;4 -8 1;3 -3 -2];
eig7=eig(A7)
%Equation 8
A8 = [-15/4 15/2 -1;1/8 -1/4 -1/2;5/4 3/2 -3];
eig8=eig(A8)
%Equation 9
A9 = [-11/4 -1 5/4;-1/8 -9/2 11/8;-3/4 -5 5/4];
eig9=eig(A9)
%Equation 10
A10 = [-11 0 1 2;-9 -2 3 0;-21 0 -1 6;-15 0 3 0];
eig10=eig(A10)
%Equation 11
A11 = [0 -4 -1 3;-30 34 -13 -21;24 -30 2 18;-66 82 -23 -51];
eig11=eig(A11)
