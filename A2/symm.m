function y = symm(x)
% to be added
[m, n] = size(x);

if(m ~= n)
    y = 0;
    return 
end

y = isequal(x, x');

end
