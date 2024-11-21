function [z]=pol2rec(r, thetain)
    theta=deg2rad(thetain);
    z=r*exp(1j*theta);
end

