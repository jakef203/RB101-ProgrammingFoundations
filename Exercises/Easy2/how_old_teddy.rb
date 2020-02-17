
name = nil
puts "Enter a name:"
name = gets.chomp

age = rand(20..100)
if name == ''
  puts "Teddy is #{age} years old!"
else
  puts "#{name} is #{age} years old!"
end

