
def leap_year?(year)
  (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
end

MONTHS_31_DAYS = [1, 3, 5, 7, 8, 10, 12]
MONTHS_30_DAYS = [4, 6, 9, 11]

def months_5_fridays(year)
  months_5_fridays_count = 0
  1.upto(12) do |month|
    if MONTHS_31_DAYS.include?(month) 
      if ([1, 2, 3].any? do |day|
            t = Time.new(year, month, day)
            t.friday?
          end)
        months_5_fridays_count += 1
      end
    elsif MONTHS_30_DAYS.include?(month)
      if ([1, 2].any? do |day|
            t = Time.new(year, month, day)
            t.friday?
          end)
        months_5_fridays_count += 1
      end
    elsif leap_year?(year) && month == 2
      t = Time.new(year, month, 1)
      if t.friday?
        months_5_fridays_count += 1
      end
    end
  end
  months_5_fridays_count
end

1985.upto(2020) do |year|
  puts "year: #{year}, fridays: #{months_5_fridays(year)}"
end

# puts months_5_fridays(2000)
# puts months_5_fridays(2015)
# puts months_5_fridays(2020)
# puts months_5_fridays(2001)
# puts months_5_fridays(2012)
# puts months_5_fridays(2013)


