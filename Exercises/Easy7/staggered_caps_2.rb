
# def staggered_case(string)
#   need_upper = true
#   new_string = ''

#   string.each_char do |ch|
#     if ch =~ /[a-z]/i #/i flag ignores case
#       if need_upper
#         new_string << ch.upcase
#       else
#         new_string << ch.downcase
#       end
#       need_upper = !need_upper
#     else
#       new_string << ch
#     end
#   end
#   new_string
# end

# puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# puts staggered_case('ALL CAPS') == 'AlL cApS'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

##Bonus, add ability for two options
#Option 1 true- non-alphabetic characters are counted when determining upper/lowercase states
#Option 1 false- non-alphabetic characters are NOT counted when determining upper/lowercase state
#Option 2 true - Start with uppercase alpha, Option2 false start with lowercase alpha
def staggered_case_with_option(string, option1 = true, option2 = true)
  need_upper = option2
  new_string = ''
  string.each_char do |ch|
    if ch =~ /[a-z]/i #/i flag ignores case
      if need_upper
        new_string << ch.upcase
      else
        new_string << ch.downcase
      end
      need_upper = !need_upper
    else
      new_string << ch
      need_upper = !need_upper if option1 == true
    end
  end
  new_string
end

##Option 1
puts staggered_case_with_option('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case_with_option('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case_with_option('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts staggered_case_with_option('I Love Launch School!', true, false) 
puts staggered_case_with_option('ALL_CAPS', true, false) 
puts staggered_case_with_option('ignore 77 the 444 numbers', true, false) 
##Option 2
puts staggered_case_with_option('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
puts staggered_case_with_option('ALL CAPS', false) == 'AlL cApS'
puts staggered_case_with_option('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 nUmBeRs'
puts staggered_case_with_option('I Love Launch School!', false, false) 
puts staggered_case_with_option('ALL CAPS', false, false) 
puts staggered_case_with_option('ignore 77 the 444 numbers', false, false) 