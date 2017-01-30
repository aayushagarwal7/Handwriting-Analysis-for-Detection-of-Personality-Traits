function [ gauss ] = gaussiii(x1,x2,x3)
    gauss = (1/(x3*sqrt(2*3.14)))*exp(-0.5*power((x1-x2)/x3,2.0));
end