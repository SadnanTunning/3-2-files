%Use forward divided difference approximation of the first derivative of f(x) = 3*e^(2.5*x)+2 to calculate the derivative at x=2.12 with a step size of 2.
%Find the exact value and absolute relative true error.
%Use four decimal digit arithmetic to find a solution.

delta_x = 2;                                                                     %step_size
x1 = 2.12;
x2 = x1 + delta_x;

%formula: f(x+delta_x)-f(x)/delta_x

y2 = 3*e^(2.5*x2)+2;                                                             %f(x+delta_x)

y1 = 3*e^(2.5*x1)+2;                                                             %f(x)

FDD = (y2-y1)/delta_x;


Exact_Value = (15*exp((5*2.12)/2))/2;                                            %f'(x)


fprintf('The Exact value is: %g\n', Exact_Value);

fprintf('The FDD value is: %g\n', FDD);

Error=abs(((Exact_Value-FDD)/Exact_Value)*100);
disp(['The absolute relative true error is: ', num2str(Error)]);
