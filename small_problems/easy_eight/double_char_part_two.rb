=begin
Problem:
Write a method that takes a string,
and returns a new string in which every consonant character is doubled.
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

DS&A:
start with an empty 'result' string
iterate over string characters
for each char,
  append to result twice if consonant
  or once otherwise
  regex


=end

def double_consonants(str)
  result = ''
  str.each_char do |char|
    if char.match?(/[^aeiouAEIOU]/) && char.match?(/[a-zA-Z]/)
      2.times { result << char }
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
