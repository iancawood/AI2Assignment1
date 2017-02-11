function W = p9(X_train, Y_train, iterNum, WInit, alpha)
% run multiclass  single sample on X_train for iterNum times in
% order to tune weights W

W = WInit;
sampleNum = size(Y_train, 1);
z = horzcat(ones(size(X_train, 1), 1), X_train);
binClass = transpose(classToBinary(Y_train, W));

for i = 1:iterNum
    for j = 1:sampleNum
        WZ = W * transpose(z);            
        W = W + alpha * ((binClass(:, j) - soft(WZ(:, j))) * z(j, :));
    end
    
    disp(num2str(i));
end

end

