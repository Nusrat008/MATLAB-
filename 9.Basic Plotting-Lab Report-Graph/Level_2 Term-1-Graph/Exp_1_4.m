clear all;
x = [0 0.117 .323 .459 .516 .545 .563 .580 .594 .611 .621 .629 .636];
y = [0 0 0 0.05 .175 .345 .45 .6 .75 .9 1.06 1.15 1.325];
[x ,y] = prepareCurveData(x,y);
f = fit(x,y,'smoothingspline');
plot(f,x,y,'o')
