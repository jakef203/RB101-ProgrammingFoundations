
print "What is your name? "
name = gets
name.chomp!
if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}.  WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
