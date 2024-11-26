=begin
Problem:
Write a method that takes a string,
and returns a new string in which every character is doubled.

Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

DS&A:
returns a new string so not mutating the argument
iterating over each character
and appending character to itself on each iteration?
or loop like add to result twice?

=end

def repeater(str)
  result = ""
  str.each_char do |char|
    2.times { result << char }
  end
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
