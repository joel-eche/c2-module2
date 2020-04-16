def count_duplicates(array)
  array.sort!
  count = 0
  unique_current = array.shift
  
  array.each do |number|
    if number == unique_current
      count += 1
    else
      unique_current = number
    end
  end

  count
end

#test
numbers_1 = [1, 2, 3, 2, 5, 8, 5, 10, 5]
numbers_2 = [17, 13, 19, 17, 19, 7, 10, 11, 5, 11, 18, 13, 3, 12, 19, 0, 17, 1, 12, 12, 5, 12, 1, 1, 0, 14, 5, 4, 9, 9, 3, 10, 9, 9, 12, 16, 9, 17, 12, 11, 2, 2, 14, 8, 11, 12, 7, 1, 16, 2, 14]
numbers_3 = [1, 2, 3, 1, 5, 1, 5, 1, 5]

p count_duplicates(numbers_1) #3
p count_duplicates(numbers_2) #33
p count_duplicates(numbers_3) #5

=begin
# another way to do it
def count_duplicates(array)
  array.uniq.inject(0) {|sum, number| sum + (array.count(number) - 1)}
end
=end