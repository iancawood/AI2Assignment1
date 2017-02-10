function y = sig(x)
% returns 0 on x < 0 and 1 on x > 0 (approximately)
y = (1 + exp(-x)) .^ -1;
end
    
