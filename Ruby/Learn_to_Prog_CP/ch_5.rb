iCantBelieveIMadeAVariableNameTHisLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameTHisLongJustToPointToA3
# self.puts iCantBelieveIMadeAVariableNameTHisLongJustToPointToA3

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'

# Program that asks for your first, middle, and last name and counts the number of characters and adds them.
puts 'What is you first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
name_legth = first_name.length + middle_name.length + last_name.length
puts 'Did you know that there are ' + name_legth.to_s + ' characters in your name, ' + first_name + ' ' + middle_name + ' ' + last_name + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 50
puts('Old Mother Hubbard'.center(lineWidth))
puts('Sat in her cupboard'.center(lineWidth))
puts('Eating her curds an whey,'.center(lineWidth))
puts('When along came a spider'.center(lineWidth))
puts('Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dow away'.center(lineWidth))

lineWidth = 40
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

#Angry boss Program
puts 'WHAT DO YOU WANT NUM-SKULL?'
answer = gets.chomp.upcase
puts 'WHADDAYA MEAN "' + answer + '."?!?  YOU\'RE FIRED!!'

#Table of contents Program
va1 = 'Numbers'
va2 = 'Letters'
va3 = 'Variables'
pva1 = 'page 1'
pva2 = 'page 72'
pva3 = 'page 118'
ch1 = 'Chapter 1:'
ch2 = 'Chapter 2:'
ch3 = 'Chapter 3:'
lineWidth = 60
puts ('Table of Contents'.center(lineWidth/2))
puts ch1.ljust(lineWidth/6) + va1.ljust(lineWidth/4) + pva1.rjust(lineWidth/4)
puts ch2.ljust(lineWidth/6) + va2.ljust(lineWidth/4) + pva2.rjust(lineWidth/4)
puts ch3.ljust(lineWidth/6) + va3.ljust(lineWidth/4) + pva3.rjust(lineWidth/4)


puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts ((5-2).abs)
puts ((2-5).abs)

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(9999999999999999999999999999999999999999999999999999999999999999999999))

puts ('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts ('but you can never trust a weatherman.')


srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 0
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1+Math.sqrt(5))/2)
