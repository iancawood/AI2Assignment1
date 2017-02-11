function y = soft(x)
% softmax function
x = exp(x);
y = x ./ sum(x);
end

