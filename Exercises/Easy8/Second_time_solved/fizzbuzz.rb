
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

## input - starting number, ending number
## output - string outputting results of Fizzbuzz, from start number to ending number

## Create a new array initialize to empty
## start.upto.end 
##. Each iteration do logic to get result, append that to array
## return new_array.join(', ')

# def fizzbuzz(start_num, end_num)
  
#   new_array = []
  
#   start_num.upto(end_num) do |i|
#     if i % 15 == 0 
#       new_array << "FizzBuzz"
#     elsif i % 5 == 0
#       new_array << "Buzz"
#     elsif i % 3 == 0
#       new_array << "Fizz"
#     else
#       new_array << i
#     end
#   end
#   new_array.join(', ')
# end

def fizzbuzz(start_num, end_num)
  
  new_array = (start_num..end_num).to_a
  
  new_array.map! do |num|
    case
    when num % 15 == 0 then "FizzBuzz"
    when num % 5 == 0 then "Buzz"
    when num % 3 == 0 then "Fizz"  
    else                    num
    end
  end
  new_array.join(', ')
end




p fizzbuzz(5, 30) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz