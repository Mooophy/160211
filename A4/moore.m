function G = moore(A)

% Returns Moore-Penrose inverse of a matrix A

R = rref(A);
C = R(1:rank(A), :);
F = C * A';
G = C' * inv(F * F') * F;

end
