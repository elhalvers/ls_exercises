=begin
Problem:
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first,
then all substrings that start at position 1, and so on.
Since multiple substrings will occur at each position,
the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
  ]

def leading_substrings(str)
  result = []
  end_slice = 0
    str.size.times do
      result << str[0..end_slice]
      end_slice += 1
    end
  result
end

  DS&A:
  Borrowing on the example of my leading_substrings method,
  use a loop instead of Integer#times
  will need to move the starting slice as well
  so, nested loop?
  outer loop moves the start slice
  and inner loop moves the end slice

  the challenge is,
  the first slice for a single letter
  both begin and end_slice has to be the same

=end

def substrings(str)
  result = []
  begin_slice = 0
  end_slice = 0
  multi = str.size

  loop do
    break if multi == 0
    multi.times do
      result << str[begin_slice..end_slice]
      end_slice += 1
    end
    begin_slice += 1
    end_slice = begin_slice
    multi -= 1
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
  ]
