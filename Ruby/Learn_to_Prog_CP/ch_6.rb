# Flow control

puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 1 == 1
puts 2 != 1

puts 'cat' < 'dog'

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
puts 'What a lovely name!' if name == 'Chris'

puts 'I am a fortuner-teller.  Tell me your name:'
name = gets.chomp
if name == 'Chris'
    puts 'I see great things in your future.'
else
    puts 'Your future is ... Oh my! Look at the time!'
    puts 'I really have to go, sorry!'
end

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard. And your name is...?'
name = gets.chomp

if name == name.capitalize
    puts 'Please take a seat, ' + name + '.'
else
    puts name + '? You mean ' + name.capitalize + ', right?'
    puts 'Don\'t you even know how to spell your name??'
    reply = gets.chomp

    if reply.casecmp('yes').zero?
        puts 'Hmph! Well, sit down!'
    else
        puts 'GET OUT!!'
    end
end

command = ''
while command != 'bye'
    command = gets.chomp.downcase
    puts command
end
puts 'Come again soon!'

greeting = 'What a lovely name!'
puts 'Hello, what\'s your name?'
name = gets.chomp.capitalize
puts 'Hello, ' + name + '.'
if name == 'Chris'
    puts greeting
else
    puts greeting if name == 'Katy'
end

puts 'Hello, what\'s your name?'
name = gets.chomp.capitalize
puts 'Hello, ' + name + '.'
puts 'What a lovely name!' if name == 'Chris' || name == 'Katy'

iAmChris = true
iAmPurple = false
iLikefood = true
iEatRocks = false

puts (iAmChris && iLikefood)
puts (iLikefood && iEatRocks)
puts (iAmPurple && iLikefood)
puts (iAmPurple && iEatRocks)
puts
puts (iAmChris || iLikefood)
puts (iLikefood || iEatRocks)
puts (iAmPurple || iLikefood)
puts (iAmPurple || iEatRocks)
puts
puts !iAmPurple
puts !iAmChris

# 99 bottles of soda on the wall

bottles = 99

while bottles > 0
    if bottles > 1
        puts
        puts bottles.to_s + ' bottles of soda on the wall, ' + bottles.to_s + ' bottles of soda.'
        bottles -= 1
        puts 'Take one down and pass it around, ' + bottles.to_s + ' bottles of soda on the wall.'
        puts
    end
    next unless bottles == 1
    puts
    puts bottles.to_s + ' bottle of soda on the wall, ' + bottles.to_s + ' bottle of soda.'
    bottles -= 1
    puts 'Take one down and pass it around, no bottles of soda on the wall.'
    puts
end
puts
puts 'No more bottles of soda on the wall, no more bottles of soda.'
puts 'Go to the store and buy some more, 99 bottles of soda on the wall.'
puts

# Deaf Grandma program v1

puts 'Scenario: You just came to visit your dear Grandma.'
word = 'Hello'
while word != 'BYE'
    word = gets.chomp
    puts 'HUH?! SPEAK UP, SONNY!' if word == word.downcase
    if word == word.upcase
        year = 1930 + rand(20)
        puts 'NO, NOT SINCE ' + year.to_s + '!'
    end
end

# Deaf Grandma program v2

puts 'Scenario: You just came to visit your dear Grandma.'
puts 'Say something ...'
words = 'Hello'
while words != 'BYE' && words != ''
    words = gets.chomp
    while words != words.upcase
        puts 'HUH?! SPEAK UP, SONNY!'
        words = gets.chomp
    end
    year = 1930 + rand(20)
    puts 'NO, NOT SINCE ' + year.to_s + '!'
end
if words == ''
    puts 'DID YOU SAY SOMETHING?'
    words = gets.chomp
end

# Deaf Grandma program with three consequtive BYE's.

