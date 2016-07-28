class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

Umair = Student.new
Umair.first_name = "Umair"
Umair.introduction('Katrina')
puts "Umair's favorite number is #{Umair.favorite_number}. "
