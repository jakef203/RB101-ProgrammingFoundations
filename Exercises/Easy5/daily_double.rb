

def crunch(string)

  new_string = ''
  string.each_char do |char|
      new_string << char unless char == new_string[-1]
  end
  new_string
end

# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

# def crunch(text)
#   text.gsub(/[A-Za-z ]{2,}/i, /[A-Za-z ]{1}/)
# end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double' 
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

# ["h", "e", "l", "l"].each_with_index { |val, i| puts i, val }
