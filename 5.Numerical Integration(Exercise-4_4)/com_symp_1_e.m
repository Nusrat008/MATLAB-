clear all;
clc;
% format long

a = input('Enter a:');
b = input('Enter b:');
n =input('Enter n:');
%a=1; b = 2; n = 4;

h = (b-a)/n;


x =a:h:b;
f = exp(2.*x).*sin(3.*x);

N = n+1;

%h = x(2)-x(1);
%f(end) or f(N)
sympson = (h/3)*(f(1)+f(N)+4*sum(f(2:2:N-1))...
    + 2*sum(f(3:2:N-2)))




