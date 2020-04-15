def random_select(array, n)
  random_array = []
  array_length = array.length
  
  n.times do
    random_array << array[rand(array_length)]
  end

  random_array
end

p random_select([1, 2, 3, 4, 5], 2)
p random_select([1, 2, 3, 4], 2)
p random_select([1, 2, 3], 2)
p random_select([3, 1, 5], 2)