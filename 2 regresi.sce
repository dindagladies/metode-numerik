// Regresi
clc;clear;
tic;
xi=[1 0 2];
yi=[2 0 4];
xc=5;
[m,p]=size(xi);
px=0; jx = 0; jy = 0; jxy = 0; jx2 = 0;
for i=1:p
    jx = jx + xi(i);
    jy = jy + yi(i);
    jxy = jxy + (xi(i) * yi(i));
    jx2 = jx2 + ((xi(i))^2);
end

rxy = jxy/p; ry = jy/p; rx = jx/p; rx2 = jx2/p;

a1 = (rxy-(rx*ry)) / (rx2-((rx)^2));
a0 = ry-(a1*rx);
fx = (a1*xc)+a0;
waktu=toc();

mprintf('Nilai F(x) = %10.6f \n', fx);
mprintf('Waktu : %f detik', waktu);
