
require 'pry'

def valid_int?(num)
  num == num.to_i.to_s
end

def valid_float?(num)
  num == num.to_f.to_s || (num[-1] == '0' && num[0..-2] == num.to_f.to_s)
end

def valid_number?(num)
  valid_int?(num) || valid_float?(num)
end

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the Mortgage Loan Calculator!")

loop do
  loan_amount = nil
  loop do
    prompt("Enter the loan amount as an integer or floating point number.")
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    end
    prompt("Invalid.  Please try again.")
  end
  loan_amount = loan_amount.to_f
  
  apr = nil
  loop do
    prompt("Enter the Annual Percentage Rate as an integer or floating point number. Input as <x>%. For example, for 5% APR, '5' should be entered, not '.05'.")
    apr = gets.chomp
    if valid_number?(apr)
      break
    end
    prompt("Invalid.  Please try again.")
  end
  monthly_interest = (apr.to_f / 12) / 100
  binding.pry
  loan_duration_months = nil
  loop do 
    prompt("Enter the loan duration in months (as a whole number).")
    loan_duration_months = gets.chomp
    if valid_int?(loan_duration_months)
      break
    end
    prompt("Invalid.  Please try again.")
  end
  loan_duration_months = loan_duration_months.to_i
  
  monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration_months)))
  
  prompt(format("You're monthly payment is %.2f.  Not too shabby!", monthly_payment)) 
  prompt("Do you want to calculate another loan?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt("Thanks for using the Loan Calculator!")
