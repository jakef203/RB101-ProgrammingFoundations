
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |key, hash|
#   hash['age_group'] = 
#     case hash['age']
#     when (0..17) then 'kid'
#     when (18..64) then 'adult'
#     else               'senior'
#     end 
#   end

# p munsters

def star_method(stars)
  for star in stars
    star.downcase
  end
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)

p stars_1
p stars_2