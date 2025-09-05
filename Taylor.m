function [cosx,siny] = Taylor(fi,s,n)
%Calculates approximation of angle [-fi,fi], of degree n on s sample
%points. 

t = linspace(-fi,fi,s);

cosx = zeros(size(t));
siny = zeros(size(t));

for k=0:(n)
    if mod(k,2) == 0
        cosx = cosx + (-1)^(k/2) * t.^(k)/factorial(k);
    else
        siny = siny + (-1)^((k-1)/2) * t.^(k)/factorial(k);
    end
end

end

