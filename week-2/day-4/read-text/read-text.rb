def read_text
  file = File.open("./read-name.txt")
  file_data = file.read
  file.close
  "Your name is #{file_data}"
end

puts read_text