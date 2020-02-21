# Original problem
# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

# p factors(100) to while loop

###!Their solution

while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end
#Alternate solution
def factors(number)
  if number <= 0
    return "Invalid entry."
  end
  factors = []
  divisor = 1
  until divisor == number / 2
    factors << divisor if number % divisor == 0
    divisor += 1
  end 
  factors << number
  factors
end

p factors(2*3*4*5*7*23)