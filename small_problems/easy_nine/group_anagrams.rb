=begin
Problem:
Given the array...
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams.
Anagrams are words that have the same exact letters in them but in a different order.
Your output should look something like this:

Expected output:
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

dsa:
input: single array
output: multiple arrays

mental model:
nested loop
you would have to compare each string with every other string
and group those strings into an array that have the exact same letters
and only those letters.

You could start with the first word (index 0) as a variable
and iterate through the rest of the array (slice) arr[1..]
 comparing each word with the given word
  during the comparison
   you would have to check each character to see if it is included in var word
   and if true, append to an empty arr var.
   and then print that arr at the end of the iteration,
   and then do the same with the next word.
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def anagram_finder(arr)
  index = 0
  results = []

  loop do
    break if index == arr.size 
    base_word = arr[index]
    result = []

    arr.each do |word|
      if is_anagram?(base_word, word)
        result << word
      end
    end
    results << result
    index += 1
  end
  results.uniq!.each { |arr| p arr }
end

  def is_anagram?(word1, word2)
    word1_arr = word1.chars
    word2_arr = word2.chars

    word2_arr.all? {|char| word1_arr.include?(char)}
  end

  anagram_finder(words)




 
     
  

#anagram_finder(words)



