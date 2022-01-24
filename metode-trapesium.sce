clc;
clear;
deff("y=f(x)","y=x^2");
tic;
a=7;
b=1
n=1426;
l=(a-b)/n;
tp1=b;
tp2=b+l;
ptot=0;
for i=1:n
    p1=f(tp1);
 p2=f(tp2);
 tp1=tp2;
 tp2=tp1+l;
 pj=(p1+p2)/2;
 ptot=ptot+pj;
 mprintf('Rata-rata panjang %d = %13.10f\n',i,pj);
end
luas=ptot*l;
waktu=toc();
mprintf('Luas = %13.10f\n',luas);
mprintf('Waktu proses = %13.10f\n',waktu);
