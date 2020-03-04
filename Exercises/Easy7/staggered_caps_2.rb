
def staggered_case(string)
  need_upper = true
  new_string = ''

  string.chars.each do |ch|
    if ch =~ /[a-z]/i #/i flag ignores case
      if need_upper
        new_string << ch.upcase
      else
        new_string << ch.downcase
      end
      need_upper = !need_upper
    else
      new_string << ch
    end
  end
  new_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'