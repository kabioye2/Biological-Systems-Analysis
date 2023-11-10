# Sparse-Matrix-Notation

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
α = [22423, 12457,143729,28391,17744330,2299666,2299665,17744339,2299668,
2299667, 2299668, 2299667, 69, 69, 96,173] (mmHg∙min/mL)
Fin – Fout = 0, Eq. 2
Boundary Conditions for the system pictured in Figure 1, Eq. 2a
P1 = 100 (mmHg);
P13 = 5 (mmHg)

Part#2: Writing the Network Problem in Matrix Format
Now that we have a set of equations from part 1, we can use the equation Ax=b (eq. 4) to
find the flows and pressures of the Circle of Willis in figure 1. The equations will be
assembled in matrix form in the format presented in equation 3a, 3b, and 3c to find the
solution x. The pressures will represent C1, the resistance will represent –R, the flows
will be the C2 matrix and the boundary conditions will be the C3 matrix. The flows and
pressures will be solved using the “A\b” command. The solutions will be checked using
the residual error equation r = Ax-b. If r equals a null vector, then the solution is accurate.
Three nodes will be selected at random to test the solutions. This will be done by
plugging in the corresponding solution to the corresponding equation.
C1 𝑝 = R 𝑓, Eq. 3a
C2 𝑓 = 0, Eq. 3b
𝐶3𝑝 = 𝑝̅, Eq. 3c

Part#3: Sparse Notation
Using the “spalloc” function, a sparse matrix was created and the matrix was formed
using the matrix notation of the non-zero values in matrix A of part 2. The system was
solved and compared to the solution of part 2.

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
in matlab was used to find the values of the pressure and flows by multiplying the b
vector with the inverse matrix of A. The values were checked using the residual equation
r=Ax-b, as shown in appendix B. When r equals 0 then the solution satisfies the
equations. The larger r is less accurate. For loops were used to obtain the r values.

Part#3: Sparse Notation
Using the “spalloc” function, a 29 by 29 matrix of all zeroes was created. This allows
non-zero values to be assigned to the matrix without repeated storage. The non-zero
values of the matrix were assigned using matrix notation, where the row and column of
the non-zero values were assigned to the row and column of the sparse matrix. To check
that the matrices were the same, matrix A from part 2 was subtracted from the sparse
matrix S. If any value except zero is found then one of the matrices was incorrectly
formed. The solution x was solved using “\” to multiply the inverse of matrix S by matrix
b and compared to the solution of the dense matrix in part 2.

Results
Part#1: Generation of Mass Conservation Balances Using Network Analysis
The Hagan-Poiseuille equations, boundary condition equations, and conservation balance
equations were formed as in equation 1. There are a total of 16 Hagen-Poiseuille
equations, 11 conservation balance, and 2 boundary condition equations with a total of 29
equations. 

Hagen-Poiseuille
1: P1-P2=α1F1
2: P2-P3=α2F2
3: P3-P4=α3F3
4: P3-P6=α4F4
5: P4-P7=α6F6
6: P6-P7=α7F7
7: P7-P110=α10F10
8: P8-P10=α9F9
9: P6-P8=α8F8
10: P7-P9=α11F11
11: P5-P9=α12F12
12: P9-P11=α13F13
13: P4-P5=α5F5
14: P11-P12=α15F15
15: P12-P13=α16F16
16: P10-P11=α14F14

Conservation Balances
1: F1-F2=0
2: F2-F3-F4=0
3: F3-F6-F5=0
4: F5-F12=0
5: F4-F8-F7=0
6: F7+F6-F10-F11=0
7: F8-F9=0
8: F12-F11-F13=0
9: F9+F10-F14=0
10: F14+F13-F15=0
11: F15-F16=0

Boundary Conditions
1: P1=100
2: P13=5

Part#2: Writing the Network Problem in Matrix Format
C1, -R, C2 and C3 were created and concatenated in matrix A. The solution x was found
using “A\b” in matlab which multiplies the inverse of A with b. The solution was tested
for Flow 1, 2, and 3 and pressure 1, 2. And 3, as shown in appendix B.

There are 29 solutions (table 1) for the set of equations presented from matrix A that
contains matrices C1, C2, C3, and R that represent the Hagan-Poiseuille, boundary
condition, and conservation balance equation from part 1. There are 13 values for
pressures 1 through 13 and 16 values for flows 1 through 16 from the Circle of Willis
structure. The residual vector from the results in Table 1 was about zero (shown in
Appendix B), which satisfies the equations.

Conclusion
The matrix equation has various applications. When solving for a system of equations it proves
to be beneficial. The residual error equation can be used to check the solution of the equation
solved for using the matrix equation.

Discussion
I have learned that the matrix equation is useful when solving for unknowns in a biological
network and sparse notation is more efficient where it uses less memory. Sparse notation can be
quicker to use with a preexisting data set, but when writing the data by hand it can prove to be
less efficient because it takes more time to write the non-zero values in matrix notation.
