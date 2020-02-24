
# def multisum(number)
#   arr_multiples = []
#   multiple = 3
#   while multiple <= number
#     arr_multiples << multiple
#     multiple += 3
#   end
#   multiple = 5
#   while multiple <= number
#     arr_multiples << multiple if !arr_multiples.include?(multiple)
#     multiple += 5
#   end
#   arr_multiples.sum
# end
## Their solution, much simpler
def multisum(max_value)
  sum = 0
  1.upto(max_value) do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  sum
end
## Done with inject
def multisum(max_value)
  (1..max_value).inject(0) do |sum, n|
    n % 3 == 0 || n % 5 == 0 ? sum + n : sum
  end
end


puts multisum(3)
puts multisum(5) 
puts multisum(10) 
puts multisum(1000) 

