class Array
  def bubble_sort
    n = self.length # find the full length from the array - self talks about instance of the class (array example)
    loop do
      swapped = false # sentinel value
      (n-1).times do |i| # nested loop; iterate to the last integer in array
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i]
          swapped = true
        end
      end
      break if not swapped # sentinel value -> breaks the loop
    end
    self
  end
end

arr = [4, 6, 2, 3, 5, 1, 7]

p arr.bubble_sort