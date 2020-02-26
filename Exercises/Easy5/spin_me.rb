
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = "hello world"
puts str.object_id # 47435609148580

puts spin_me(str) # "olleh dlrow"
puts spin_me(str).object_id # 47435609148360


def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr
puts arr.object_id # 47264354160220
puts spin_me(arr)
puts spin_me(arr).object_id