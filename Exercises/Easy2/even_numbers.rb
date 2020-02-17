
#1st way

i = 1

while i < 100
  puts i if i.even?
  i += 1
end
 
#2nd way
# i = 2

# while i < 100
#   puts i
#   i += 2
# end

# 3rd way
# (1..99).each { |i| puts i if i.even? }

# 4th way

# puts (1..99).select { |i| i.even? }