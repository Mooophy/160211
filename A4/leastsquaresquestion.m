ts = 0.2 : 0.3 : 2 ;
ys = [3.6766 2.1631 1.1797 0.7326 0.3455 0.3332 0.0996];

v1 = fit(ts', ys', 1);

disp(v1);

function v = fit(x, y, d)

%

A = zeros(length(x), d+1);

for i = 1 : length(x)
    A(i,:)= x(i) .^ (0:d);
end

v = linsolve(A' * A, A' * y);

end
