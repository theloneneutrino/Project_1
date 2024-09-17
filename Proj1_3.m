% gets data on zip codes and electricity rates.

T = readtable("ElectRates.xlsx");

zips = T.(1);
res_rates = T.(2);

[minRate, mindex] = min(res_rates);
[maxRate, maxdex] = max(res_rates);
avgrate = mean(res_rates);

minzip = zips(mindex);
maxzip = zips(maxdex);

fprintf("The cheapest rate is $%f/kW-hr at zipcode %.0f.\n",minRate,minzip);
fprintf("The most expensive rate is $%f/kW-hr at zipcode %.0f.\n",maxRate,maxzip);
fprintf("The average rate is $%f/kW-hr.\n",avgrate);
