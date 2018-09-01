function [P, Px] = prot(x, i, j)

% Returns plane rotation

r = (x(i)^2 + x(j)^2)^0.5;
P = eye(length(x));

if(r~=0)
    P(i,i) =  x(i)/r;
    P(j,j) =  x(i)/r;
    P(i,j) =  x(j)/r;
    P(j,i) = -x(j)/r;
end

Px = P*x;

end
