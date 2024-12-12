=begin
Problem:
A double number is a number with an even number of digits
whose left-side digits are exactly the same as its right-side digits.
For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument,
unless the argument is a double number; double numbers should be returned as-is.

Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

dsa:
return num if double_num?
 - convert num to string
   - string size is even
   get halfway index
    (string size divided by 2) - 1
    compare first_half slice equals
    with second_half slice

 - 
else return num * 2

=end

def twice(num)
  if is_double_num?(num)
    return num
  else
    return (num * 2)
  end
end

def is_double_num?(num)
  str_num = num.to_s
  if str_num.size.odd?
    return false
  end

  half_idx = (str_num.size / 2) - 1
  str_num[0..half_idx] == str_num[half_idx + 1..]
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
