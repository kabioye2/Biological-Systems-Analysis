# Data-Fitting

Introduction
The line of best fit is found using linear regression for the following data points:
Table 1. Experimental data
Xi 1 2 3 4 5 6
Yi 2 8 15 20 30 40
The minimum residual error for each point can also be found using this method. The first,
second, and third order model is plotted using Table 1. Part 2 involves determining the rotation,
scaling, and translation that aligns the two sets of coordinates provided by the TA.

Methods
Part 1a:
The linear regression coefficients were found for the first order model. This was done by
rearranging the data points

Then, the slope and offset were found using the following equation
(𝐴𝑇∗ 𝐴)−1(𝐴𝑇∗ 𝑏) (2)

After the vector was made, the slope and the y-intercept were assigned to the values in the
vector. Then the values were used to find the residual error. The residual error was calculated
using the linear equation for a straight line:
𝑦 = 𝑚𝑥 + 𝑏 (3)
“y” equals the residual
“m” is the slope
“x” is the x values for the data points in table 1
“b” equals Y0-Yi. Y0 equals the y-intercept and Yi is the y values for the data points in table 1

Part 1b:
Part b is like a, but the x coordinates are squared and added to the matrix

Because of this another value is produced. The equation for the residual then turns into a
quadratic equation:
𝑦 = 𝑎𝑥
2 + 𝑏𝑥 + 𝑐 (5)
Where y is the residual, a is the slope, b is Y0, x is the x values for the data points in table 1, and
c = c-Yi. C being the additional value.

Part 1c:
Part c is similar like a, but it is done for the third order. The x coordinates are cubed and added to
the matrix 

This produced four values and the residual equation was configured in equation 7:
𝑦 = 𝑎𝑥
3 + 𝑏𝑥
2 + 𝑐𝑥 + 𝑑 (7)
d is the fourth value which equals d-Yi.
Part 1d:
The fitted functions and the data points were plotted with MATLAB. The points were plotted
with the scatter function.

Part 2a:
Four points were chosen from the two data set given and plotted in MATLAB. These points
were used to obtain the transformed matric and translational vector. A scatter plot was made for
the four points. The coefficients were determined by creating a matrix as seen in part 1. The “\”
command was used. This matrix was then transposed with the translation vector. Using “A\b”
command for a square matrix takes the inverse of matrix A and multiplies it by vector b. A leastsquares solution is needed for non-square matrices with more rows than columns. A matrix with
the opposite is undetermined.

Part 2b:
The coefficients r and t were found in MATLAB and the two images were compared. The
residual error was calculated and added to get a sum of error. The following equation as well as
the “\” command was used.
𝑃𝑠𝑒𝑢𝑑𝑜 − 𝑖𝑛𝑣𝑒𝑟𝑠𝑒: 𝑥 = (𝐴𝑇𝐴)−1(𝐴𝑇𝑏) (8)

Part 2c:
The same steps of part 2 was used for part c but using 5, 8, and 10 points 

Conclusion
In part 1, linear regression was used to find the line of best fit for first, second, and third order
models. The second part was used to find a transformation matrix and translation vector for a set
of points (4, 5, 8, and 10) to compare two images.

Discussion
Data fitting is useful for fitting models to data and analyzing the precision of it. It is used to
make educated guesses for where data would be if obtained. This is useful when data is
unavailable at certain points
