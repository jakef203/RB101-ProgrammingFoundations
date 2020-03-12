
# def diamond(size)
#   n = 1
#   loop do 
#     break if n > size
#     puts ("*" * n).center(size)
#     n += 2
#   end
  
#   n = size - 2
#   loop do 
#     break if n < 1
#     puts ("*" * n).center(size)
#     n -= 2
#   end
# end    

# ##Their solution, this is overly complex to me
# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

# diamond(49)

# ## This does outline of diamond
# def diamond_outline(size)
#   loop do
#   n = 1
#   loop do 
#     break if n > size
#     star_string = get_star_string_outline(n) 
#     puts star_string.center(size)
#     n += 2
#   end
  
#   n = size - 2
#   loop do 
#     break if n < 1
#     star_string = get_star_string_outline(n) 
#     puts star_string.center(size)
#     n -= 2
#   end
# end  

# def get_star_string_outline(num)
#   if num == 1
#     "*"
#   else
#     num_blanks = num - 2
#     "*" + (" " * num_blanks) + "*"
#   end
# end

# diamond_outline(23)

## Their solution with outline of diamond
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars_line = get_line(number_of_stars)
  puts stars_line.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

def get_line(number)
  number == 1 ? "*" : "*" + (" " * (number - 2)) + "*"
end  

diamond(23)