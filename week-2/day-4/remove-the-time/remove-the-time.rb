require 'time'

def shorten_to_date(long_date)
  temporal_day_name = long_date.split.first  # because we don't have year, I use 2020 by default, here names of the day are different
  temporal_time = Time.strptime(long_date, "%A %B %d, %I%p")
  "#{temporal_day_name} #{Time.new(2020, temporal_time.month, temporal_time.day).strftime("%-B %-d")}"
end

# tests (objective: use time)
puts shorten_to_date("Monday February 2, 8pm")    # "Monday February 2"
puts shorten_to_date("Tuesday May 29, 8pm")       # "Tuesday May 29"
puts shorten_to_date("Wed September 1, 3am")      # "Wed September 1"
puts shorten_to_date("Friday May 2, 9am")         # "Friday May 2"
puts shorten_to_date("Tuesday January 29, 10pm")  # "Tuesday January 29"