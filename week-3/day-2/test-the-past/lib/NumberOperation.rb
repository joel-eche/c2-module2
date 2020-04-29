class NumberOperation

  def sum(*numbers)
    numbers.inject {|sum, number| sum + number}
  end

  def summation(n)
    sum = 0
    (1..n).each {|number| sum += yield(number) }
    
    sum
  end

  def min(my_array)
    min = my_array.length > 0 ? my_array[0] : nil

    my_array.each do |element|
      min = element if element < min
    end

    return min
  end

  def max(my_array)
    max = my_array.length > 0 ? my_array[0] : nil

    my_array.each do |element|
      max = element if element > max
    end

    return max
  end

end