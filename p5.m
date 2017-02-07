function w = p5(X_train, Y_train, iterNum)
% tune the weights

oldErr = 1;

for i = 1:iterNum
   testWeights = randn(size(X_train, 2) + 1, 1);
   C = p4(testWeights, X_train);
   [err, conf] = p2(C, Y_train);
   
   if (err < oldErr)
       w = testWeights;
       oldErr = err;
   end
end

end

