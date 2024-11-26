=begin
Write a method that returns a list of all substings of a string that
start at the beginning of the original string. The return value should
be arrange in order from shortest to longest substring.

Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

DS&A:
input: string
output: array

previous method worked ok
using a moving slice

start with an empty arr var

loop over the string using a moving slice


=end

def leading_substrings(str)
  result = []
  end_slice = 0
    str.size.times do
      result << str[0..end_slice]
      end_slice += 1
    end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
