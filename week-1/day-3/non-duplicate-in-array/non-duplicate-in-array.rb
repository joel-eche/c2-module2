def non_duplicated_values(values)
  length_values = values.length
  return values if length_values <= 1
  result = []
  values.sort!

  for i in (0..length_values - 1)
    result << values[i] if values[i] != values[i - 1] && values[i] != values[i + 1]
  end

  result
end

# test
p non_duplicated_values([1,2,2,3,3,4,5]) #returns [1,4,5]
p non_duplicated_values([1,2,2,3,4,4]) #returns [1,3]
p non_duplicated_values([4]) #returns [4]
p non_duplicated_values([4,4]) #returns []
p non_duplicated_values([]) #returns []


=begin
# another way to resolve it
def non_duplicated_values(values)
  values.select {|element| values.count(element) == 1}
end
=end