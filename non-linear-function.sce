clc;clear;
// function
deff("y=f(x)", "y=x^2-3");
function c=x(x1, x2)
    c = (x1 + x2)/2
endfunction
function bisection(x1, x2, e)
    tic();
    x3 = x(x1, x2);
    fx1=f(x1); fx2=f(x2); fx3=f(x3);
    while abs(fx3)>e
        if(fx1*fx3)<0
            x2=x3;
            fx2=fx3;
        else if (fx3 * fx2) <0
        x1 = x3;
        else
            disp("Tidak ada titik potong");
            break;
        end
        end
        x3=(x1+x2)/2;
        fx3=f(x3);
        mprintf("%10.8f \t %10.8f \t %10.8f \n", x1, x2, x3);
    end
endfunction
a = toc();
mprintf("==============================================");
mprintf("\nOutput x1 \tOutput x2 \tOutput x3\n");
mprintf("============================================== \n");
bisection(1, 2, 10^-2);
mprintf("============================================== \n");
mprintf("Waktu Proses = %10.4f Detik \n", a);
