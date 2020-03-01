
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index { |name| name[0, 2] == "Be"}



# idx = nil
# flintstones.each_with_index do |name, index|
#   if name[0, 2] == 'Be'
#     idx = index
#   end
#   idx
# end

# puts idx

# counter = 0
# idx = nil
# loop do 
#   break if counter == flintstones.size
#   if flintstones[counter][0, 2] == 'Be'
#     idx = counter
#     break
#   end
#   counter += 1
# end

# puts idx

