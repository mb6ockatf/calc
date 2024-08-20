#!/usr/bin/julia

function calc_pi()
	Ox, Oy = 100000, 100000
	inside = 0
	attempts = 10000000
	for i = 1:attempts
		x, y = rand(0:Ox), rand(0:Oy)
		if (x ^ 2 + y ^ 2) ^ 0.5 < Ox
			inside = inside + 1
		end
	end
	return inside / attempts * 4
end

print(calc_pi())

