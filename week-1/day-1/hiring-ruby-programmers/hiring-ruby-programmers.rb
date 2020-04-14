=begin
We are looking to hire experienced Ruby programmers. Our ideal candidate has 2 or more 
years of experience, but some programmers become really good even before that. We'll 
consider their Github points (a nice indicator of a good programmer), and even if they 
are not experienced, candidates with 500 Github points or more can apply. And there is 
one more catch: Ruby being a cool and awesome language, a lot of smart youngsters are 
very good at it. We love those kids, but for this particular job we'd rather have them 
study at school than work. Let us filter out candidates who are younger than 15. Also 
we don't want to consider candidates who applied recently for this opening.

Solution:
is_an_experienced_programmer = (candidate.years_of_experience >= 2 || candidate.github_points >= 500) &&
                                candidate.languages_worked_with.include?('Ruby') && candidate.age > 15 &&
                                !candidate.applied_recently?
=end

class Candidate
  attr_accessor :years_of_experience
  attr_accessor :github_points
  attr_accessor :languages_worked_with
  attr_accessor :age
  attr_accessor :applied_recently

  def calculate_is_an_experienced_programmer ()
    has_good_experience = @years_of_experience >= 2
    has_good_points = @github_points >= 500
    knows_ruby = @languages_worked_with.include?('Ruby')
    is_older = @age > 15
    applied_recently = @applied_recently
    return (has_good_experience || has_good_points) && knows_ruby && is_older && !applied_recently
  end

end


candidate = Candidate.new
candidate.years_of_experience = 4
candidate.github_points = 293
candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
candidate.applied_recently = false
candidate.age = 26

is_an_experienced_programmer = candidate.calculate_is_an_experienced_programmer()

puts is_an_experienced_programmer