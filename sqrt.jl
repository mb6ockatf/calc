#!/usr/bin/julia
const eps = 1e-15;

function sqrt(n::Int64)
	x = 1;
	while abs(x * x - n) > eps
		x = (x + n / x) / 2;
	end
	return x;
end

println(sqrt(7));
