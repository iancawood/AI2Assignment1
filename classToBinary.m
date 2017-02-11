function binClass = classToBinary(y, w)
% converts a single digit class number into a binary-esque form
% i.e. if there were 4 classes, class 3 becomes 0 0 1 0.

binClass = zeros(size(y, 1), size(w, 1));
for i = 1:size(binClass, 1)
   binClass(i, y(i)) = 1; 
end
end

