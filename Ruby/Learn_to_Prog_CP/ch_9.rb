
puts Time.new

time = Time.new
time2 = time + 60
puts time2

puts Time.mktime(2000, 1, 1)
puts Time.mktime(1987, 5, 21, 11, 59, 42, 54)

puts time2 - time

current_time = Time.new
birth_day = Time.mktime(1984, 5, 21)
puts current_time
puts birth_day
puts current_time - birth_day

billion_sec = 1_000_000_000
sec_in_day = 60 * 60 * 12

# Program to tell you when you turned 1 billion seconds old
sec_in_day = 60 * 60
billion_sec = 1_000_000_000
birth_day = Time.mktime(1984, 5, 21)
the_date = birth_day
puts the_date
the_date += sec_in_day while the_date - birth_day < billion_sec
puts the_date
puts the_date - birth_day

# Determine how old a person is
puts 'Hello, what year were you born in?'
birth_year = gets.to_i
puts 'And, what month?'
birth_month = gets.to_i
puts 'And finally, what day?'
birth_day = gets.to_i

current_time = Time.new
birth_date = Time.mktime(birth_year, birth_month, birth_day)
num_of_sec_alive = current_time - birth_date
num_sec_in_year = 60 * 60 * 24 * 365.24
num_of_years_alive = num_of_sec_alive / num_sec_in_year
num_of_years_alive = num_of_years_alive.to_i
puts 'You have been alive for ' + num_of_years_alive.to_s + ' years.'
puts 'Get ready for ' + num_of_years_alive.to_s + ' spankings!!!'
puts 'SPANK! ' * num_of_years_alive.to_i

colorArray = []
colorHash = {}

