function v = leastsquaresquestion(x, y, d)

%

A = zeros(length(x), d+1);

for i = 1 : length(x)
    A(i,:)= x(i) .^ (0:d);
end

v = linsolve(A' * A, A' * y);

end
