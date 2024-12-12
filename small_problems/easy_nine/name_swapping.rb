=begin
Problem:
Write a method that takes a first name, a space,
and a last name passed as a single String argument,
and returns a string that contains the last name,
a comma, a space, and the first name.

Examples
swap_name('Joe Roberts') == 'Roberts, Joe'

dsa
split input string into an array of names
reverse the array
and join with a comma


=end

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
