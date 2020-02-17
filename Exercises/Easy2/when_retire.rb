
CURRENT_YEAR = 2020
current_year = Time.now.year
print "What is your age? "
age_current = gets.to_i
print "At what age would you like to retire? "
age_retire = gets.to_i

years_left = age_retire - age_current
year_retire = CURRENT_YEAR + years_left

puts "It's #{current_year}.  You will retire in #{year_retire}."
puts "You have only #{years_left} years of work to go!"

