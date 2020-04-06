
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


total_age = 0

munsters.each do |_, details|
  total_age += details["age"] if details["gender"] == "male"
end
p total_age

munsters.each do |name, details|
  puts "Name is #{name}, age is #{details["age"]}, and gender is #{details["gender"]}"
end
