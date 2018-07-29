% Part II
clock;
format rational;

% Problem 1
clear;

A = [3 1 -1; -6 3 2; -3 2 1];
U = A;
M = zeros(3);       % M holds multiplies value
V = zeros(3);       % V holds pivot entry positions

M(1, 1) = - U(1, 1) / U(2, 1);
M(3, 1) = - U(3, 1) / U(2, 1);
U(1, :) = M(1, 1) * U(2, :) + U(1, :);
U(3, :) = M(3, 1) * U(2, :) + U(3, :);
V(2, 1) = 1;

M(3, 2) = - U(3, 2) / U(1, 2);
U(3, :) = M(3, 2) * U(1, :) + U(3, :);
V(1, 2) = 1;

V(3, 3) = 1;

I = eye(3);
P = I([2 1 3], :);  %P

U = P * U;          %U 

L = P * (V - M);    %L

% Problem 2

clear;

disp('2.a ======')

k = 10; m = 1; n = 4;
A = floor(((2 * k) + 1) * rand(m, n) - k);
disp(A);

disp('2.b ======')

B1 = bsxfun( @power, A', 0 : (n - 1) )';
disp(B1);

B2 = eye(4); 
for i = 1 : n 
    B2(i,:) = A .^ (i - 1); 
end
disp(B2);
