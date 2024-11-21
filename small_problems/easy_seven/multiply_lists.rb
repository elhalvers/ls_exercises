=begin
Problem:
Write a method that takes two Array arguments 
in which each Array contains a list of numbers,
and returns a new Array that contains the product of each pair of numbers 
from the arguments that have the same index.
You may assume that the arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

DS&A:
- use a loop method and an empty array
 on each iteration append the product of each indexed member

=end

def multiply_list(arr1, arr2)
  result = []
  index = 0

  loop do
    break if index == arr1.size
    result << arr1[index] * arr2[index]
    index += 1
  end
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
