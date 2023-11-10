clc
clear
filename = 'C1.xlsx';
C1 = xlsread(filename);
filename = 'C2.xlsx';
C2 = xlsread(filename);
filename = 'C3.xlsx';
C3 = xlsread(filename);
filename = 'R.xlsx';
R = xlsread(filename);
resistance = [0.3 0.09 0.3 0.12 0.3 0.3 0.09 0.3 0.12 0.3 0.06 0.3 0.09 0.06
0.3 0.3 0.09 0.09]
% Part 2
A = [C1 R;(zeros(9,18)) C2;C3 (zeros(9,18))];
b =
[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;100;50;50;100;50;50;10
0;50;50];
x=A\b
r = (A*x)-b;
for i = 1:36
r(i)=(A(i,:)*x)-b(i);
end
test1=(x(1)-x(2))-(resistance(1)*x(19))
test2=(x(2)-x(3))-(resistance(2)*x(20))
test3=(x(3)-x(4))-(resistance(3)*x(21))
% Part 3
C4=C2*inv(R)*C1
A2 = [C4;C3];
b2 = [0;0;0;0;0;0;0;0;0;100;50;50;100;50;50;100;50;50];
x2 = A2\b2
r2 = (A2*x2)-b2;
for i = 1:18
r2(i)=(A2(i,:)*x2)-b2(i);
end
% Part 4
resistance(11)=10000000000000000;
res4=diag(resistance)*-1;
A = [C1 res4;(zeros(9,18)) C2;C3 (zeros(9,18))];
x=A\b
C4=C2*inv(res4)*C1;
A2 = [C4;C3];
b2 = [0;0;0;0;0;0;0;0;0;100;50;50;100;50;50;100;50;50];
x2 = A2\b2
% Part 5
resistance(11)=0;
res5=diag(resistance)*-1
A = [C1 res5;(zeros(9,18)) C2;C3 (zeros(9,18))];
x=A\b
C4=C2*inv(res5)*C1;
A2 = [C4;C3];
b2 = [0;0;0;0;0;0;0;0;0;100;50;50;100;50;50;100;50;50];
x2 = A2\b2
