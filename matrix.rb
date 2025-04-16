matrix = Array.new(4) { Array.new(4) }
# Initialize a 4x4 matrix with zeros
# Fill the matrix with values
for i in 0..3
  for j in 0..3
    matrix[i][j] = i + j
  end
end
matrix.each do |row|
 

  puts row.join(" ")
end
# Output the matrix
 # Print each row of the matrix
  # Use join to convert the array to a string
  # and separate elements with a space
  # Print the row
  # Use join to convert the array to a string
  # and separate elements with a space