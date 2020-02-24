
# def oddities(array)
#   count = 0
#   arr = []
#   while array.size > 0
#     arr << array.shift if count.even?
#     array.shift if count.odd?
#     count += 1
#   end
#   arr
# end

def oddities(array)
  array.select.each_with_index { |val, idx| (idx + 1).odd? }
end


# def oddities(array) 
#   count = 1
#   new_array = []
#   array.each do |i|
#     new_array << i if count.odd?
#     count += 1
#   end
#   new_array
# end

## Their solution

# def oddities(array)
#   index = 1
#   arr = []
#   while index < array.size
#     arr << array[index]
#     index += 1
#   end
#   arr
# end

# ## For even elements
# def oddities(array)
#   index = 1
#   arr = []
#   while index < array.size
#     arr << array[index]
#     index += 2
#   end
#   arr
# end



puts oddities([2, 3, 4, 5, 6])
puts oddities([1, 2, 3, 4, 5, 6])
puts oddities(['abc', 'def']) 
p oddities([123]) 
p oddities([]) 