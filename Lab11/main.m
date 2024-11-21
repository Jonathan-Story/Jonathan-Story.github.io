

z1 = pol2rec(1,-15);

z2 = pol2rec(1.2,75);


z = z1+z2;

[r, theta] = rec2pol(z)

z3 = pol2rec(r,theta);

[r, theta] = rec2pol(z3)



