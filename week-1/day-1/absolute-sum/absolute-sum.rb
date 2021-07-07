def get_absolute_value(number)
    if number < 0
        return number * -1
    end
    return number
end

def calculate_absolute_sum(first_number, second_number)
    sum = first_number + second_number
    return get_absolute_value(sum)
end

print "Show first number: "
first_number = gets.chomp.to_f
print "Show second number: "
second_number = gets.chomp.to_f

absolute_sum = calculate_absolute_sum(first_number, second_number)

puts absolute_sum
