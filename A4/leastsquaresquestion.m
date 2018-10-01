t = 0.2 : 0.3 : 2;
y = [3.6766 2.1631 1.1797 0.7326 0.3455 0.3332 0.0996];

v1 = fit(t', y', 1);

C = exp(v1(1));
k = v1(2);

disp([C k]);

f1 = @(x) C * exp(k * x);
y1 = zeros(1, length(ys));
for i = 1:length(y1)
    y1(i) = f1(ts(i));
end
disp(y1);

r1 = residual(y, y1);
disp(r1)

disp('=================')

v2 = fit(t', y', 2);
disp(v2)
f2 = @(x) v2(1) + v2(2)*x + v2(3)*(x^2);
y2 = zeros(1, length(ys));
for i = 1:length(y2)
    y2(i) = f2(ts(i));
end
disp(y2);

r2 = residual(y, y2);
disp(r2)

function v = fit(x, y, d)

A = zeros(length(x), d+1);

for i = 1 : length(x)
    A(i,:)= x(i) .^ (0:d);
end

v = linsolve(A' * A, A' * y);

end

function r = residual(y1, y2)
r = sum((y1 - y2).^ 2);
end
