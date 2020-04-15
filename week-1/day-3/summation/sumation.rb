def summation(n)
	sum = 0
	(1..n).each {|number| sum += yield(number) }
	sum
end

# test
p summation(3) { |val| val * 2 } # 1 * 2 + 2 * 2 + 3 * 2 = 12