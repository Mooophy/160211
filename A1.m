clear;
clock;

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
