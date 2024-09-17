function [cost, height] = cylCost(radius)
	height = (4000) / (pi*radius.^2);
	cost = 0.03 * (pi*radius.^2 + 2*pi*radius*height);
end
