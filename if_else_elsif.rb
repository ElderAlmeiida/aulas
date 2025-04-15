
# If and Else 
day = 'Sunday'

if day === 'sunday'
  lunch = 'special'
else 
  lunch = 'its not special '
end 
puts "Lunch is #{lunch} today" 

# Elsif 

day = 'Friday'
status = 'vaction'
if day == 'Sunday'
  lunch = 'special'
elsif day == 'Holiday' && status == 'vacation'
 lunch = 'later'
else
  lunch = 'normal'
end 
puts "Lunch is #{lunch} today"
