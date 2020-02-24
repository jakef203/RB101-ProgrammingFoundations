
def leap_year_post_1752?(year)
  (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
end

def leap_year_pre_1752?(year)
  year % 4 == 0
end

def leap_year?(year)
  if year <= 1752
    leap_year_pre_1752?(year)
  else
    leap_year_post_1752?(year)
  end
end
## Their solution
def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true