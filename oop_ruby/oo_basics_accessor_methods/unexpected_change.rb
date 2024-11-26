=begin
Problem:
Modify the following code to accept a string containing a first and last name. 
The name should be split into two instance variables in the setter method,
then joined in the getter method to form a full name.

=end

class Person
  attr_accessor :name

  def name=(name_as_string)
    name_arr = name_as_string.split
    @first_name = name_arr.first
    @last_name = name_arr.last
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name
