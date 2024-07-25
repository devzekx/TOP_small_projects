# write a method sum_array that takes an array and returns the sum
# would be pointless to use .sum, right?

def sum_array(arr)
  arr.reduce(0) { |accumulator, num| accumulator + num }
end
p sum_array([1, 2, 3, 4, 5])

# Initial value: The accumulator is initialized to 0 -> arr.reduce(0)
# The block is executed for each element of the array.
# First Iteration: The accumulator is 0, and num is 1. The block calculates 0 + 1 and updates the accumulator to 1.
# Second Iteration: The accumulator is 1, and num is 2. The block calculates 1 + 2 and updates the accumulator to 3.
# and so on.
# Reduce method returns the final value of the accumulator after processing all elements, which is 15
# __________________________________________________________________________________________________________________

# Write a method reverse_array that takes an array and returns a new array with the elements in reverse order.
# Would be pointless to use .reverse, right?

# method 1: each_with_index
def reverse_array(arr)
  reversed = Array.new
  # start with an empty array to collect the elements in reverse order
  arr.each_with_index do | element, index |
    reversed.insert(0, element)
    # the insert method, puts each element at selected index, in this case 0
  end
  reversed
end
p reverse_array([1, 2, 3, 4, 5])
p reverse_array(["a", "b", "c"])

# method 2: while loop
def reverse_array_dos(arr)
  first_element = 0
  last_element = arr.length - 1
  while first_element < last_element
    arr[first_element], arr[last_element] = arr[last_element], arr[first_element]
    first_element = first_element + 1
    last_element = last_element - 1
  end
  arr
end
p reverse_array_dos([1, 2, 3, 4, 5])
p reverse_array_dos(["a", "b", "c"])

# __________________________________________________________________________________________________________________


# Exercise 3: find the min and max:
# write a method min_and_max that takes an array of numbers and returns an array with the min & max number

def min_and_max(arr)
  min_value = arr[0]
  max_value = arr[0]

  arr.each do |num|
    min_value = num if num < min_value
    max_value = num if num > max_value
  end
  [min_value, max_value]
end
p min_and_max([7, 8, 8, 1, 10])



# Exercise 4 -: count the occurences
# Write a method count_occurrences that takes an array and returns a hash with the count of each element.
# count_occurrences([1, 2, 2, 3, 3, 3]) # => {1=>1, 2=>2, 3=>3}
# count_occurrences(["a", "b", "a", "c"]) # => {"a"=>2, "b"=>1, "c"=>1}

def count_occurences(arr)
  occurences = Hash.new(0)

  arr.each do |element|
      occurences[element] = occurences[element] + 1
    end
  end
  occurences
end

p count_occurences([0, 0, 2, 2, 5, 7, 0]).inspect