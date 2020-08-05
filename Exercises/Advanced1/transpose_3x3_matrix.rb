
def display_matrix(matrix)
  formatted = matrix.map { |row| row.join(' ') }
  puts formatted 
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  transposed_matrix = []
  # puts matrix.size 
  # puts matrix[0].size
  0.upto(2) do |col|
    new_row = [] 
    0.upto(2) do |row|
      new_row << matrix[row][col]
    end
    transposed_matrix << new_row 
  end
  transposed_matrix
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# display_matrix(matrix)
# puts ""

# display_matrix(transformed_matrix)