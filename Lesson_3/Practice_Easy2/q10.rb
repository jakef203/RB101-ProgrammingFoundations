
def cent(title, string, width, padstr = '')

  
  spacing_on_left_side = (width - title.length) / 2
  spacing_on_right_side = width - title.length - spacing_on_left_side
  offset = title.length + spacing_on_left_side
  
  puts title.length
  puts spacing_on_left_side
  puts spacing_on_right_side
  
  if padstr == ''
    puts title.rjust(offset)
  else
       
        
    
   