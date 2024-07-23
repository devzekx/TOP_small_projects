# frozen_string_literal: true

def stock_picker(arr)
  min_index = 0
  max_index = 1
  max_profit = prices[max_index] - prices[min_index]
  
  prices.each_with_index do |price, index|
    if price < prices[min_index]
      min_index = index
    end
  end
end
stock_picker([17,3,6,9,15,8,6,1,10])
