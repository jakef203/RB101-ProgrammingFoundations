
def prompt(message)
  puts "==> #{message}"
end
numbers = []

prompt("Enter the 1st number:")
num = gets.to_i
numbers.push(num)

prompt("Enter the 2nd number:")
num = gets.to_i
numbers.push(num)

prompt("Enter the 3rd number:")
num = gets.to_i
numbers.push(num)

prompt("Enter the 4th number:")
num = gets.to_i
numbers.push(num)

prompt("Enter the 5th number:")
num = gets.to_i
numbers.push(num)

prompt("Enter the last number:")
check_num = gets.to_i

if numbers.include?(check_num)
  puts "The number #{check_num} appears in #{numbers}."
else
  puts "The number #{check_num} does not appear in #{numbers}."
end
# Their solution
numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

