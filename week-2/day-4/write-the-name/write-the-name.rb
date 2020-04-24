def write_the_name(name)
  File.write("./write-name.txt", name, mode: "w")
end

print "What is your name? "
name = gets.chomp
write_the_name(name)
puts name
puts "Writting your name to a file!"
