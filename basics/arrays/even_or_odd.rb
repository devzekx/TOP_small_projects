# Description: Given an array of numbers, create a new array containing only the even numbers.

def even_or_odd(numbers)
  even_numbers = []
  numbers.each do |i|
    if i % 2 == 0
      even_numbers << i
    end
  end
  even_numbers
end

p even_or_odd([1,2,3,4,5])