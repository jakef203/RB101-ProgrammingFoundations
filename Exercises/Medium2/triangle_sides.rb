
def triangle(s1, s2, s3)
  a, b, c = [s1, s2, s3].sort
  if a < 1 || b < 1 || c < 1
    return :invalid
  end
  if a == b && a == c
    :equilateral
  elsif (a == b || b == c) && (a + b > c)
    :isosceles
  elsif (a != b && b != c) && (a + b > c)
    :scalene
  else
    :invalid
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid

## Their solution
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end