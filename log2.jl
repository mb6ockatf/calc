#!/usr/bin/julia

const eps = 1e-40;

function log_2(n::Int64)
	x = 1;
	previous = 0;
	while abs(2 ^ x - n) > eps
		println(x);
		x = (x + n / x) / 2;
		if x != previous
			previous = x;
		else
			break;
		end
	end
	return x;
end

println(log_2(256));