puts 'Scenario: You just came to visit your dear Grandma.'
puts 'Say something ...'
word1 = ''
word2 = ''
word3 = ''
while word1 != 'BYE' || word2 != 'BYE' || word3 != 'BYE'
    while word1 != 'BYE'
        word1 = gets.chomp
        if word1 == word1.upcase
            year = 1930 + rand(20)
            puts 'NO, NOT SINCE ' + year.to_s + '!'
        else
            puts 'HUH?! SPEAK UP, SONNY!'
        end
        if word1 != 'BYE'
            word2 = ''
            word3 = ''
         end
    end
    while word2 != 'BYE'
        word2 = gets.chomp
        if word2 == word2.upcase
            year = 1930 + rand(20)
            puts 'NO, NOT SINCE ' + year.to_s + '!'
        else
            puts 'HUH?! SPEAK UP, SONNY!'
        end
        if word2 != 'BYE'
            word1 = ''
            word3 = ''
         end
    end
    while word3 != 'BYE'
        word3 = gets.chomp
        if word3 == word3.upcase
            year = 1930 + rand(20)
            puts 'NO, NOT SINCE ' + year.to_s + '!'
        else
            puts 'HUH?! SPEAK UP, SONNY!'
        end
        if word3 != 'BYE'
            word2 = ''
            word1 = ''
         end
    end
end

# Leap Year Project

# Request user to enter a starting year.
puts 'Please enter a starting year.'
# If user enters a non integer.
starting_year = begin
                    Integer(gets)
                rescue
                    false
                end
while starting_year == false
    puts 'Please enter a starting year as a number only.'
    starting_year = begin
                        Integer(gets)
                    rescue
                        false
                    end
end
# If user enters a Integer less than 4 characters long.
while starting_year.to_s.length != 4
    puts 'Please enter a starting year as a 4 digit number only.'
    starting_year = begin
                        Integer(gets)
                    rescue
                        false
                    end
end
# Request user to enter a ending year.
puts 'Please enter a ending year.'
# If user enters a non Integer
ending_year = begin
                  Integer(gets)
              rescue
                  false
              end
while ending_year == false
    puts 'Please enter a ending year as a number only.'
    ending_year = begin
                      Integer(gets)
                  rescue
                      false
                  end
end
# If user enters a Integer less than 4 characters long.
while ending_year.to_s.length != 4
    puts 'Please enter a ending year as a 4 digit number only.'
    ending_year = begin
                      Integer(gets)
                  rescue
                      false
                  end
end
# If user entered the same starting and ending year.
while starting_year.to_i == ending_year.to_i
    puts 'The starting year and the ending year are the same.'
    puts 'Please enter a different ending year.'
    ending_year = begin
                      Integer(gets)
                  rescue
                      false
                  end
end
# If user enters a ending year smaller than a starting year.
while starting_year.to_i > ending_year.to_i
    puts 'The ending year is before your starting year.'
    puts 'Please enter a different ending year.'
    ending_year = begin
                      Integer(gets)
                  rescue
                      false
                  end
end

puts 'Your starting year is ' + starting_year.to_s + '.'
puts 'Your ending year is ' + ending_year.to_s + '.'

puts 'Leap years between ' + starting_year.to_s + ' and ' + ending_year.to_s + ' are:'

# When starting year is not a leap year
if starting_year.to_i % 4 != 0
    while starting_year.to_i % 4 != 0 && starting_year.to_i < ending_year.to_i
        starting_year = starting_year.to_i + 1
        puts starting_year
    end
end

# When starting_year is a leap year
if starting_year.to_i % 4 == 0
    if starting_year.to_i % 100 == 0 && starting_year.to_i % 400 != 0
        starting_year = starting_year.to_i + 4
   end
    puts starting_year
    while starting_year.to_i % 4 == 0 && starting_year.to_i < ending_year.to_i
        starting_year = starting_year.to_i + 4
        puts starting_year if starting_year.to_i < ending_year.to_i
        if (starting_year.to_i == ending_year.to_i && ending_year.to_i % 100 != 0) || (starting_year.to_i == ending_year.to_i && ending_year.to_i % 400 == 0)
            puts starting_year
        end
  end
end

# Method 2 for leap year program
while starting_year._toi <= ending_year.to_i
    if starting_year.to_i % 400 == 0
        puts starting_year
    elsif starting_year.to_i % 100 == 0
    elsif starting_year.to_i % 4 == 0
        puts starting_year
    end

    starting_year = starting_year.to_i + 1

end
