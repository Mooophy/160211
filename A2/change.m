function y = change(a,b)

%Retuns the change of basis matrix for conversion from the basis of a to b.

if(det(a)==0 || det(b)==0)
    disp 'Error! At least one of the matrices does not form a basis.'
    return
end

[s, ~] = size(a);
y = zeros(s);

for i = 1 : s
    y(:,i) = linsolve(b, a(:,i));
end

end
