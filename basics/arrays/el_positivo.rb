#  Count the number of positive numbers in an array.
def el_positivo(numbers)
  positive_counter = 0
  numbers.each do |i|
    if i > 0
      positive_counter += 1
    end
  end
  positive_counter
end
p el_positivo([1, -2, 3, -4, 5])
p el_positivo([-10, -5, 0, 2, 8])
p el_positivo([-3, -2, -1])