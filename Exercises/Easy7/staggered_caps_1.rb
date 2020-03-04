
# def staggered_case(string)
#   characters = string.chars.each_with_index.map do |ch, idx|
#     if idx.even?
#       ch.upcase 
#     elsif idx.odd?
#       ch.downcase 
#     end
#   end
#   characters.join
# end
## Their solution
def staggered_case(string)
  need_upper = true
  new_string = ''

  string.chars.each do |ch|
    if need_upper
      new_string += ch.upcase
    else
      new_string += ch.downcase
    end
    need_upper = !need_upper
  end
  new_string
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


## You can use map on string.each_char because string.each_char returns an enumerator
## If you need to map a string's characters without using index
# def staggered_case(string)
#   string.each_char.map(&:capitalize).join
# end
# ## If you need to map a string's characters when using an index
# # must first transform to an array(using chars) then take each_with_index on it
# characters = string.chars.each_with_index.map do |ch, idx|
#   ...
#   ...
#   characters.join