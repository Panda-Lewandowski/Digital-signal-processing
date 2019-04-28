F = 3; 
dt = 0.05;
x = -F:dt:F;
yx = mygaussignal(x); 
uxbase = mygaussignal(x);
ux = mygaussignal(x);
N = length(yx); 

a = 0.25;
epsv = 0.05;

px = a .* rand(1, 7); 

pos = [25, 35, 40, 54, 67, 75, 95]; 
pxx = length(pos);

for i = 1 : 1 : pxx
    ux(pos(i)) = ux(pos(i)) + px(i); 
    uxbase(pos(i)) = uxbase(pos(i)) + px(i); 
end

for i = 1 : 1 : N
    smthm = mean(ux, i); 
    if (abs(ux(i) - smthm) > epsv)
        ux(i) = smthm; 
    end
end

figure 
hold on; 
plot(x, uxbase);
plot(x, ux); 
hold off; 

uxbase = mygaussignal(x);
ux = mygaussignal(x);

for i = 1 : 1 : pxx
    ux(pos(i)) = ux(pos(i)) + px(i); 
    uxbase(pos(i)) = uxbase(pos(i)) + px(i); 
end

for i = 1 : 1 : N
    smthm = med(uxbase, i); 
    if (abs(ux(i) - smthm) > epsv)
        ux(i) = smthm; 
    end
end

figure 
hold on; 
plot(x, uxbase);
plot(x, ux); 
hold off;