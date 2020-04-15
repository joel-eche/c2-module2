def count_words(text)
  words = text.downcase.split # split = split(" ")
  words.to_h { |word| [word, words.count(word)] }
end

# test
p count_words("cake cake caKe I like cake very much please gIve me cake I need the cake i need it")
