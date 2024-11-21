class Person
  attr_reader :phone_number

  def initialize(number)
    @phone_number = number
  end
end

person1 = Person.new(123456789)
puts person1.phone_number

person1.phone_number = 987654321
puts person1.phone_number
