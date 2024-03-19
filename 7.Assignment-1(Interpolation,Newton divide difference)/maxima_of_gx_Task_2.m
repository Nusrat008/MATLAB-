
%Assume, gx = (x-0) (x-.25) (x - 0.5) (x-1)
 nodes = [0 .25 .5 1];

gx = @(x) ((x.^4) -(1.75*x.^3)+(0.875*x.^2)-(0.125*x));
diff_gx = @(x) ((4*x.^3)-(5.25*x.^2)+(1.75*x)-0.125);

value_x = zeros(3,1);

coeff_diff_gx = [4 -5.25 1.75 -0.125];
value_x = roots(coeff_diff_gx);

%val_x = solve(dx_gx);
%val_x = feval(symengine,'numeric::solve',dx_gx,'AllRealRoots')



val_gx = zeros(3,1);
val_gx = gx(value_x);

absolute_gx = abs(val_gx);

max_val_gx = max(absolute_gx);
fprintf('The maximum absolute value on [0,1] of the polynomial is: %5.6f\n',max_val_gx) 

