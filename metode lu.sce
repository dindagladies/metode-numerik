clc; clear;
/*
a=[3 2 1;2 1 3;1 3 2];
b=[0;2;4];
a=[10 -1 -1 -1;-1 10 -1 -1;-1 -1 10 -1;-1 -1 -1 10];
b=[11;22;-11;-22];
a=[1 1 1;0 2 2;2 -1 1];
b=[1;4;2];
*/
a=[10 12 20; 2 2 10; 6 6 10];
b=[376;108;204];
[br,kl]=size(a);
disp("Matrik A = ");disp(a);
disp("Matrik b = ");disp(b);
da=det(a);
if (da~=0) then
 //cari matrik L dan U
 /*for i=1:br
 for j=1:br
 if i==j
 L(i,j)=1;
 else
 L(i,j)=0;
 end
 end
 end*/
 L=eye(br,br);
 disp("Matrik L = ");disp(L);

 u=a;
 for kolom=1:br-1
 k=kolom;
 for baris=kolom+1:br
 brp=u(baris,kolom)/u(k,kolom);
 for klm=1:br
 u(baris,klm)=u(baris,klm)-(brp*u(k,klm));
 end
 L(baris,kolom)=brp;
 end
 end
 disp("Matrik L = ");disp(L);
 disp("Matrik U = ");disp(u);
else
 disp('Tidak bisa diselesaikan krn det=0');
end
