=begin
Problem:
Modify the method from the previous exercise so it ignores 
non-alphabetic characters when determining whether it should 
uppercase or lowercase each letter.
The non-alphabetic characters should still be included
in the return value; they just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

DS&A:
input: string
output: string
intermediate: array
Rules:
* It looks like the alternates start with upcase

use a counter initialized to 0
iterate over chars array
only update the counter if char is alphabetic
if counter is even => upcase
else => downcase

=end

def staggered_case(string)
  transformed = []
  counter = 0
  chars = string.chars

  chars.each do |char|
    if counter.even?
      transformed << char.upcase
    else
      transformed << char.downcase
    end
    counter += 1 if char.match(/[a-zA-Z]/)
  end
  transformed.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
