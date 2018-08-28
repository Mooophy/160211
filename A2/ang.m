function y = ang(a,b)

%Retuns angle between the two nonzero vectors

if(all(a == 0) || all(b == 0))
    disp 'Error! Angle between zero vector is not defined.'
    return
end

y=acosd(dot(a,b)/norm(a)*norm(b));
