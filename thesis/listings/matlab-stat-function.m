function [ave, sd] = stat(x)
    n   = length(x);
    ave = sum(x)/n;
    sd  = sqrt(sum((x-ave).^2/n));
end