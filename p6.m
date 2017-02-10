function w = p6(X_train, Y_train, iterNum, wInit, alpha)
% run logistic regression batch rule on X_train for iterNum times
% given: alpha, starting weight (no need to random gen it)
% Assumes that the weight vector is already augmented, but x_train is not.

Y_train(Y_train == 2) = 0;
w = wInit;
z = horzcat(ones(size(X_train, 1), 1), X_train);

for i = 1:iterNum     
    w = w + alpha * (transpose(z) * (Y_train - sig(z * w)));
    
    % unnecessary loss function calculation
    loss = 0;
    for j = 1:size(X_train, 1)
        if (Y_train(j) == 0)
            loss = loss - log(sig(z(j, :) * w));
        else
            loss = loss - log(1 - sig(z(j, :) * w)); 
        end
    end
    display = ['loss on iteration ', num2str(i), ':'];
    disp(display);
    disp(loss);
end

end

