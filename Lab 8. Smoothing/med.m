function y = med(ux, i)
imin = i - 1; 
imax = i + 1; 
ir = 0; 
if (imin < 1)
    ir = ux(imax); 
else
    if (imax > length(ux))
        ir = ux(imin); 
    else
        if (ux(imax) > ux(imin))
            ir = ux(imin); 
        else
            ir = ux(imax); 
        end
    end
end
y = ir; 
end