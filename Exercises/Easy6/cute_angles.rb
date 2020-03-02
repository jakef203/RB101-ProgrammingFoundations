
# DEGREE = "\xC2\xB0"

# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = 3600

### Not ideal but works, learn how to use divmod!
# def dms(degrees_num)
#   degrees_num -= 360 if degrees_num >= 360
#   degrees_str = degrees_num.to_i.to_s
#   degrees_remaining = degrees_num - degrees_num.to_i
  
#   minutes_num = degrees_remaining * MINUTES_PER_DEGREE
#   minutes_str = minutes_num.to_i.to_s
#   minutes_remaining = minutes_num - minutes_num.to_i 
  
#   seconds_num = minutes_remaining * SECONDS_PER_MINUTE
#   seconds_str = seconds_num.to_i.to_s
#   format("%d#{DEGREE}%02d'%02d\"", degrees_str, minutes_str, seconds_str)
#   # puts "Degrees: #{degrees_str}, Minutes: #{minutes_str}, Seconds: #{seconds_str}"
# end

#Their solution
DEGREE = "\xC2\xB0"

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = 3600

def dms(degrees_float)
  if degrees_float >= 360 || degrees_float < 0
    degrees_float = degrees_float % 360
  end
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")

#or
# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   total_minutes, seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
#   degrees, minutes = total_minutes.divmod(MINUTES_PER_DEGREE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

