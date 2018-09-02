function y = short(A,x)

%Returns the shortest distance from x to CS(A).

proj = @(v)(dot(x,v)/norm(v)^2)*v;

Basis = orth(A);
[~, cs] = size(Basis);
accumulated = [0 0 0 0]';

for c = 1 : cs
    accumulated = accumulated + proj(Basis(:, c));
end

y = norm(x - accumulated);
end
