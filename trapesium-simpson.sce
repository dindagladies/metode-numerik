clc; clear;
deff("y=f(x)","y=x^2");
tic;
a=3.779; b=1.449; n=1;

function t=trapesium(n)
    l=(a-b)/n; tp1=b; tp2=b+l; ptot=0;
    for i=1:n
        p1=f(tp1);
        p2=f(tp2);
        tp1=tp2;
        tp2=tp1+l;
        pj=(p1+p2)/2;
        ptot=ptot+pj;
    end
    t=ptot*l;
    //mprintf('Luas = %13.10f\n',t);
endfunction

function s=simpson(n)
    l=(a-b)/n; tp1=b; tp2=tp1+(l/2); tp3=tp2+(l/2); ptot=0;
    for i=1:n
        p1=f(tp1);
        p2=f(tp2);
        p3=f(tp3);
        pj = (p1 + (4 * p2) + p3)/6;
        ptot=ptot+pj;
        tp1 = tp3;
        tp2 = tp1 + (l/2);
        tp3 = tp2 + (l/2);
    end
    s=ptot*l;
    //mprintf('Luas = %13.10f\n',s);
endfunction

// looping while add 50
mprintf("Fungsi y = x^2 \n");
mprintf("Batas Atas = %4d \n", a);
mprintf("Batas Bawah = %4d \n", b);
mprintf("==========================================================");
mprintf("\nJumlah PP \tM Trapesium \t\tM Simpson \n");
mprintf("========================================================== \n");
for i=1:5
    mprintf("%4d \t\t %13.10f \t %13.10f\n\n", n, trapesium(n), simpson(n));
    n = n + 0.3;
end
waktu=toc();
mprintf("========================================================== \n");
mprintf('Waktu proses = %13.10f\n',waktu);
