function C = p3(X_train, Y_train, X_test, k)
% classify X_test samples using K nearest neighborss

numTrainSamples = size(X_train, 1);
numTestSamples = size(X_test, 1);
C = zeros(numTestSamples, 1);

for i = 1:numTestSamples
    testMatrix = repmat(X_test(i,:), numTrainSamples, 1);
    absDiff = abs(X_train - testMatrix);
    absDiff = absDiff .^ 2;
    dist = sum(absDiff, 2);

    [Y, I] = sort(dist);
    neighborsInd = I(1:k);
    neighbors = Y_train(neighborsInd);
    
    C(i) = mode(neighbors);
end

end

