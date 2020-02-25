
# def time_of_day(num_min)
#   hours, minutes = num_min.divmod(60)
#   hours = hours % 24
#   hours < 10 ? hours_str = "0#{hours}" : hours_str = hours.to_s
#   minutes < 10 ? minutes_str = "0#{minutes}" : minutes_str = minutes.to_s
#   hours_str + ':' + minutes_str
# end
# Their solution
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

# With day change added
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
        'Friday', 'Saturday']
def time_of_day(delta_minutes)
  day_change, minutes_into_day =  delta_minutes.divmod(MINUTES_PER_DAY)
  hours, minutes = minutes_into_day.divmod(MINUTES_PER_HOUR)
  day_change = day_change % 7

  format("%02d:%02d on a #{DAYS[day_change]}", hours, minutes)
end

# puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"

puts time_of_day(0) 
puts time_of_day(-3) 
puts time_of_day(35) 
puts time_of_day(-1437) 
puts time_of_day(3000) 
puts time_of_day(800) 
puts time_of_day(-4231) 