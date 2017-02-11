function C = p7(W, X)
% multiclass classification
% W = m x (d + 1)
% X = n X d
% C = n x 1

X = horzcat(ones(size(X, 1), 1), X);
WX = W * transpose(X);
[~, indices] = max(WX);
C = transpose(indices);

end

