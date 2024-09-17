% the 

optRad = fminbnd(@cylCost, 0, 50);
[minCost, optLen] = cylCost(optRad);

fprintf("The optimal radius of %fm and length %fm\n", optRad, optLen);
fprintf("Produces a cylinder with cost $%.2f.\n", minCost);
