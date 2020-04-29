class StringOperation

  def vowel?(text)
    !!text.match(/^[aeiou]$/i)
  end

  def palindrome?(sentence)
    auxiliar_sentence = sentence.downcase
    auxiliar_sentence.gsub!(/ /, "")
    reverse_sentence = auxiliar_sentence.reverse
    
    auxiliar_sentence == reverse_sentence
  end
  
end