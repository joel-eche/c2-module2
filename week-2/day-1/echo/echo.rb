def put_n(text, number_times)
  number_times = number_times.to_i if number_times.count("0-9") == number_times.length
  raise ArgumentError.new("Number of times should be an integer") unless number_times.is_a? Integer
  raise ArgumentError.new("Number of times should be a positive number") unless number_times > -1

  number_times.times { puts text }
end
  
def echo
  begin
    puts "What do you want to echo?"
    text_to_print = gets.chomp
    puts "How many times do you want to repeat it?"
    number_times = gets.chomp
    put_n(text_to_print, number_times)
  rescue
    puts "I don't understand how many times do you want to echo the string!"
    retry
  end
end

# test
echo