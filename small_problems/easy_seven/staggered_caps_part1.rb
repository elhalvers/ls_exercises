=begin
Problem:
Write a method that takes a String as an argument, 
and returns a new String that contains the original value 
using a staggered capitalization scheme 
in which every other character is capitalized, 
and the remaining characters are lowercase. 
Characters that are not letters should not be changed, 
but count as characters when switching between upper and lowercase.

Example:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

DS&A:
input: string
output: string
intermediate: array
Rules:
* It looks like the alternates start with upcase
 - alternating could be based on index position

initial ideas:
start with an array of chars
transform array based on alternating upcase
- using index
return joined array



=end

def staggered_case(string)
  result = []
  #index = 0
  chars = string.chars

#  loop do
#    break if index == chars.size
#    current_char = chars[index]
#    if index.even?
#      result << current_char.upcase
#    else
#      result << current_char.downcase
#    end
#    index += 1
#  end
#  result.join

  chars.each_with_index do |char, index|
    if index.even?
      result << char.upcase
    else
      result << char.downcase
    end
  end
   result.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
