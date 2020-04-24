def format_date(date)
  date.strftime("%B %d, del %Y")
end

# test
date = Time.new(2020, 4, 10)
puts format_date(date) # Returns April 10, del 2020