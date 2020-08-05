

def rotate90(matrix, num_rotations = 1)
  # new_matrix = [] 
  num_rotations.times do 
    new_matrix = []
    total_rows = matrix.size 
    total_columns = matrix[0].size 
    0.upto(total_columns - 1) do |column|
      new_row = []
      (total_rows - 1).downto(0) do |row|
        new_row << matrix[row][column]
      end
      new_matrix << new_row 
    end
    matrix = new_matrix
  end
  matrix
end
 
## Their solution
# def rotate90(matrix)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map do |row_index|
#       matrix[row_index][column_index]
#     end
#     result << new_row.reverse
#   end
#   result
# end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
new_matrix4 = rotate90(matrix1, 2)
new_matrix5 = rotate90(matrix1, 3)
new_matrix6 = rotate90(matrix2, 2)


p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
p new_matrix4 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
p new_matrix5 == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]
p new_matrix6 == [[8, 0, 1, 5], [2, 4, 7, 3]]


