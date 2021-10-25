param n;
param m;
param r;
param s;

set F := {1..n};     
set G := {1..m};    
set H := {1..r};
set J := {1..s};

param A {G, F};     
param B {G} >= 0;   
param D {H, J}; 
param E {H} >= 0;
param C {F} >= 0;   

var X {F} >= 0;      

maximize z: sum {f in F} C[f] * X[f];

s.t. R1 {g in G}:
	sum {f in F} A[g, f] * X[f] <= B[g];

s.t. R2 {h in H}:
	sum {j in J} D[h, j] * X[j] = E[h];