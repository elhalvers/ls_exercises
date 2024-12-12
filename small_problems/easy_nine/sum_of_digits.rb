=begin
problem
Write a method that takes one argument, a positive integer, 
and returns the sum of its digits.

Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

dsa
easy way -> digits.sum
otherwise,
convert num to string
string to array
sum array
or iterate over arr and
add each num to a result var set to 0

=end

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
