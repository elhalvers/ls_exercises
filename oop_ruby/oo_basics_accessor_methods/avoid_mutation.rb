=begin
Problem:
The following code is flawed. It currently allows @name
to be modified from outside the method via a destructive method call.
Fix the code so that it returns a copy of @name instead of a reference to it.

=end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    returned_name = @name.dup
    returned_name
  end
end



person1 = Person.new('James')
person1.name.reverse!
puts person1.name
