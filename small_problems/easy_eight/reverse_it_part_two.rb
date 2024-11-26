=begin
Problem:
Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present.

Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

dsa:
* returned string keeps the word order,
  just reverses the letters in the word when size > 5

  split string => array
  iterate over the array (transform)
  if size of word > 5
  reverse letters of the string
  convert transformed array back to string



=end

def reverse_words(str)
  word_arr = str.split
  transformed = word_arr.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end
  transformed.join(' ')
end

puts reverse_words('Professional')           == 'lanoisseforP'
puts reverse_words('Walk around the block')  == 'Walk dnuora the kcolb'
puts reverse_words('Launch School')          == 'hcnuaL loohcS'
