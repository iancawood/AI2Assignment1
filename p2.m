function [err, CONF] = p2(C, T)
% determine confusion matrix and error give a classification labels and the
% true labels

maxC = max(C);
maxT = max(T);

if (maxC >= maxT) 
    m = maxC;
else
    m = maxT;
end

CONF = zeros(m, m);

for x = 1:size(C, 1)
   index = sub2ind([m, m], C(x), T(x));
   CONF(index) = CONF(index) + 1;
end

correct = sum(diag(CONF));
total = sum(CONF(:));
err = (total - correct) / total;
end

