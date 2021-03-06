function C = p4(w, X)
% Multiply a matrix of weights w by a matrix of samples W to calculate a
% vector of classifications C

 C = X * w(2:end, :) + w(1, :);
 
 for i = 1:size(C, 1)
     if (C(i) > 0)
         C(i) = 1;
     elseif (C(i) < 0)
         C(i) = 2;
     else
         C(i) = randi(2);
end         
end

