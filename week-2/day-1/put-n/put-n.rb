def put_n(text, number_times)
  raise ArgumentError.new("Number of times should be an integer") unless number_times.is_a? Integer
  raise ArgumentError.new("Number of times should be a positive number") unless number_times > -1

  number_times.times { puts text }
end

# test
puts "Case 1:"
put_n("This will be printed 5 times!", 5)
