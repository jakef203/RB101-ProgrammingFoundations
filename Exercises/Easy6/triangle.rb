#My original solution
# def triangle(num)
#   stars = ''
#   num.times do |i|
#     stars << '*'
#     puts stars.rjust(num)
#   end
# end

# #Something fun.. teehee
# def triangle(num)
#   num.times do |outer|
#     stars = ''
#     (outer+1).times do |i|
#       stars << '*'
#       puts stars.rjust(num)
#     end
#   end
# end

## Their solution
def triangle_bottom_left(num, length = num)
  offset = length - num
  stars = 1
  spaces = num - 1
  
  num.times do |n|
    puts (' ' * offset) + ('*' * stars) + (' ' * spaces)
    stars += 1
    spaces -= 1
  end
end

def triangle_bottom_right(num, length = num)
  offset = length - num
  stars = 1  
  spaces = num - 1

  
  num.times do |n|
    puts (' ' * offset) + (' ' * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
end

def triangle_top_left(num, length = num)
  offset = length - num
  stars = num
  spaces = 0
  
  num.times do |n|
    puts (' ' * offset) + ('*' * stars) + (' ' * spaces)
    stars -= 1
    spaces += 1
  end
end

def triangle_top_right(num, length = num)
  offset = length - num
  stars = num
  spaces = 0
  
  num.times do |n|
    puts (' ' * offset) + (' ' * spaces) + ('*' * stars)
    stars -= 1
    spaces += 1
  end 
end

def hill_and_valleys(num)
  
  num.times do |n|
    triangle_bottom_right(n+1, num)
    triangle_top_right(n+1, num)
  end
end
# hill_and_valleys(20)
triangle(10)