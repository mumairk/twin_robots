=begin
toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call

doYouLike = Proc.new do |aGoodThing|
  puts 'I *really* like ' +aGoodThing+'!'
end

doYouLike.call 'chocolate'
doYouLike.call 'ruby'
doYouLike.call ''

def doSelfImportantly someProc
  puts 'Everybody just HOLD ON! I have something to do...'
  someProc.call
  puts 'Ok everyone, I\'m done. Go on with what you were doing.'
end

sayHello = Proc.new do
  puts 'hello'
end

sayGoodbye = Proc.new do
  puts 'goodbye'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye


def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance


def doUntilFalse firstInput, someProc
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop
    array.push lastNumber*lastNumber
    array.push lastNumber - 1
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5],buildArrayOfSquares).inspect
puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!',alwaysFalse)


def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x*x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(4)
puts squareThenDouble.call(3)


class Array
  def eachEven(&wasABlock_nowAProc)
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit| puts 'Yum! I just love ' +fruit+ ' pies, don\'t you?'
end

[1,2,3,4,5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end


def profile descriptionOfBlock, &block
  startTime = Time.now
  block.call
  duration = Time.now - startTime
  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0
   1000000.times do
     number = number + 1
   end
end


# Write a GrandfatherClock Method


def clock someProc

  current_hour = Time.new.hour
  if current_hour == 0
    current_hour = current_hour + 12
  elsif current_hour > 12
  current_hour = current_hour - 12
end

current_hour.to_i.times do
  someProc.call
end
end

dongProc = Proc.new do
  puts 'DONG!'
end

clock dongProc



#Program logger

def log descriptionOfBlock, &block
  puts 'Beginning "' + descriptionOfBlock + '"...'
  blockReturned = block.call
  puts '..."' + descriptionOfBlock + '" finished,returning: '+ blockReturned.to_s
end

log 'outer block' do
log 'some little block' do 5
end

log 'yet another block' do 'I like Thai food!'
end
false

end
=end

$nesting_depth = 0
$space = ' '

def log descriptionOfBlock, &block
  puts $space*$nesting_depth + 'Beginning "' + descriptionOfBlock + '"...'
  $nesting_depth = $nesting_depth + 1
  blockReturned = block.call
  $nesting_depth = $nesting_depth - 1
  puts $space*$nesting_depth + '..."' + descriptionOfBlock + '" finished,returning: '+ blockReturned.to_s

end

log 'outer block' do
log 'some little block' do
log 'teeny-tiny block' do 'lots of love'
end
42
end

log 'yet another block' do 'I like Indian food!'
end
true

end
