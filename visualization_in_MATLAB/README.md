# Visualization-in-MATLAB

Introduction
Part#1: Lines
The variable x in the equation Ax=b, is the linearly independent set of equations 1 and 2.
By using Gaussian elimination (Appendix A) the matrix created for the equations can be
reduced to find a solution for y and use the solution for y in the first equation to solve for
x. There are also MATLAB functions that can be used to make this process easier.
2x + y = 2; Eq 1
x + 3y = 1; Eq 2

Part#2: Planes
The variable x in the equation Ax=b, is the intersection of the equations 3, 4 and 5. By
using Gaussian elimination (Appendix A) the matrix created for the equations can be
reduced to find a solution for z resulting in finding y with reduced equation 4 and x with
the values found for z and y. A grid of all possible solutions for a given interval is created
for each equation by using for loops. The for loops run through every possible point in an
interval and runs in through equation 3, 4, and 5. The result is a plane for each equation.
The solution is where all planes meet.
x + y + z = 2; Eq 3
2x + 3y + z = 1; Eq 4
3x + 2y + z = 3; Eq 5

Part#3: 3D Points
The observed points were plotted in an X-Y-Z coordinate system. The points from the
table were put in matrix form. A scatter plot can be created for each X-Y-Z point by
using the X, Y, and Z vectors from the matrix.

Part#4: Plotting the Energy of a System
Vector b can be subtracted on both sides of the equation Ax=b to produce the residual
error equation, r=Ax-b (eq. 6). Solution vector x will give r = null vector while all other
possible points will give a number. The error measures the accuracy of your solution. The
residual error can be produced into a surface of using the phi equation,
P (𝑥) = 𝑟
𝑇 𝑟 = (𝐴𝑥 − 𝑏) 𝑇 (𝐴𝑥 − 𝑏) (eq. 7). Equation 7 gives the length of the residual
vector. The longer the distance the more error. The solution x looks as if it resides in the
center of the surface which would be when r equals a null vector.
𝑟 = 𝐴𝑥 − 𝑏; Eq 6
P (𝑥) = 𝑟
𝑇 𝑟 = (𝐴𝑥 − 𝑏) 𝑇 (𝐴𝑥 − 𝑏); Eq 7

Methods
Part#1: Lines
Equation 1 and 2 were rearranged in the form Ax=b. The unknown variables in vector x
were solved using MATLAB and manual Gaussian elimination. Equations 1 and 2 were
plotted while varying x using the “plot” function.

Part#2: Planes
Equation 3, 4, and 5 were rearranged in the form Ax=b. The unknown variables in vector
x were solved using MATLAB and manual Gaussian elimination. Variables x and y were
given intervals using “linspace.” Equations 3,4 and 5 were plotted using the “surf”
function and the intersecting vector x was plotted using the “scatter3” function.

Part#3: 3D Points
The points from Table 1 were formed in a 10x3 matrix in MATLAB. The x, y, and z
values were assigned to their respective values and were inputted in the “scatter3”
function to create a 3D scatter plot.

Part#4: Plotting the Energy of a System
Equations 1 and 2 from part #1 were rearranged into residual form r=Ax-b. The residual
error was calculated on the interval (-10≤x≤10, -10≤y≤10) using the “linspace” function,
for loops, and the residual error equations. The residual surface was calculated by
inputting the residual error equation into equation 7. The surfaces were plotted using the
“surf” function and the solution from part #1 was plotted using the “scatter” function.

Conclusion
All cases produced a null vector when plugged into the residual error function, which validates
the solutions. The residual surface produced an image that showed the further away from the
solution vector x, the longer the distance. The outer surfaces of the graph curved upward which
would have a larger magnitude.

Discussion
I have learned that the matrix equation can be applied to solving for unknown variables of a
matrix. I also learned the residual error equation can be derived from the matrix equation and be
applied to check the accuracy of the solution x of the matrix equation. 
