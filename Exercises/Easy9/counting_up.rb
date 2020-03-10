
# def sequence(num)
#   result = []
#   1.upto(num) { |i| result << i }
#   result
# end

def sequence(num)
  return [] if num <= 0
  (1..num).to_a
end
puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(-1) == []
puts sequence(1) == [1]
