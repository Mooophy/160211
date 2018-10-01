t = 0.2 : 0.3 : 2;
y = [3.6766 2.1631 1.1797 0.7326 0.3455 0.3332 0.0996];

v1 = fit(t', y', 1);

C = exp(v1(1));
k = v1(2);

f1 = @(x) C * exp(k * x);
y1 = zeros(1, length(ys));
for i = 1:length(y1)
    y1(i) = f1(ts(i));
end
r1 = residual(y, y1);
disp('(a) C, k and residual are:')
disp([C k r1]);

v2 = fit(t', y', 2);
f2 = @(x) v2(1) + v2(2)*x + v2(3)*(x^2);
y2 = zeros(1, length(ys));
for i = 1:length(y2)
    y2(i) = f2(ts(i));
end
disp('(b) The fitted parameters and the residual are:')
disp(y2);
disp(r2);

disp('(c) As can be see by comparing the two residuals, the second model is better.')

disp('=================Plotting=================');

s(1) = subplot(2,1,1);
plot(t, log(y), t, (v1(1) + v1(2)*t));
xlabel('t'); 
ylabel('log(y)'); 
title(s(1),'Plot I')

s(2) = subplot(2,1,2);
plot(t, y, t, (v2(1) + v2(2)*t + v2(3)*t.^2));
xlabel('t'); 
ylabel('y'); 
title(s(2),'Plot II')

disp('=================Done=================');

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
