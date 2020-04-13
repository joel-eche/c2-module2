def get_absolute_value(number)
    if number < 0
        return number * -1
    end
    return number
end

def calculate_absolute_sum(first_number, second_number)
    absolute_first_number = get_absolute_value(first_number)
    absolute_second_number = get_absolute_value(second_number)
    return absolute_first_number + absolute_second_number
end

print "Show first number: "
first_number = gets.chomp.to_f
print "Show second number: "
second_number = gets.chomp.to_f

absolute_sum = calculate_absolute_sum(first_number, second_number)

puts "#{absolute_sum}"
