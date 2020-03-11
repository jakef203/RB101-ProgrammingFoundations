

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# new_hsh = []

# hsh.each do |item, details|
#   if details[:type] == 'fruit'
#     colors_arr = []
#     details[:colors].each do |color|
#       colors_arr << color.capitalize
#     end
#     new_hsh << colors_arr
#   else
#     new_hsh << details[:size].upcase
#   end
# end

# p new_hsh

h = hsh.map do |item, details|
  if details[:type] == 'fruit'
    details[:colors].map(&:capitalize)
  else
    details[:size].upcase
  end
end

p h