
## input - integer greater than 0
## output - integer calculated as sum or product from 1 to input number

## Ask if they want to calculate product or sum
## If they enter anything other than 's' or 'p', it should loop ## again to get correct info
## 1 to number calculate product or sum

def sum_or_product
  
  operation = nil
  num = nil
  loop do
    puts "Enter a number greater than 0."
    num = gets.chomp.to_i
    break if num >= 1
    puts "Invalid entry, must be greater than 0."
  end
  
  loop do 
    puts "Enter 'p' to calculate the product.  Enter 's' to calculate the sum."
    operation = gets.chomp
    break if ['p', 's'].include?(operation)
    puts "Incorrect entry."
  end
  
  if operation == 's'
    result = (1..num).sum
  else
    result = 1
    1.upto(num) { |i| result *= i }
  end
  result
end

puts sum_or_product