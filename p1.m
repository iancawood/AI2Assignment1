function [X_out, Y_out] = p1(X, Y, l1, l2)
% extract specificied samples and labels from a larger matrix

l1Indices = find(Y == l1);
l2Indices = find(Y == l2);

X_out = X([l1Indices; l2Indices], :);

if l1 < l2
    YL1 = ones(size(l1Indices, 1), 1);
    YL2 = ones(size(l2Indices, 1), 1) * 2;
else    
    YL1 = ones(size(l1Indices, 1), 1) * 2;
    YL2 = ones(size(l2Indices, 1), 1);
end

Y_out = [YL1; YL2];
end

