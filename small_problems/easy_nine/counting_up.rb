=begin
Problem:
Write a method that takes an integer argument,
and returns an Array of all integers,
in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

dsa:
input: int
output: array

sounds like a range (1..num)
iterate over range and add each
num to a new empty array

=end

def sequence(num)
  result = []
  #(1..num).each { |number| result << number }
  1.upto(num) { |n| result << n }
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
