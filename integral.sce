clc; clear; tic;
deff("y=f(x)","y=x^2");
a=4; b=2; n=1529;

function l=luas(tp, n)
    lb=(a-b)/n; ptot=0;
    for i=1:n
        pj = f(tp);
        ptot = ptot+pj;
        tp = tp+lb;
    end
    l = ptot * lb;
endfunction

function integral(n)
    lb=(a-b)/n;
    tpAtas=b+lb;
    tpBawah = b;
    tpTengah = b + (lb/2);
    mprintf("%4d\n \t\t %12.10f \t %12.10f\t %12.10f\n", n, luas(tpAtas, n), luas(tpBawah, n), luas(tpTengah, n));
endfunction

// looping while add 50
mprintf("===============================================================");
mprintf("\nJumlah PP \tLuas PP Atas \tLuas PP Bawah \tLuas PP Tengah \n");
mprintf("=============================================================== \n");
for i=1:10
    integral(n);
    n = n + 50;
end
mprintf("=============================================================== \n");
waktu=toc();
mprintf("Waktu proses= %12.10f detik",waktu);
