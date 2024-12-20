=begin
Problem:
Write a method that returns the next to last word in the String passed to it as an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain at least two words.

Examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

DS&A:
convert string to arr of words
use Array#at(-2)
=end

def penultimate(str)
  words = str.split
  words.at(-2)
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
