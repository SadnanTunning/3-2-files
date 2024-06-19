%Use backward divided difference approximation of the first derivative of f(x) = 3*e^(2.5*x)+2 to calculate the derivative at x=2.12 with a step size of 2.
%Find the exact value and absolute relative true error.
%Use four decimal digit arithmetic to find a solution.

delta_x = 2;                                                                     %step_size
x1 = 2.12
x2 = x1 - delta_x;

%formula: f(x)-f(x-delta_x)/delta_x

y2 = 3*e^(2.5*x1)+2;                                                             %f(x)

y1 = 3*e^(2.5*x2)+2;                                                             %f(x-delta_x)

BDD = (y2-y1)/delta_x;


Exact_Value = (15*exp((5*2.12)/2))/2;                                            %f'(x)


fprintf('The Exact value is: %g\n', Exact_Value);

fprintf('The BDD value is: %g\n', BDD);

Error=abs(((Exact_Value-BDD)/Exact_Value)*100);
disp(['The absolute relaive true error is: ', num2str(Error)]);

