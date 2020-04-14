def palindrome?(sentence)
  auxiliar_sentence = sentence.downcase
  auxiliar_sentence.gsub!(/ /, "")
  reverse_sentence = auxiliar_sentence.reverse

  return auxiliar_sentence == reverse_sentence
end

puts palindrome?("Race fast safe car")
puts palindrome?("Yreka Bakey")