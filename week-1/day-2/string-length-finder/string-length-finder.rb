def format_array_output(input_array)
  return "[#{input_array.join(", ")}]"
end

def length_finder(input_array)
  result = Array.new(input_array.length)

  input_array.each_with_index do |element, index|
    result[index] = element.length
  end

  return result
end


my_first_array = ['I','am','genius']
my_second_array = ['things','are','','awesome']
lengths_first_array = length_finder(my_first_array)
lengths_second_array = length_finder(my_second_array)

puts format_array_output(lengths_first_array)
puts format_array_output(lengths_second_array)