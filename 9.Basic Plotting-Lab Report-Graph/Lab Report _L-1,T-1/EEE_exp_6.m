x =[8.27
10.07
12.13
13.83
15.39
16.47
18.57
20.45
23.16
25
27.67];
y = [2.8792
3.047
3.1569
3.1872
3.2568
3.1900
3.2760
3.272
3.1709
3.0625
3.0129];

%%plot(x,y,'-o')
%%grid on
%%hold on

yi = smooth(y) ;
plot(x,y,'r')
hold on
plot(x,yi,'b') ;
plot(x,y,'o')
grid on
hold on



