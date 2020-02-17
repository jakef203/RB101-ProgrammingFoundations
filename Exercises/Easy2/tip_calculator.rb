
print "What is the bill? "
bill = gets.to_f

print "What is the tip percentage? "
tip_per = gets.to_i


tip = (bill * (0.01 * tip_per))
total = (bill + tip)

puts "\nThe tip is %0.2f." % [tip]
puts "The total is %0.2f." % [total]