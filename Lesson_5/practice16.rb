
def generate_uuid()
  characters = %w(a b c d e f 0 1 2 3 4 5 6 7 8 9)
  uuid_string = ''
  sections = [8, 4, 4, 4, 12]
  
  sections.each_with_index do |section, index|
    section.times do |n|
      uuid_string << characters.sample
    end
    uuid_string << '-' unless index == sections.size - 1
  end
  
  uuid_string
end

p generate_uuid()
      