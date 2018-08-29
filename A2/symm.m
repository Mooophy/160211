function y = symm(x)

% Returns true if the input is symmetric.

[m, n] = size(x);

if(m ~= n)
    y = 0;
    return
end

y = isequal(x, x');

end
