def check_array_length(my_array)
  if my_array.length == 0
    puts "Empty array"
    exit(1)
  end
end

def min(my_array)
  check_array_length(my_array)
  min = my_array[0]
  
  my_array.each do |element|
    min = element if element < min
  end

  return min
end

def max(my_array)
  check_array_length(my_array)
  max = my_array[0]
  
  my_array.each do |element|
    max = element if element > max
  end

  return max
end

numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]
puts "Min: #{min(numbers)}" # Result is -3456
puts "Max: #{max(numbers)}" # Result is 123891