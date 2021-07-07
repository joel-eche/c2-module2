require 'date'

def age?(year_of_birth, month_of_birth, day_of_birth)
  today = Date.today
  expected_age = today.year - year_of_birth
  expected_age -= 1 unless today.month > month_of_birth  || (today.month == month_of_birth && today.day >= day_of_birth)
  expected_age
end

# test (today: 2020/04/23)
p age?(1994, 2, 24)  # Should return 26
p age?(1994, 4, 23)  # Should return 26
p age?(1994, 12, 23) # Should return 25
p age?(1900, 5, 5)   # Should return 119