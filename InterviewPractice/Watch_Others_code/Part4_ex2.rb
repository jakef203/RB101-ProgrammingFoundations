
## input - year, integer value
## output- how many Friday 13ths in the given year

## require 'date'
## iterate using 1.upto(12)
##   set new date variable, pass in year, month, and 13 for day
##   check if date is a friday using friday?

require 'date'

def friday_13ths(year)

  count_fri_13ths = 0

  1.upto(12) do |month|
    
    d = Date.new(year, month, 13)
    count_fri_13ths += 1 if d.friday?
  end

  count_fri_13ths
end

p friday_13ths(2015)
p friday_13ths(1986)

