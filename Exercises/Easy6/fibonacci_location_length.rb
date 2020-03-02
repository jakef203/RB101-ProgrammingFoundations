
## input:  integer that is # of digits specified.
## output: integer, index of first Fibonacci number with <input> # of digits
## Loop that calculates Fibonacci # for specified index.
##   Loop until you number where num.to_s.size == input
##   

def find_fibonacci_index_by_length(num_digits)
  first = 1
  second = 1
  index = 2
  
  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= num_digits
    
    first = second
    second = fibonacci
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847




# def fib_num(index)  ## returns the fibonacci number at a given index
#   if index == 1 || index == 2
#     1
#   else
#     fib_num(index - 2) + fib_num(index - 1)
#   end
# end

# def find_fibonacci_index_by_length(num_length)
#   counter = 1
#   fib_current = nil
#   loop do
#     fib_current = fib_num(counter)
#     break if num_length == fib_current.to_s.size
#     counter += 1
#   end
#   counter
# end



