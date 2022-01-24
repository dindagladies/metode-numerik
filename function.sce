clc;clear;
// PROGRAM LUAS PERSEGI & KUBUS

// persegi
function [k, l]=persegi(sisi)
    k = 4 * sisi;
    l = sisi * sisi;
endfunction

// luas kubus dari fungsi persegi
function c=kubus(luasPersegi)
    // luas = 6 * s * s = 6 * luas persegi
    c = 6 * luasPersegi;
endfunction

// input
sisi = input("Inputkan Sisi: ");

// call function
[keliling, luas] = persegi(sisi);
luasKubus = kubus(luas);
mprintf("Keliling dari Persegi = %d\n", keliling);
mprintf("Luas dari Persegi = %d\n", luas);
mprintf("Luas dari Kubus = %d\n", luasKubus);
