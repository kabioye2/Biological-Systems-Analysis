# Equation-for-Systems
Introduction
Part#1: Generation of Mass Conservation Balances Using Network Analysis
The flow and pressures of the Circle of Willis was analyzed. At any given point of
pressure, the flow going in will be positive and any flow going out will be negative (Eq.
2). The Hagen-Poiseuille equation (eq. 1) described the resistance and flow between two
points of pressures. The corresponding resistance will be matched with the flow between
that point. The pressures at the outermost part of the Circle of Willis will have boundary
conditions.
∆P = αF, Eq. 1
Resistance vector and Boundary Conditions, Eq. 1a
α = [0.3 0.09 0.3 0.12 0.3 0.3 0.09 0.3 0.12 0.3 0.06
0.3 0.09 0.06 0.3 0.3 0.09 0.09 ]; (mmHg∙min/mL)
Fin – Fout = 0, Eq. 2
Boundary Conditions for the system pictured in Figure 1
P1, P13, P7=100 (mmHg), Eq. 2a
P4, P6, P12 , P10, P17, P18=50 (mmHg), Eq. 2b

Part#2: Writing the Network Problem in Matrix Format
Now that we have a set of equations from part 1, we can use the equation Ax=b (eq. 4) to
find the flows and pressures of the Circle of Willis. The equations will be assembled in
matrix form in the format presented in equation 3a, 3b, and 3c to find the solution x. The
pressures will represent C1, the resistance will represent –R, the flows will be the C2
matrix and the boundary conditions will be the C3 matrix. The flows and pressures will
be solved using the “A\b” command. The solutions will be checked using the residual
error equation r = Ax-b. If r equals a null vector, then the solution is accurate. Three
nodes will be selected at random to test the solutions. This will be done by plugging in
the corresponding solution to the corresponding equation.
C1 𝑝 = R 𝑓, Eq. 3a
C2 𝑓 = 0, Eq. 3b
C3𝑝 = 𝑝̅, Eq. 3c

Part#3
Pressure can be solved for by removing flows with matrix substitution. A new equation
C4 is created by multiplying C2 and C1 by the inverse of A. C4 and C3 make up the new A
matrix and x accounts for the pressures. The solution will be inputted in equation 3a to
get flows.
C4 = C2*R-1*C1, Eq. 5a

Part#4
Element 11 in the resistance matrix will be replaced with 10e15 to see what will happen
when there is a very high resistance, or blockage. The new R will be simulated in Part 2
and 3.

Part#5
Element 11 in the resistance matric will be replaced with 0 to see what will happen when
there is a very low resistance, such as if the blood vessel was short. The new –R will be
simulated in Part 2 and 3.

Methods
Part#1: Generation of Mass Conservation Balances Using Network Analysis
Equations were created for the flows and pressures of a Circle of Willis using the HagenPoiseuille and conservation balances equations. A vector α was given and inserted into
the Hagen-Poiseuille equation accordingly. The boundaries of the Circle of Willis had no
flow, therefore, a conservation balances equation could not be made for those nodes.
Boundary conditions were provided.

Part#2: Writing the Network Problem in Matrix Format
Using the equations found in part 1, matrices were created. The Hagen-Poiseuille
equations were assigned to a 18x18 Matrix C1. This matrix represented the pressures.
Any instance where a pressure was not used was assigned a value of zero. A 18x18
Matrix -R represented the α vector multiplied by one. A diagonal matrix of α values was
created. The conservation balances were assigned to a 9x18 matrix C2. Any place in the
matrix missing value was given the value 0. This matrix represented the flows. Matrix C3
is a 9x18 matrix that is the boundary conditions. The 36x36 matrix A was assembled by
combing the matrices accordingly, inserting zero matrices when necessary. The vector x
is a 36x1 matric and is the unknown variables p(pressures) and f (flows). The “\” symbol
in MATLAB was used to find the values of the pressure and flows by multiplying the b
vector with the inverse matrix of A. The values were checked using the residual equation
r=Ax-b. When r equals 0 then the solution satisfies the equations. The larger r is less
accurate. For loops were used to obtain the r values.

Part#3:
A matrix C4 was created by using the inverse function in MATLAB “inv” to find the
inverse of R and multiplying the matrix by C2 and C1. The matrix was then combined
using “;” to C3 and pressures were found using “\” to multiply the inverse of the new A
matrix with C4 and C3 by b which had the values of the boundary conditions.

Part#4:
Element 11 of the α matrix was replaced with 10e15. The R matrix was modified to
reflect this and used as the new R matrix for part 2 and 3.

Part#5:
Element 11 of the α matrix was replaced with 0. The R matrix was modified to reflect
this and used as the new R matrix for part 2 and 3.

Results
Part#1: Generation of Mass Conservation Balances Using Network Analysis
The Hagan-Poiseuille equations, boundary condition equations, and conservation balance
equations were formed as in equation 1. There are a total of 18 Hagen-Poiseuille
equations, 9 boundary condition equations, and 9 conservation balance equations with a
total of 32 equations.

Hagen-Poiseuille
1: P1-P2=α1F1
2: P2-P3=α2F2
3: P3-P4=α3F3
4: P3-P5=α4F4
5: P5-P6=α5F5
6: P5-P11=α11F11
7: P11-P12=α10F10
8: P11-P9=α9F9
9: P9-P10=α8F8
10: P8-P9=α7F7
11: P7-P8=α6F6
12: P8-P16=α18F18
13: P16-P18=α16F16
14: P13-P14=α12F12
15: P15-P17=α15F15
16: P2-P15=α17F17
17: P15-P14=α13F13
18: P14-P16=α14F14

Conservation Balances
1: F1-F2-F17=0
2: F2-F3-F4=0
3: F4-F5-F11=0
4: F6-F7-F18=0
5: F7+F9-F8=0
6: F11-F10-F9=0
7: F12-F14-F13=0
8: F17-F15=0
9: F18-F16=0

Boundary Conditions
1: P1=100
2: P4=50
3: P6=50
4: P7=100
5: P10=50
6: P12=50
7: P13=100
8: P17=50
9: P18=50

Part#2: Writing the Network Problem in Matrix Format
C1, -R, C2 and C3 were created and concatenated in matrix A. The solution x was found
using “A\b.” The solution was tested for Flow 1, 2, and 3 and pressure 1, 2. And 3, as
shown in appendix A.

Part#3:
Only the pressures were solved for by reducing matric A to C4 and C3.

Part#4:
Element 11 of the alpha matrix was replaced with 10e15 and the alpha matrix was used to
find x in both methods from part 1 and 2.

Part#5
Element 11 of the alpha matrix was replaced with 0 and the alpha matrix was used to find
x in both methods from part 1 and 2.

Discussion
I have learned that the matrix equation can be used to solve for unknowns in a biological
network. I also learned that when a resistance is close to or equal to zero, it creates a problem in
the second method (part 2) since 0 can’t be divided by 0 when finding the inverse of R. A result
is a NaN matrix for x.

Conclusion
The matrix equation has various applications. When solving for a system of equations it proves
to be beneficial. The residual error equation can be used to check the solution of the equation
solved for using the matrix equation. 
