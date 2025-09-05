function [angle,err,order,const] = G1CubicErrorOrder(m,s,e)
% Calculates and compares the error of first M approximations of angles
% pi/pow(2,i). It calculates the curve on s points.

t = linspace(-1, 1, s);
angle = zeros(1,m);
err = zeros(1,m);
order = zeros(1,m);
const = zeros(1,m);
fi = pi/2;


for k=1:m 
    [b] = G1Cubic(fi,e);
    p = DeCasteljau(b,t);
    x = p(1,:);
    y = p(2,:);
    err(1,k) = max(abs(sqrt(x.^2 + y.^2) - 1));
    angle(1,k) = 2^(k);
    fi = fi/2;
end

for k=1:(m-1)
    order(1,k) = log(err(1,k)/err(1,k+1))/log(2);
    const(1,k) = err(1,k)/(pi/2^k)^(order(1,k));
end
end

