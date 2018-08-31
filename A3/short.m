function y = short(A,x)

%Returns the shortest distance from x to CS(A).

Basis = orth(A);

proj = @(v)(dot(x,v)/dot(v,v))*v;

[~, cs] = size(Basis);

projected = zeros(size(Basis));

for c = 1 : cs
    projected(:, c) = proj(Basis(:, c));
end

y = norm(x - sum(projected));

end
