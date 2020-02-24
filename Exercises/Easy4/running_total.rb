
def running_total(array)
  run_total = []
  array.each_with_index do |val, idx|
    if idx == 0
      run_total << val
    else
      run_total << (run_total[idx-1] + val)
    end
  run_total
  end
end

# puts running_total([2, 5, 13]) == [2, 7, 20]
# puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# puts running_total([3]) == [3]
# puts running_total([]) == []

p running_total([2, 5, 13]) 
p running_total([14, 11, 7, 15, 20]) 
p running_total([3]) 
p running_total([]) 