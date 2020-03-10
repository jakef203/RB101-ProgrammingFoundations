
def greetings(name_array, job_hash)

  puts "Hello #{name_array.join(' ')}, I see you're a " \
  "#{job_hash[:title]} #{job_hash[:occupation]}."

end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })