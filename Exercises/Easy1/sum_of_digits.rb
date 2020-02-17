
def sum(num)
  num.to_s.chars.map!(&:to_i).sum
  # or => num.to_s.chars.map!(&:to_i).reduce(:+)
end

# alternate solution

# def sum(num)
#   sum = 0
#   str_digits = num.to_s.chars
#   str_digits.each do |n|
#     sum += n.to_i
#   end
  
#   sum
# end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45