
def display_matrix(matrix)
  formatted = matrix.map { |row| row.join(' ') }
  puts formatted 
end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
## My solution
def transpose(matrix)
  number_of_rows = matrix.size 
  number_of_columns = matrix[0].size

  transposed_matrix = []
  number_of_columns.times do |col|
    new_row = [] 
    number_of_rows.times do |row|
      new_row << matrix[row][col]
    end
    transposed_matrix << new_row 
  end
  transposed_matrix 
end

## Their solution
# def transpose(matrix)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]


# display_matrix(matrix)
# puts ""

# display_matrix(transformed_matrix)