  def bubble_sort(arr)
    n = arr.length # find the full length from the array
    loop do
      swapped = false # sentinel value
      (n-1).times do |i| # nested loop; iterate to the last integer in array
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true
        end
      end
      break if not swapped # sentinel value -> breaks the loop
    end
    arr
  end

arr = [4, 6, 2, 3, 5, 1, 7]

p bubble_sort(arr)
