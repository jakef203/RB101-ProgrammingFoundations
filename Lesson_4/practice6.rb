
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# puts flintstones.map { |name| name[0, 3] }

flintstones.map! do |name|
  name[0, 3]
end

puts flintstones