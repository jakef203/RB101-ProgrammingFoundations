
## Their solution
require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do |i|
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2


## My original solution, works well too
# def friday_13th(year)
#   num_friday_13 = 0
#   1.upto(12) do |i|
#     t = Time.new(year, i, 13)
#     num_friday_13 += 1 if t.friday?
#   end
#   num_friday_13
# end

# puts friday_13th(2015) == 3
# puts friday_13th(1986) == 1
# puts friday_13th(2019) == 2

