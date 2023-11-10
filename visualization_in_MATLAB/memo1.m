clc
clear all
% 1. Lines
% Visualize the two lines in MATLAB. Find the intersection of the two
lines
% by manual Gauss elimination and visualize the solution along the two
lines.
% Find the intersection programmatically using Ax = b to validate your
answer.
% 2x + y = 2 eq 1
% x + 3y = 1 eq 2
C=[2 1; 1 3]
b = [2;1]
A=[C b]
A(2,:)=(2*(A(2,:)))-A(1,:)
A(1,:)=(A(1,:))/2
%5y=0
%y=0/5
%y=0
%x+0.5y=1
%x+0.5(0)=1
%x+0=1
%x=1
x=[1;0]
xy=C\b
r=(C*x)-b
%r is a null vector so soln is correct
%Plot
x=linspace(-10,10);
y1=(-2*x)+2
y2=(-x+1)/3
figure;
plot(x,y1,x,y2)
hold on
scatter(1,0)
title('Equations 1 and 2')
xlabel('X')
ylabel('Y')
legend('Eq1','Eq2','intersection')
% 2. Planes
% Visualize the three planes in MATLAB. Find the intersection of the
three
% planes by manual Gauss elimination and indicate the solution with the
three
% planes. Find the intersection programmatically using Ax = b to
validate your answer.
% x + y + z = 2 eq 3
% 2x + 3y + z = 1 eq 4
% 3x + 2y + z = 3 eq 5
C2=[1 1 1;2 3 1;3 2 1]
b2=[2;1;3]
A2=[C2 b2]
A2(2,:)=((A2(2,:))/2)-A2(1,:)
A2(3,:)=A2(3,:)-(3*(A2(1,:)))
A2(3,:)=A2(3,:)+(2*(A2(2,:)))
%-3z=-6
%z=2
%0.5y-0.5(2)=-1.5
%0.5y-1=-1.5
%0.5y=-0.5
%y=-1
%x-1+2=2
%x=1
xyz=C2\b2
x2=[1;-1;2]
r2=(C2*x2)-b2
%r is a null vector so soln is correct
%Plot
x=linspace(-10,10);
y=x;
%[X,Y] = meshgrid(x,y);
for i=1:length(x)
 for j=1:length(y)
 z1(i,j) =-x(i)-y(j)+2;
 z2(i,j)=(-2*(x(i)))-(3*(y(j)))+1;
 z3(i,j)=(-3*(x(i)))-(2*(y(j)))+3;
 end
end
figure;
surf(x,y,z1)
hold on
surf(x,y,z2)
hold on
surf(x,y,z3)
hold on
scatter3(1,-1,2)
title('Equations 3,4 and 5')
xlabel('X')
ylabel('Y')
zlabel('Z')
% 3. 3D Points
% The following 10x3 matrix represents ten experimentally observed points in
an
% X-Y-Z coordinate system. Visualize the experimental points in MATLAB
data=[10 2 5;8 1 4;6 9 3;3 8 6;7 9 8;8 7 7;9 4 9;5 5 5;2 3 2;1 2 1]
x1=data(:,1);
y1=data(:,2);
z1=data(:,3);
scatter3(x1,y1,z1)
title('3D Points')
xlabel('X')
ylabel('Y')
zlabel('Z')
legend('XYZ points')
% 4. Plotting the Energy of a system
% To further practice MATLAB plotting functions, compute the residual error
(Eq 6) over
% a range (-10<x<10, -10<y<10) and plot the resulting residual error surface
in 3-D
%
% where Ax=b is the linear algebraic representation of Eq 1 and Eq 2. Here,
rearrange
% Eq 1 and Eq 2 to be written in in residual form (Eq. 6) and evaluate the
residual surface
% using Eq 7. Also plot the solution found in Part 1 and discuss where the
point is located
% on the 3D plane.
%Plot
x=linspace(-10,10);
y=x;
%[X,Y] = meshgrid(x,y);
for i=1:length(x)
 for j=1:length(y)
 r=([2 1; 1 3]*[x(i);y(j)])-[2;1];
 p(i,j)=r'*r;
 end
end
figure;
surf(x,y,p)
hold on
scatter(1,0)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Plotting the Energy of a System')
legend('Energy','Solution x')
