//Lagrange
clc;clear;
xi=[2005 2010 2015];
yi=[20 26 20];
xc=2008;
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
