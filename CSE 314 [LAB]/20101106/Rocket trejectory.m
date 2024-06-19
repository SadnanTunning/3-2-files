v=20;
g=9.8;
t=0;
y=0;

while (1)
   y = v*t - 0.5*g*t^2;

    if (y<0)
        break;
    endif

    disp(['At time = ',num2str(t),', location = ', num2str(y)])
    t=t+0.1;

endwhile
