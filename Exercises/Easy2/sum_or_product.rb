def valid_number?(num)
  num == num.to_i.to_s && num.to_i > 0
end

def valid_operation?(operation)
  %w(s p).include?(operation)
end

def compute_sum(value)
  # total = 0
  # 1.upto(value) { |num| total += num }
  # total
  (1..value).inject(:+)
end

def compute_product(value)
  # total = 1
  # 1.upto(value) { |num| total *= num }
  # total
  (1..value).inject(:*)
end

value = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  value = gets.chomp
  break if valid_number?(value)
  puts ">> Invalid.  Please try again."
end
value = value.to_i

operation = nil
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  break if valid_operation?(operation)
  puts ">> Invalid.  Please try again."
end

if operation == 's'
  sum = compute_sum(value)
  puts "The sum of the integers between 1 and #{value} is #{sum}."
else
  product = compute_product(value)
  puts "The product of the integers between 1 and #{value} is #{product}."
end


