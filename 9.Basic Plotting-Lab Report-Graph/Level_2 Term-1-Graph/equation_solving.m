clc;
clear all;
%  i1 = 12
%  -4*i1 + 22*i2 - 6*i3 - 12 *i5 = -36
%  -i2 + 21*i3 - 20*i5 = 36
%  i4 = 24
%  i5 = 18
%  ix = i2 - i5

A = [1 0 0 0 0;-4 22 -6 0 -12;0 -1 21 0 -20;0 0 0 1 0;0 0 0 0 1]
b = [12 -36 36 24 18]'

x = A^-1*b;

disp('Solution of Equations are: ');

for i=1:size(x)
    
fprintf('i%d = %0.2f',i,x(i));
fprintf('\n');

end

ix = x(2)- x(5);
fprintf('ix = %0.2fl\n',ix)