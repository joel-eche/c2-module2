def non_duplicated_values(values)
  result = []
  values.sort!

  values.each do |element|
    unless result.include?(element)
      result << element if values.count(element) == 1
    end
  end

  result
end

# test
p non_duplicated_values([1,2,2,3,3,4,5]) #returns [1,4,5]
p non_duplicated_values([1,2,2,3,4,4]) #returns [1,3]


=begin
# another way to resolve it
def non_duplicated_values(values)
  values.select {|element| values.count(element) == 1}
end
=end