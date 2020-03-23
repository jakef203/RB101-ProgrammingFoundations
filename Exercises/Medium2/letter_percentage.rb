require 'pry'
## Using Array#count to count up, much more simple than original
def letter_percentages(string)

  percent_hash = { lowercase: [], uppercase: [], neither: [] }
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  characters = string.chars

  counts[:lowercase] = characters.count { |ch| ch =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |ch| ch =~ /[A-Z]/ }
  counts[:neither] = characters.count { |ch| ch =~ /[^A-Za-z]/ }

  percent_hash[:lowercase] = format("%0.2f", (counts[:lowercase] / string.size.to_f) * 100)
  percent_hash[:uppercase] = format("%0.2f", (counts[:uppercase] / string.size.to_f) * 100)
  percent_hash[:neither] = format("%0.2f", (counts[:neither] / string.size.to_f) * 100)
  percent_hash
end

p letter_percentages('abCdef 123') 
p letter_percentages('AbCd +Ef') 
p letter_percentages('123') 
p letter_percentages('abcdefGHI')

# Original solution
# def letter_percentages(string)

#   percent_hash = {}
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
#   lower_count = 0
#   upper_count = 0
#   neither_count = 0

#   string.each_char do |char|
#     counts[:lowercase] = 
#     if char =~ /[A-Z]/
#       upper_count += 1
#     elsif char =~ /[a-z]/
#       lower_count += 1
#     else
#       neither_count += 1
#     end
#   end
#   percent_hash[:lowercase] = (lower_count.to_f / string.size) * 100
#   percent_hash[:uppercase] = (upper_count.to_f / string.size) * 100
#   percent_hash[:neither] = (neither_count.to_f / string.size) * 100
#   percent_hash
# end

# p letter_percentages('abCdef 123') 
# p letter_percentages('AbCd +Ef') 
# p letter_percentages('123') 

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

## Their solution
# def letter_percentages(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
#   percentages = { lowercase: [], uppercase: [], neither: [] }
#   characters = string.chars
#   length = string.length

#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end


# p letter_percentages('abCdef 123') 
# p letter_percentages('AbCd +Ef') 
# p letter_percentages('123') 
