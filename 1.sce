//Lagrange
clc;clear;
xi=[-1 0 1];
yi=[1 1 3];
xc=10;
[m,p]=size(xi);
px=0;
for i=1:p
    qix=1;
    qixi=1;
    for j=1:p
        if i~=j
            qix=qix*(xc-xi(j));
            qixi=qixi*(xi(i)-xi(j));
        end
        lix=qix/qixi;
    end
    px=px+(yi(i)*lix);
end
mprintf('Nilai P(x) = %6.3f',px);
