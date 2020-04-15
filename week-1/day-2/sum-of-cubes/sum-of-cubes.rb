def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, number| sum + number ** 3 }
end

# tests
p sum_of_cubes(3, 5)
p sum_of_cubes(1, 3)