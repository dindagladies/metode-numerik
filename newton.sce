clc;clear;
tic;
//deff("y=f(x)","y=x^2-3");
deff("y=f(x)","y=5*x^3-2*x^2+3*x-6");
deff("y1=ft(x)","y1=15*x^2-4*x+3");
x0=0;
f0=f(x0);
e=10^-4;
mprintf("x0 = %12.10f f0=%12.10f \n",x0, f0);
while abs(f0)>e
    ft0=ft(x0);
     x0=x0-(f0/ft0);
     f0=f(x0);
    mprintf("x0 = %12.10f f0=%12.10f \n",x0, f0);
end
waktu=toc();
mprintf("Outputnya = %12.10f\n",x0);
mprintf("Waktu = %12.10f detik",waktu);
