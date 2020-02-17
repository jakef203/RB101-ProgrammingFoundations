
# 1st way

(1..99).each { |i| puts i if i.odd? }

# 2nd way

i = 1
while i < 100
  puts i 
  i += 2
end

# 3rd way
puts Array(1..99).select { |i| i.odd? }

