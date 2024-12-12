=begin
problem:
Write a method which takes a grocery list (array) of fruits
with quantities and converts it into an array of the correct number of each fruit.

Example:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

dsa:
input: array of arrays
- each array has a string, 'fruit' and a count (int)
output- array

start with an empty result array
iterate over input array
 for each element
  last element times push to result arr
  return result arr

  i could also convert the nested input array to a hash
  and then iterate over the hash using keys/values

=end

def buy_fruit(list)
basket = []

groceries = list.to_h
groceries.each do |item, count|
  count.times { basket << item }
end
basket
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
