def find_frequency(sentence, word)
  sentence.split(/[\s,.'?]/).count{ |w| w.downcase == word.downcase}
end

# tests
puts find_frequency("Do or do not... there is no try.", "do") # 2
puts find_frequency("Judge me by size, do you?", "Yoda") # 0
puts find_frequency("Named must your fear be before banish it you can.", "fear") # 1
puts find_frequency("hello", "hello") # 1