=begin
def sayMoo
  puts 'mooooooo...'
end

sayMoo
sayMoo
puts 'coin-coin'
sayMoo
sayMoo

def sayMoos numberofMoos
  puts 'mooooooo...'*numberofMoos
  'yellow submarine'
end

sayMoos 5
puts 'bahh-bahhh'
sayMoos 2
sayMoos 0

def doubleThis num
  numTimes2 = num*2
  puts num.to_s + ' doubled is ' + numTimes2.to_s
end

doubleThis 55

def littlePest var
  var = nil
  puts 'HAHA!  I ruined your variable!'
end

var = 'You can\'t even touch my variable!'
littlePest var
puts var
puts sayMoo

x = sayMoos 2
puts x


def ask question
  goodAnswer = false
while (not goodAnswer)
  puts question
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
    if answer == 'yes'
      answer = true
    else
      answer = false
    end
  else
    puts 'Please answer "yes" or "no".'
  end
end
answer
end

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wetsBed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like eating tamales?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts wetsBed


def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left  = number
  write = left/(10**12)          # How many hundreds left to write out?

  left  = left - write*(10**12)  # Subtract off those hundreds.

  if write > 0
    trillions  = englishNumber write
    numString = numString + trillions + ' trillion'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' and '

    end
  end
  write = left/(10**9)          # How many hundreds left to write out?

  left  = left - write*(10**9)  # Subtract off those hundreds.

  if write > 0
    billions  = englishNumber write
    numString = numString + billions + ' billion'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString +  ' and '

    end
  end

  write = left/(10**6)         # How many hundreds left to write out?

  left  = left - write*(10**6)  # Subtract off those hundreds.

  if write > 0
    millions  = englishNumber write
    numString = numString + millions + ' million'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString +  ' and '

    end
  end

  write = left/(10**3)         # How many hundreds left to write out?

  left  = left - write*(10**3)  # Subtract off those hundreds.

  if write > 0
    thousands  = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString +  ' and '

    end
  end

  write = left/100          # How many hundreds left to write out?

  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString +  ' and '

    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString +  ' and '
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber(1972)
=end


# Program to write 99 bottles of soda on the wall in English Numbers

def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number

  write = left/(10**3)         # How many hundreds left to write out?

  left  = left - write*(10**3)  # Subtract off those hundreds.

  if write > 0
    thousands  = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString +  ' '

    end
  end

  write = left/100          # How many hundreds left to write out?

  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString +  ' and '

    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString +  ' '
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber(1972)

# 99 bottles of soda on the wall

bottles = 9999
bottles_num = englishNumber(bottles)
while bottles > 0
    if bottles > 1
        puts
        puts englishNumber(bottles) + ' bottles of soda on the wall, ' + englishNumber(bottles) + ' bottles of soda.'
        bottles -= 1
        puts 'Take one down and pass it around, ' + englishNumber(bottles) + ' bottles of soda on the wall.'
        puts
    end
    next unless bottles == 1
    puts
    puts englishNumber(bottles) + ' bottle of soda on the wall, ' + englishNumber(bottles) + ' bottle of soda.'
    bottles -= 1
    puts 'Take one down and pass it around, no bottles of soda on the wall.'
    puts
end
puts
puts 'No more bottles of soda on the wall, no more bottles of soda.'
puts 'Go to the store and buy some more, ' + bottles_num +' bottles of soda on the wall.'
puts
