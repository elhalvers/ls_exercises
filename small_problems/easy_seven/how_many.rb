=begin
Problem:
Write a method that counts the number of occurrences of each element in a given array.

DS&A:

could use Enumerable#tally
or the long way

=end

def count_occurrences(arr)
  count_hash = arr.tally
  count_hash.each { |k,v| puts "#{k} => #{v}" }
#  count_hash = {}
  #arr.each do |el|
  #  if count_hash[el]
  #    count_hash[el] += 1
  #  else
  #    count_hash[el] = 1
  #  end
  #end
  #count_hash.each { |k,v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
# Expected output:
# car => 4
#truck => 3
#SUV => 1
#motorcycle => 2
