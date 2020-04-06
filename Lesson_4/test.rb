
puts "hi"

# st = "ak0tzp"

# new_array = st.chars.select do |item|
#     item == 'k'
# end
# p new_array

# def greeting
#     puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#     greeting
#     number_of_greetings -= 1
# end

# loop do
#   number = rand(1..10)   # a random number between 1 and 10
#   puts 'Hello!'
#   if number == 5
#     puts 'Exiting...'
#     break
#   end
# end

# counter = 0
# loop do
#     puts "Hello"
#     counter += 1
#     break if counter == 5
# end

# puts 'ye'

# counter = 0
# loop do
#     break if counter == 5
#     puts "Hello"
#     counter += 1
# end

# string = 'abcdefghijklmnopqrstuvwxyz'
# string.each_char { |item| puts item }

# counter = 0
# loop do
#     puts string[counter]
#     counter += 1
#     break if counter == string.size
# end

# objects = ['hello', :key, 10, []]
# counter = 0
# loop do 
#     break if counter == objects.size
#     puts objects[counter].class
#     counter += 1
# end

# number_of_pets = { 
#     'dogs' => 2, 
#     'cats' => 4, 
#     'fish' => 1
# }

# pets = number_of_pets.keys
# counter = 0

# loop do
#     break if counter == pets.size
#     current_pet = pets[counter]
#     current_pet_number = number_of_pets[current_pet]
#     puts "I have #{current_pet_number} #{current_pet}!"
#     counter += 1
# end
# ## This is a more succint way to iterate through entries in a hash
# number_of_pets.to_a.each { |pet| puts "I have #{pet[1]} #{pet[0]}!" }

# a = 5

# loop do
#     a = 5
#     a += 5
#     puts a
#     break
# end

# puts a