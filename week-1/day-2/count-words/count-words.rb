def count_words(text)
  text.downcase!
  words = text.split(" ")
  result = Hash.new(0)

  words.each { |word| result[word] += 1 }
  result
end

# test
p count_words("cake cake caKe I like cake very much please gIve me cake I need the cake i need it")
