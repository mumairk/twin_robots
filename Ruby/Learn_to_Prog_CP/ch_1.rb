puts 1+2

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 1+2
puts 2*3
puts 5-8
puts 9/2

puts 5 * (12 - 8) + -15
puts 98 + (59872 / (13 * 8)) * -52


# Program to Calculate how many hours are in a year
num_days_in_year = 365.2422
num_hr_in_day = 24

num_of_hr_in_a_year = num_days_in_year * num_hr_in_day
puts num_of_hr_in_a_year

#Program to calculate number of minutes in a decade
num_year_in_a_decade = 10
num_min_in_a_hour = 60

num_of_min_in_a_decade = num_year_in_a_decade * num_of_hr_in_a_year * num_min_in_a_hour
puts num_of_min_in_a_decade

#Program to determin seconds of my age
num_of_sec_in_a_hour = num_min_in_a_hour * 60
num_of_sec_in_a_year = num_of_sec_in_a_hour * num_of_hr_in_a_year
num_of_years_of_my_age = 32 + (35/num_days_in_year)
num_of_sec_of_my_age = num_of_years_of_my_age * num_of_sec_in_a_year
puts num_of_sec_of_my_age

#If I am 1246 million seconds old, how old am I?
age_in_sec = 1246 * 1000000
age_in_years = age_in_sec / num_of_sec_in_a_year
puts age_in_years
