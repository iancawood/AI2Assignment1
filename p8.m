function W = p8(X_train, Y_train, iterNum, WInit, alpha)
% run multiclass perception single sample on X_train for iterNum times in
% order to tune weights W

W = WInit;
sampleNum = size(Y_train, 1);
labels = p7(W, X_train);

for i = 1:iterNum
    for j = 1:sampleNum        
        if (labels(j) ~= Y_train(j))
            gradient = zeros(size(W));
            gradient(labels(j), :) = horzcat(1, X_train(j, :)) * -1;
            gradient(Y_train(j), :) = horzcat(1, X_train(j, :));
            
            W = W + alpha * gradient;
            
            labels = p7(W, X_train);
        end
    end
    
    disp(num2str(i));
end

end

