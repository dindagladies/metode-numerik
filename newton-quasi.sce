clc;clear;tic;
//deff("y=f(x)","y=x^2-3");
deff("y=f(x)","y=5*x^3-2*x^2+3*x-6");
//deff("y1=ft(x)","y1=2*x");
function c=x(x1, x2)
    c = (x1 - f(x1))*((x2-x1)/(f(x2)-f(x1)));
endfunction
function newtonquasi(x1, x2, e)
    tic();
    fx1=f(x1); fx2=f(x2);
    x3 = x(x1, x2);
    fx3=f(x3);
    while abs(fx3)>e
        x1 = x2;
        x2 = x3;
        fx1 = fx2;
        fx2 = fx3;
        x3 = x(x1, x2);
        fx3 = f(x3);
        mprintf("%12.10f \t %12.10f \t %12.10f \t %12.10f \n",x1, x2, x3, fx3);
    end
endfunction
mprintf("==============================================");
mprintf("\nOutput x3 \tOutput fx3\n");
mprintf("============================================== \n");
newtonquasi(-1, 2, 10^-4)
waktu=toc();
mprintf("============================================== \n");
mprintf("Waktu = %12.10f detik",waktu);
