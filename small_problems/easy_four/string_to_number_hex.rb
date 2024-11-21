=begin
Problem:
Write a method that takes a String of digits, 
and returns the appropriate number as an integer. 
You may not use any of these methods: String#to_i, Integer(), etc...

Examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

DS:
input: string
output: integer
intermediate:
hash to store conversion values

A:
Mental Model,
- Set up a constant for a hash converting string_nums to nums
  - string as key, value as equivalent integer.

- initiate a local variable `number` to 0 inside the method
- iterate over the characters in the input string, 

for each character,
 - return the hash value for the associated character key

 tricky part:
reassign number to some expression 
that handles the position of the number (1000, 100, 10, 1...)



return number

=end

CONVERSION_HASH = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
  'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
}

def string_to_integer(num_str, base)
  digits = num_str.downcase.chars.map { |char| CONVERSION_HASH[char] }
  number = 0
  
  digits.each { |digit| number = base * number + digit }

  number
end

p string_to_integer('4321', 10) == 4321
p string_to_integer('570', 10) == 570
p string_to_integer('4D9f', 16) == 19871
p string_to_integer('11111111', 2) == 255
