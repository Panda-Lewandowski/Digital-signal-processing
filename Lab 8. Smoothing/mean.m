function y = mean(ux, i)
r = 0;
imin = i - 2; 
imax = i + 2; 
for j = imin : 1 : imax
    if (j > 0 && j < (length(ux) + 1))
        r = r + ux(j); 
    end
end
r = r / 5; 
y = r; 
end