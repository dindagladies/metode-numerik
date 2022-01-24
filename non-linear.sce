clc;clear;
//deff("y=f(x)", "y=x^2-3");
deff("y=f(x)", "y=5*x^3-2*x^2+3*x-6");
x1=-1;
x2=2;
e=10^-4;
x3=(x1+x2)/2;
fx1=f(x1);
fx2=f(x2);
fx3=f(x3);
tic();
mprintf("==============================================");
mprintf("\nOutput x1 \tOutput x2 \tOutput x3\n");
mprintf("============================================== \n");
while abs(fx3)>e
    temp = fx3;
    if(fx1*fx3)<0
        x2=x3;
        fx2=fx3;
    else if(fx1*fx3>0)
        x1=x3;
        fx1=fx3;
     end
    end
    x3=(x1+x2)/2;
    fx3=f(x3);
    mprintf("%10.8f \t %10.8f \t %10.8f \n", x1, fx2, fx3);
end
mprintf("============================================== \n");
a = toc();
mprintf("Waktu Proses = %10.4f Detik \n", a);
mprintf("Output Akhir = %10.8f", x3);
