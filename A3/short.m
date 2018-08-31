function y = short(A,x)

%Retuns

Q = orth(A);

projection = @(v)(dot(x,v)/dot(v,v))*v;

projected = [];

[~, columns] = size(Q); 

for c = 1: columns
    projected = [projected, projection(Q(:, c))];
end

s = sum(projected);

y = norm(x - s);

end
