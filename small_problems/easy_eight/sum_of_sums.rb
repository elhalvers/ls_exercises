=begin
Problem:
Write a method that takes an Array of numbers and then returns the sum of the sums
of each leading subsequence for that Array.
You may assume that the array always contains at least one number.

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

DS&A:
input: array of nums
output: integer

ideas:
its basically arr[0] + arr[0] + arr[1], etc..

so some kind of iteration over array
maybe a slice
like arr[0] +
arr[0..1] +
arr[0..2]
start with a sum = 0 var
use a loop method
 - 

=end

def sum_of_sums(arr)
  sum = 0
  slice_end = 0

  arr.size.times do
    sum += arr[0..slice_end].sum
    slice_end += 1
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
