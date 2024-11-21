function [r, thetaOut]=rec2pol(z)
    theta = angle(z);
    r = abs(z);
    thetaOut = rad2deg(theta);
end