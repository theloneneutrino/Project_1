rootsA = input("Please enter the two zeroes of a trinomial function, f(x), in the form [x1 x2]:\n");
rootsB = input("Enter the two zeroes of a second trinomial function, g(x), in the form [x1 x2]:\n");

coefA = poly(rootsA);
coefB = poly(rootsB);

fprintf("\nThe two functions are:\n");
fprintf("f(x) = %gx\xB2 + %gx + %g\n",coefA);
fprintf("g(x) = %gx\xB2 + %gx + %g\n\n",coefB);

coefTashizan = coefA + coefB;
coefHikizan  = coefA - coefB;
coefKakezan  = conv(coefA, coefB);
[coefWarizan,nokori]  = deconv(coefA, coefB);

fprintf("f(x) + g(x) = %gx\xB2 + %gx + %g\n", coefTashizan);
fprintf("f(x) - g(x) = %gx\xB2 + %gx + %g\n", coefHikizan);
fprintf("f(x) * g(x) = %gx\x2074 + %g\xB3 + %g\xB2 + %gx + %g\n", coefKakezan);
fprintf("f(x) / g(x) = %g\tRemainder: %gx\xB2 + %gx + %g\n", coefWarizan, nokori);

rootsAll = [rootsA, rootsB];
minim = floor(min(rootsAll)/10)*10;
maxim = ceil(max(rootsAll)/10)*10;

x = minim:0.1:maxim;
yA = polyval(coefA, x);
yB = polyval(coefB, x);
yT = polyval(coefTashizan, x);
yH = polyval(coefHikizan, x);

plot(x, yA, x, yB, x, yT, x, yH);
