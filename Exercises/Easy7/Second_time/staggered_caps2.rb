
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.


def staggered_case(string)
  
  new_str = ''
  make_upper = true
  string.each_char do |ch|
    if ch =~ /[a-z]/i
      if make_upper
        new_str << ch.upcase
      else
        new_str << ch.downcase
      end
      make_upper = !make_upper
    else
      new_str << ch
    end
  end
  new_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'