
def get_grades(score1, score2, score3)
  avg = (score1 + score2 + score3).to_f / 3
  case avg
  when 0...60  then 'F'
  when 60...70 then 'D'
  when 70...80 then 'C'
  when 80...90 then 'B'
  when 90..    then 'A'
  end
end

puts get_grades(95, 90, 93) == "A"
puts get_grades(50, 50, 95) == "D"
puts get_grades(60, 60, 60) == "D"
puts get_grades(102, 105, 103) == "A"