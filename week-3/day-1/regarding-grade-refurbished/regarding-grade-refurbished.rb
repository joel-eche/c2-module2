require 'textstat'

test_1 = "One fish. Two fish. Red fish. Blue fish."
test_2 = "Would you like them here or there? I would not like them here or there. I would not like them anywhere."
test_3 = "Congratulations! Today is your day. You're off to Great Places! You're off and away!"
test_4 = "Harry Potter was a highly unusual boy in many ways. For one thing, he hated the summer holidays more than any other time of year. For another, he really wanted to do his homework, but was forced to do it in secret, in the dead of the night. And he also happened to be a wizard."
test_5 = "In my younger and more vulnerable years my father gave me some advice that I've been turning over in my mind ever since."
test_6 = "Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, \"and what is the use of a book,\" thought Alice \"without pictures or conversation?\""
test_7 = "When he was nearly thirteen, my brother Jem got his arm badly broken at the elbow. When it healed, and Jem's fears of never being able to play football were assuaged, he was seldom self-conscious about his injury. His left arm was somewhat shorter than his right; when he stood or walked, the back of his hand was at right angles to his body, his thumb parallel to his thigh."
test_8 = "There are more things in Heaven and Earth, Horatio, than are dreamt of in your philosophy."
test_9 = "It was a bright cold day in April, and the clocks were striking thirteen. Winston Smith, his chin nuzzled into his breast in an effort to escape the vile wind, slipped quickly through the glass doors of Victory Mansions, though not quickly enough to prevent a swirl of gritty dust from entering along with him."
test_10 = "A large class of computational problems involve the determination of properties of graphs, digraphs, integers, arrays of integers, finite families of finite sets, boolean formulas and elements of other countable domains."

def reading_grade(text)
  grade = TextStat.coleman_liau_index(text).round

  if grade < 1
    "Before Grade 1"
  elsif grade >= 16
    "Grade 16+"
  else
    "Grade #{grade}"
  end
end

# tests
p reading_grade(test_1)  # "Before Grade 1"
p reading_grade(test_2)  # "Grade 3"
p reading_grade(test_3)  # "Grade 5"
p reading_grade(test_4)  # "Grade 5"
p reading_grade(test_5)  # "Grade 8"
p reading_grade(test_6)  # "Grade 9"
p reading_grade(test_7)  # "Grade 8"
p reading_grade(test_8)  # "Grade 10"
p reading_grade(test_9)  # "Grade 10"
p reading_grade(test_10) # "Grade 16+"