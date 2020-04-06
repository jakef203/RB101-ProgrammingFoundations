
# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
    
## input - integer, boolean
## output - integer, bonus, half of integer input if boolean is true

def calculate_bonus(salary, bonus)
  
  return salary / 2 if bonus
  0
end
  
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000