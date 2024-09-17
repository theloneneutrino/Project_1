% the 
rad = 1:0.1:40;
[cost, len] = cylCost(rad);
[minCost, index] = min(cost);
optRad = rad(index);
optLen = len(index);

fprintf("The optimal radius of %.3gm and length %.3gm\n", optRad, optLen);
fprintf("Produces a cylinder with cost $%.2f.\n", minCost);
