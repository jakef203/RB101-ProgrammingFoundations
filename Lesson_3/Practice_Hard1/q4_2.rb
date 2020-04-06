
def is_an_ip_number?(number)
  (0..255).include?(number.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  dot_separated_words.each do |word|
    return false unless is_an_ip_number?(word)
  end
  true
end



puts dot_separated_ip_address?("255.04.0.135.23")
puts dot_separated_ip_address?("255.04.0")
puts dot_separated_ip_address?("255.04.0.256")