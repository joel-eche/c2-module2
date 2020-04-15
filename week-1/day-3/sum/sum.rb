def sum(*numbers)
    numbers.inject {|sum, number| sum + number}
end

#test
p sum(10, 2, 3, 4, 5, 1, 20) #45
p sum(200, 300, 500) # 1000