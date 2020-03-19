
# def fibonacci(n)
  
#   return 1 if n <= 2
#   first_num = 1
#   second_num = 1
#   counter = 3
#   loop do 
#     new_value = first_num + second_num
#     return new_value if counter == n
#     first_num = second_num
#     second_num = new_value
#     counter += 1
#   end
# end

def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do |i|
    first, last = [last, first + last]
  end
  last
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001)