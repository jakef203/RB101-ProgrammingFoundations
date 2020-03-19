
# def fibonacci_last(n)
#   first, last = [1, 1]
#   3.upto(n) do |i|
#     first, last = [last, first + last]
#   end
#   last % 10
# end

## Their solution, part 1
# def fibonacci(n)
#   first, last = [1, 1]
#   3.upto(n) do |i|
#     first, last = [last, first + last]
#   end
#   last
# end

# def fibonacci_last(nth)
#   fibonacci(nth).to_s[-1].to_i
# end

## Their solution, part 2, much faster, only need last digits of previous 2 numbers
def fibonacci_last(nth)
  last_2 = [1, 1]

  3.upto(nth) do |i|
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) 

