def two_fer(name)
    final_name = "you"
    if name.length > 0
        final_name = name
    end
    return "One for #{final_name}, one for me"
end

print "Who? "
name = gets.chomp
name.capitalize!
puts "#{two_fer(name)}"