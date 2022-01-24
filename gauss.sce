clc; clear;
/*
a=[3 2 1;2 1 3;1 3 2];
b=[0;2;4];
a=[10 -1 -1 -1;-1 10 -1 -1;-1 -1 10 -1;-1 -1 -1 10];
b=[11;22;-11;-22];
a=[3 9 6;4 12 12;1 -1 1];
b=[12;12;1];
a=[1 1 1;0 2 2;2 -1 1];
b=[1;4;2];
*/
a=[2 2 10; 10 12 20; 6 6 10];
b=[108;376;204];
//a=[3 2 1;2 1 3;1 3 2];
//b=[0;2;4];
[br,kl]=size(a);
disp("Matrik A = ");disp(a);
disp("Matrik b = ");disp(b);
da=det(a);
if (da~=0) then
 //metode eliminasi gauss
 /*e=a;
 for i=1:br
 e(i,br+1)=b(i,1);
 end*/
 e=[a b];
 disp("Matrik E = ");disp(e);

 for kolom=1: br-1
 for baris=br:-1:kolom+1
 brp=e(baris,kolom)/e(baris-1,kolom);
 for k=1:br+1
 e(baris,k)=e(baris,k)-(brp*e(baris-1,k));
 end
 mprintf("b %d - %4.2f x b %d",baris,brp,baris-1);
 disp(e);
 end
 end
 disp("Matrik E = ");disp(e);
else
 disp('Tidak bisa diselesaikan krn det=0');
end
