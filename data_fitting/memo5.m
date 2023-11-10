clc
clear all
close all
%% Problem 1
xData = [1, 2, 3, 4, 5, 6];
yData = [2, 8, 15, 20, 30, 40];
% Problem 1A-1st order
Bvec = yData';
xVec = xData';
onesVec = ones(length(xData), 1);
A1 = [xVec, onesVec];
Slope_Offset1 = ((A1') * A1) \ ((A1') * Bvec);
for i = 1:6
rVec1(i) = A1(i, :) * Slope_Offset1(:) - Bvec(i);
end
tot_r1 = norm(rVec1, 2);
figure;
scatter(xData, yData);
hold on;
x = 0:0.1:6;
plot(x, Slope_Offset1(1)*x + Slope_Offset1(2));
xlabel('X');
ylabel('Y');
% Problem 1 B-2nd order
BVec2 = yData';
x_2 = xVec .^2;
onesVec = ones(length(xData), 1);
A2 = [xVec, x_2, onesVec];
Slope_Offset2 = ((A2') * A2) \ ((A2') * BVec2);
for i = 1:6
rVec2(i) = A2(i, :) * Slope_Offset2(:) - BVec2(i);
end
tot_r2 = norm(rVec2, 2);
figure;
scatter(xData, yData);
hold on;
x = 0:0.1:6;
plot(x, Slope_Offset2(1) * x + Slope_Offset2(2) * (x .^ 2) +
Slope_Offset2(3));
xlabel('X');
ylabel('Y');
% Problem 1C-3rd order
BVec3 = yData';
x_3 = xVec .^3;
onesVec = ones(length(xData), 1);
A3 = [xVec, x_2, x_3, onesVec];
Slope_Offset3 = ((A3') * A3) \ ((A3') * BVec3);
for i = 1:6
rVec3(i) = A3(i, :) * Slope_Offset3(:) - BVec3(i);
end
tot_r3 = norm(rVec3, 2);
figure;
scatter(xData, yData);
hold on;
x = 0:0.1:6;
plot(x, Slope_Offset3(1) * x + Slope_Offset3(2) * (x .^ 2) + Slope_Offset3(3)
* (x .^ 3) + Slope_Offset3(4));
xlabel('X');
ylabel('Y');
%% Problem 2
ptMatrix1File = load('ptCoordinates1.mat');
ptMatrix2File = load('ptCoordinates2.mat');
ptMatrix1 = ptMatrix1File.ptCoord1;
ptMatrix2 = ptMatrix2File.ptCoord1;
figure;
scatter3(ptMatrix1(1:4, 1), ptMatrix1(1:4, 2), ptMatrix1(1:4, 3));
hold on;
scatter3(ptMatrix2(1:4, 1), ptMatrix2(1:4, 2), ptMatrix2(1:4, 3));
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('Coordinates for Matrix 1', 'Coordinates for Matrix 2');
% Problem 2A
pt1 = ptMatrix1(1:4, 1:3);
pt2 = ptMatrix2(1:4, 1:3);
ones_2 = ones(size(pt1, 1), 1);
pt1Prime = [pt1 ones_2];
pt2Prime = [pt2 ones_2];
transMatA = (pt1Prime \ pt2Prime);
transMatA = transMatA';
transMatA2 = transMatA(1:3, 1:3);
offsetVecA = transMatA(1:3, 4);
[Row, Col] = size(pt1);
for i = 1:Row
ptColA = (pt1(i, :))';
transColA = transMatA2 * ptColA + offsetVecA;
transPtA(i, :) = transColA';
end
% Problem 2B
ones_3 = ones(size(ptMatrix1, 1), 1);
pt1Prime2 = [ptMatrix1 ones_3];
pt2Prime2 = [ptMatrix2 ones_3];
transMat = (pt1Prime2 \ pt2Prime2);
transMat = transMat';
transMat2 = transMat(1:3, 1:3);
offsetVec = transMat(1:3, 4);
[Row, Col] = size(ptMatrix1);
for i = 1:Row
ptCol = ptMatrix1(i, :)';
transPtCol = transMat2 * ptCol + offsetVec;
transPtMat(i, :) = transPtCol';
end
Error = sum(sum(ptMatrix2)) - sum(sum(transPtMat));
figure;
scatter3(ptMatrix1(:, 1), ptMatrix1(:, 2), ptMatrix1(:, 3));
hold on;
scatter3(ptMatrix2(:, 1), ptMatrix2(:, 2), ptMatrix2(:, 3));
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('Coordinates for Matrix 1', 'Coordinates for Matrix 2');
figure;
scatter3(transPtMat(:, 1), transPtMat(:, 2), transPtMat(:, 3));
hold on;
scatter3(ptMatrix2(:, 1), ptMatrix2(:, 2), ptMatrix2(:, 3));
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('New coordinates for Matrix 1', 'Coordinates for Matrix 2');
% Problem 2C-5 points
pt1C = ptMatrix1(1:5, 1:3);
pt2C = ptMatrix2(1:5, 1:3);
ones_3 = ones(size(pt1C, 1), 1);
pt1CPrime = [pt1C ones_3];
pt2CPrime = [pt2C ones_3];
transMatC = (pt1CPrime \ pt2CPrime);
transMatC = transMatC';
transMatC2 = transMatC(1:3, 1:3);
offsetVecC = transMatC(1:3, 4);
[Row, Col] = size(pt1C);
for i = 1:Row
ptVecC = pt1C(i, :)';
transColC = transMatC2 * ptVecC + offsetVecC;
transPtC(i, :) = transColC';
end
[Row, Col] = size(ptMatrix1);
for i = 1:Row
ptColC = ptMatrix1(i, :)';
transVecC = transMatC2 * ptColC + offsetVecC;
transformedMatC(i, :) = transVecC';
end
ErrorC = sum(sum(ptMatrix2)) - sum(sum(transformedMatC));
% Problem 2C-8 points
pt1C2 = ptMatrix1(1:8, 1:3);
pt2C2 = ptMatrix2(1:8, 1:3);
ones_3 = ones(size(pt1C2, 1), 1);
pt1CPrime2 = [pt1C2 ones_3];
pt2CPrime2 = [pt2C2 ones_3];
transMatC2 = (pt1CPrime2 \ pt2CPrime2);
transMatC2 = transMatC2';
transformationMatC2 = transMatC2(1:3, 1:3);
offsetVecC2 = transMatC2(1:3, 4);
[Row, Col] = size(pt1C2);
for i = 1:Row
ptVecC = pt1C2(i, :)';
transColC2 = transformationMatC2 * ptVecC + offsetVecC2;
transPt1C2(i, :) = transColC2';
end
[Row, Col] = size(ptMatrix1);
for i = 1:Row
ptVecC2 = ptMatrix1(i, :)';
transVecC2 = transformationMatC2 * ptVecC2 + offsetVecC2;
transformedMatC2(i, :) = transVecC2';
end
ErrorC2 = sum(sum(ptMatrix2)) - sum(sum(transformedMatC2));
% Problem 2C-10 points
pt1C3 = ptMatrix1(1:10, 1:3);
pt2C3 = ptMatrix2(1:10, 1:3);
ones_3 = ones(size(pt1C3, 1), 1);
pt1CPrime3 = [pt1C3 ones_3];
pt2CPrime3 = [pt2C3 ones_3];
transMatC3 = (pt1CPrime3 \ pt2CPrime3);
transMatC3 = transMatC3';
transformationMatC3 = transMatC3(1:3, 1:3);
offsetVecC3 = transMatC3(1:3, 4);
[Row, Col] = size(pt1C3);
for i = 1:Row
ptVecC = pt1C3(i, :)';
transColC3 = transformationMatC3 * ptVecC + offsetVecC3;
transPt1C3(i, :) = transColC3';
end
[Row, Col] = size(ptMatrix1);
for i = 1:Row
ptVecC3 = ptMatrix1(i, :)';
transVecC3 = transformationMatC3 * ptVecC3 + offsetVecC3;
transformedMatC3(i, :) = transVecC3';
end
ErrorC3 = sum(sum(ptMatrix2)) - sum(sum(transformedMatC3));
