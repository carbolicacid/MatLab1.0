clc;
close all;
clear;
A=[17 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
B=[ 2 3 4 5 ; 6 7 8 9 ; 10 11 12 13 ; 14 15 16 17 ];
C=[ 1 2 3 ; 4 5 6 ; 7 8 9 ];
y=[ 4 3 2 1 ]';

AB = A * B
BA = B * A
isequal(AB, BA);
% as AB ≠ BA Matrix multiplication is NOT commutative

AC=A*c
% The operation A * C will fail due to dimension mismatch (as noted in the original output)