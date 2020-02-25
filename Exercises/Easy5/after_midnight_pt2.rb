
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  if time_str == '00:00' or time_str == '24:00'
    return 0
  else
    hours = time_str[0..1].to_i
    minutes = time_str[3..4].to_i
    total_min = hours * MINUTES_PER_HOUR + minutes
    return total_min
  end
end

def before_midnight(time_str)
  if time_str == '00:00' or time_str == '24:00'
    return 0
  else
    hours = time_str[0..1].to_i
    minutes = time_str[3..4].to_i
    min_into_day = hours * MINUTES_PER_HOUR + minutes
    # min_before_midnight = MINUTES_PER_DAY - min_into_day
    min_before_midnight = MINUTES_PER_DAY % min_into_day
    return min_before_midnight
  end
end

#Their solution
def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
