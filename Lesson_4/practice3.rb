
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# under_100 = 
#   ages.to_a.select do |(key, value)|
#     value < 100
#   end

# puts under_100.to_h

under_100 = 
  ages.select { |key, val| val < 100 }

puts under_100

# array = [[1, 'a', 'apple'], [2, 'b', 'bear']]

# array.each do |(num, letter, word)|
#   puts "Num is #{num}, Letter is #{letter}, Word is #{word}"
#   end



  