colorArray[1] = 'red'
colorArray[2] = 'green'
colorArray[3] = 'blue'
colorHash['string'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
    puts color
end
colorHash.each do |codeType, color|
    puts codeType + ':  ' + color
end

class Integer
    def to_eng
        english = if self == 5
                      'five'
                  else
                      'fifty-five'
                  end
        english
    end
end

puts 5.to_eng
puts 58.to_eng
puts 55.to_eng

class Die
    def roll
        1 + rand(6)
    end
end
dice = [Die.new, Die.new]

dice.each do |die|
    puts die.roll
end

class Die
    def roll
        @numberShowing = 1 + rand(6)
    end

    def showing
        @numberShowing
    end
end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

class Die
    def roll
        @numberShowing = 1 + rand(6)
    end

    def showing
        @numberShowing
    end
end

# Since I'm not going to use this die again,
# I don't need to save it in a variable.
puts Die.new.showing

class Die
    def initialize
          # I'll just roll the die, though we
          # could do something else if we wanted
          # to, like setting the die with 6 showing.
      end

    def cheat
        numberShowing = gets.chomp.to_i
        @numberShowing = numberShowing if numberShowing <= 6
    end

    def roll
        @numberShowing = 1 + rand(6)
    end

    def showing
        @numberShowing
    end
end

puts Die.new.cheat

# Pet baby dragon
class Dragon
    def initialize(name)
        @name = name
        @asleep = false
        @stuffInBelly = 10 # He's full
        @stuffInIntestine = 0 # He doesn't need to go.

        puts @name + ' is born.'
    end

    def feed
        puts 'You feed ' + @name + '.'
        @stuffInBelly = 10
        passageOfTime
    end

    def walk
        puts 'You walk ' + @name + '.'
        @stuffInIntestine = 0
        passageOfTime
    end

    def putToBed
        puts 'You put ' + @name + ' to bed.'
        @asleep = true
        3.times do
            passageOfTime if @asleep
            puts @name + ' snores, filling the room with smoke.' if @asleep
        end
        if @asleep
            @asleep = false
            puts @name + ' wakes up slowly.'
        end
    end

    def toss
        puts 'You toss ' + @name + ' up into the air.'
        puts 'He giggles, which singes your eyebrows.'
        passageOfTime
    end

    def rock
        puts 'You rock ' + @name + ' gently.'
        @asleep = true
        puts 'He briefly dozes off...'
        passageOfTime
        if @asleep
            @asleep = false
            puts '...but wakes when you stop.'
        end
    end

    private

    # "private" means that the methods defined here are
    # methods internal to the object.  (You can feed
    # your dragon, but you can't ask him if he's hungry.)

    def hungry?
        # Method names can end with "?"
        # Usually, we only do this if the method
        # returns true or false, like this:
        @stuffInBelly <= 2
    end


  def poopy?
    @stuffInIntestine >= 8
  end

    def passageOfTime
        if @stuffInBelly > 0
            # Move food from belly to intestine.
            @stuffInBelly -= 1
            @stuffInIntestine += 1
        else # Our dragon is starving!
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + ' is starving! In desperation, he ate YOU!'
            exit # This quits the program.
        end

        if hungry?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + '\'s stomach grumbles...'
        end

        if poopy?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + ' does the potty dance...'
        end
    end
end

pet = Dragon.new 'Copper'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.feed
pet.walk

# OrangeTree class

class OrangeTree
    def initialize
        @ageOfTree = 0
        @heightOfTree = 0
        @numberOfOranges = 0

        puts 'A new orange tree has been planted. Cool right.'
    end

    def height
        puts 'Height of tree is ' + @heightOfTree.to_s + ' feet.' if @ageOfTree < 10
    end

    def oneYearPasses
        if @ageOfTree < 9
            @numberOfOranges = 0
            @ageOfTree += 1
            @heightOfTree += 1
            puts 'Tree is ' + @ageOfTree.to_s + ' years old, now.'
        else
            puts 'Tree is too old to survive. Tree has died.'
            exit
      end
    end

    def CountTheOranges
        if @ageOfTree <= 3
            puts 'Tree is not giving any fruit yet.'
            @numberOfOranges = 0
        else
            @numberOfOranges += 2 if @ageOfTree == 4
            @numberOfOranges += 15 if @ageOfTree > 4 && @ageOfTree < 8
            @numberOfOranges += 20 if @ageOfTree > 7 && @ageOfTree < 10
            puts 'The tree has ' + @numberOfOranges.to_s + ' oranges.'
        end
      end

    def pickAnOrange
        if @numberOfOranges > 0
            @numberOfOranges -= 1
            puts 'There are ' + @numberOfOranges.to_s + ' remaining.'
            puts 'The orange was very delicious!!!'

        else
            puts 'There are no oranges to pick. Sorry buddy!'
        end
    end

end

puts 'Year 0'
tree = OrangeTree.new
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 1'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 2'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 3'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 4'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
puts 'Year 5'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 6'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 7'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 8'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 9'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 10'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
puts 'Year 11'
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.height
tree.CountTheOranges
tree.pickAnOrange


# Dragon Control Command Centre

class Dragon
    def initialize(name)
        @name = name
        @asleep = false
        @stuffInBelly = 10 # He's full
        @stuffInIntestine = 0 # He doesn't need to go.

        puts @name + ' is born.'
    end

    def feed
        puts 'You feed ' + @name + '.'
        @stuffInBelly = 10
        passageOfTime
    end

    def walk
        puts 'You walk ' + @name + '.'
        @stuffInIntestine = 0
        passageOfTime
    end

    def putToBed
        puts 'You put ' + @name + ' to bed.'
        @asleep = true
        3.times do
            passageOfTime if @asleep
            puts @name + ' snores, filling the room with smoke.' if @asleep
        end
        if @asleep
            @asleep = false
            puts @name + ' wakes up slowly.'
        end
    end

    def toss
        puts 'You toss ' + @name + ' up into the air.'
        puts 'He giggles, which singes your eyebrows.'
        passageOfTime
    end

    def rock
        puts 'You rock ' + @name + ' gently.'
        @asleep = true
        puts 'He briefly dozes off...'
        passageOfTime
        if @asleep
            @asleep = false
            puts '...but wakes when you stop.'
        end
    end

    private

    def hungry?
        @stuffInBelly <= 2
    end

    def poopy?
    @stuffInIntestine >= 8
    end

    def passageOfTime
        if @stuffInBelly > 0
            # Move food from belly to intestine.
            @stuffInBelly -= 1
            @stuffInIntestine += 1
        else # Our dragon is starving!
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + ' is starving! In desperation, he ate YOU!'
            exit # This quits the program.
        end

        if hungry?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + '\'s stomach grumbles...'
        end

        if poopy?
          if @asleep
            @asleep = false
            puts 'He wakes up suddenly!'
          end
          puts @name + ' does the potty dance...'
        end
      end
end

name = 'Copper'
pet = Dragon.new name
command = ''
while command != 'exit'
puts 'Please enter a command to control ' + name + '.'
command = gets.chomp
if command == 'feed'
  pet.feed
elsif command == 'walk'
  pet.walk
elsif command == 'putToBed'
  pet.putToBed
elsif command == 'toss'
  pet.toss
elsif command == 'rock'
  pet.rock
elsif command == 'exit'
  exit
else
  puts 'Please enter a valid command.'
end
end
