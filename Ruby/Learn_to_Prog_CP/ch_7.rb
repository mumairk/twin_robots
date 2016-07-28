
[]
[5]
['Hello','Goodbye']
flavor = 'vanilla'
[89.9, flavor, [true, false]]

names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'

3.times do
  puts 'Hip-Hip-Hooray!'
end

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'

200.times do
  puts []
end

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'
favorites.push 'farts in the wind'

puts favorites[0]
puts favorites[1]
puts favorites[2]
puts favorites[3]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length


# Program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line),
# which then repeats the words back to us in alphabetical order.
puts 'Please type in a word.'
words = []
sorted_words = []
word = 'word'
while (word != '')
    word = gets.chomp
    words.push word
  end
#puts words.sort

sorted_word = []

def mySort(words, sorted_word)
    if words.length <= 0
        return
    end
    x = 0
    y = 0
    while y < words.length
        if words[x] < words[y]
            y += 1
        elsif words[x] > words[y]
            x = y
            y += 1
        else
            y += 1
        end
    end
    sorted_word.push(words[x])
    words.delete(words[x])
    mySort(words, sorted_word)
end
mySort(words, sorted_word)

puts sorted_word
puts
puts words


#Table of Contents program via Arrays
toc = ['Table of Contents','Chapter 1:','Chapter 2:','Chapter 3:','Numbers','Letters','Variables','page 1','page 72','page 118']
puts
lineWidth = 60
puts (toc[0].center(lineWidth/2))
puts toc[1].ljust(lineWidth/6) + toc[4].ljust(lineWidth/4) + toc[7].rjust(lineWidth/4)
puts toc[2].ljust(lineWidth/6) + toc[5].ljust(lineWidth/4) + toc[8].rjust(lineWidth/4)
puts toc[3].ljust(lineWidth/6) + toc[6].ljust(lineWidth/4) + toc[9].rjust(lineWidth/4)
