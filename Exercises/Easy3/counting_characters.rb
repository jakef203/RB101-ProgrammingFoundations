
print "Please enter a word or string of words: "
string = gets.chomp

num_chars = 0

## This only counts if it is alpha character
# string.each_char do |c|
#   if ('a'..'z').include?(c) || ('A'..'Z').include?(c)
#     num_chars += 1
#   end
# end

string.each_char { |c| num_chars += 1 if c != ' ' }

puts "There are #{num_chars} characters in \"#{string}\"."

# Their solution
print 'Please write word or multiple words: '
input_string = gets.chomp
num_chars = input_string.delete(' ').size
puts "There are #{num_chars} characters in \"#{input_string}\"."