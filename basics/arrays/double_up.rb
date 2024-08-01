# Given an array of numbers, create a new array with each value doubled.
def double_up(numbers)
  numbers.map { |i| i * 2 }
end

p double_up([1, 2, 3])
p double_up([-5, 0, 10])