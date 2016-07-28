var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

puts 20
puts 20.to_s
puts '20'

puts gets

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.   :-)'

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.   :-)'

# A program which asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp
puts 'And your middle name?'
middle_name = gets.chomp
puts 'And your last name?'
last_name = gets.chomp
puts 'So your full name is ' + first_name + ' ' + middle_name + ' ' + last_name + '!'
puts 'It\'s nice to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + '.'

# Write a program which asks for a person's favorite number. Have your program add one to the number, then suggest the result as a bigger and better favorite number.
puts 'Hello there, what is your favorite number?'
begin
favorite_number = gets.chomp
favorite_number = Integer(favorite_number)
rescue
  puts 'Please enter a number only.'
  retry
end
new_number = favorite_number + 1
puts 'Might I suggest a bigger and better favorite number of ' + new_number.to_s + '.'
