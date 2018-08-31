function y = htr(u)

%Returns Householder transformation that transform u to [t, 0, 0 ...]

[r, ~] = size(u);

if(all(u(2:end) == 0))
    y = eye(r);
    return
end

v = u;
v(:) = 0;
v(1) = norm(u);
w = u - v;

y = eye(r) - 2*(w * w')/(norm(w)^2);

end
