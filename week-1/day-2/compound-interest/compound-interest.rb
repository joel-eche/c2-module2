def calculate_compound_interest(amount_deposited, interest_rate_per_period, number_periods)
  compound_interest = amount_deposited
  interest_decimal = interest_rate_per_period / 100

  number_periods.times do
    compound_interest += (compound_interest * interest_decimal)
  end

  return compound_interest
end

print "Amount deposited: "
amount_deposited = gets.chomp.to_f
print "Interest rate per period(%): "
interest_rate_per_period = gets.chomp.to_f
print "Number of periods: "
number_periods = gets.chomp.to_i

compound_interest = calculate_compound_interest(amount_deposited, interest_rate_per_period, number_periods)
compound_interest = compound_interest.round(1)

puts "Compound interest: #{compound_interest}"