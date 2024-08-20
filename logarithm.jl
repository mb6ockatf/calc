#!/usr/bin/julia
using Test
const EPS = 1e-11


function log_core(base::Float64, n::Float64)
	x = 1
	step = 1
	while step > EPS
		while base ^ x < n
			x += step
		end
		x -= step
		step = step / 10
	end
	return x + step
end


function log(base::Float64, n::Float64)
	if base < 0 || n < 0
		return "error"
	end
	if base < 1 && n < 1
		return log_core(1/base, 1/n)
	elseif base > 1 && n > 1
		return log_core(base, n)
	elseif base < 1 && n > 1
		return - log_core(1/base, n)
	elseif base > 1 && n < 1
		return log_core(base, 1/n)
	end
end


@testset "log" begin
	@test 6 < div(log(Float64(2), Float64(128)), 1) < 8
end;
println(log(Float64(5), Float64(8)))
println(log(Float64(3), Float64(27)))
println(log(Float64(3), Float64(81)))
println(log(Float64(5), Float64(125)))
println(log(Float64(0.5), Float64(1/128)))
