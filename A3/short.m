function y = short(A,x)

%Retuns

Q = orth(A);

projection = @(v)((dot(x,v)/dot(v,v))*v);

s = sum([ projection(Q(:, 1)),  projection(Q(:, 2))]);

y = norm(x - s);

end
