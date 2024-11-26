=begin
Problem:
Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it does backwards.
The return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case;
that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are.
In addition, assume that single characters are not palindromes.

Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
] 

DS&A:
Use my 'substrings' method
create a helper method is_palindrome?
 comparing str to str.reverse
 with a transform method

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

def palindromes(str)
  all_substrings = substrings(str)
  palindromes = all_substrings.select { |str| is_palindrome?(str) }
  palindromes
end

def is_palindrome?(str)
  str == str.reverse && str.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
] 

