
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

vehicles.uniq.each do |element|
  veh_hash[element] = vehicles.count(element)
end

veh_hash.each do |key, value| 
  puts "#{key} => #{value}"
end

##Solve the problem when words are case insensitive
vehicles = [
  'car', 'car', 'truck', 'car', 'Truck', 'suv', 'Car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'TRUCK' ]


veh_hash = Hash.new(0)

vehicles.each do |vehicle|
  veh_hash[vehicle.downcase] += 1
end

veh_hash.each do |key, value| 
  puts "#{key} => #{value}"
end