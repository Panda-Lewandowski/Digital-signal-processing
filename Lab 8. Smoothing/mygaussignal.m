function y = mygaussignal(x)
a = 1;
sigma = 1; 
y = a * exp(-x.^2 / sigma ^ 2); 
end