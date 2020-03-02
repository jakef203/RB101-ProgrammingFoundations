
DEGREE = "\xC2\xB0"

MINUTES_PER_DEGREE = 60
SECONDS_PER_DEGREE = 3600
SECONDS_PER_MINUTE = 60
def dms(degrees_num)
  degrees_num -= 360 if degrees_num >= 360
  degrees_str = degrees_num.to_i.to_s
  remaining_num = degrees_num - degrees_num.to_i
  
  minutes_num = remaining_num * MINUTES_PER_DEGREE
  minutes_str = minutes_num.to_i.to_s
  remaining_num = minutes_num - minutes_num.to_i 
  
  seconds_num = remaining_num * SECONDS_PER_MINUTE
  seconds_str = seconds_num.to_i.to_s
  format("%d#{DEGREE}%02d'%02d\"", degrees_str, minutes_str, seconds_str)
  # puts "Degrees: #{degrees_str}, Minutes: #{minutes_str}, Seconds: #{seconds_str}"
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)