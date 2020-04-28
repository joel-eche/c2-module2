class String
  def vowel?
    !!self.match(/^[aeiou]$/i)
  end
end

# tests
p "".vowel?     # false
p "a".vowel?    # true
p "E".vowel?    # true
p "ou".vowel?   # false
p "z".vowel?    # false
p "lol".vowel?  # false

