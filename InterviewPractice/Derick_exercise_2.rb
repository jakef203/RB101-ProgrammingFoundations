
## input - 2 values, start, end value, integers
## ouput - String that has values joined together

## Initialize empty array called arr_items
## Use start.upto(end) to iterate through numbers (number is block variable name)
## case number, if num % 15 == 0 append "FizzBuzz", 
##     % 5 == 0, append Buzz
##     % 3 == 0, append "Fizz, othewise, append number
##  After iteration use join with ', ' to make the return string

# def FizzBuzz(start, end_val)

#   arr_items = []

#   start.upto(end_val) do |number|
#     if number % 15 == 0
#       arr_items << "FizzBuzz"
#     elsif number % 5 == 0
#       arr_items << "Buzz"
#     elsif number % 3 == 0
#       arr_items << "Fizz"
#     else
#       arr_items << number
#     end
#   end
#   arr_items.join(', ')
# end

def FizzBuzz(start_val, end_val)
  arr_nums = (start_val..end_val).to_a

  arr_nums.map! do |num|
    case
    when num % 15 == 0 then "FizzBuzz"
    when num % 5 == 0  then "Buzz"
    when num % 3 == 0  then "Fizz"
    else                    num
    end
  end
  arr_nums.join(', ')
end

p FizzBuzz(1, 15)