def bool_to_word bool
  if bool
    return "Yes"
  end
  return "No"
end

puts "#{bool_to_word(true)}"
puts "#{bool_to_word(false)}"