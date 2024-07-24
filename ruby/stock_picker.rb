# frozen_string_literal: true

def stock_picker(prices)
  (0...prices.size).to_a.combination(2).max_by { |buy, sell| prices[sell] - prices[buy] }
end
p stock_picker([17,3,6,9,15,8,6,1,10])

# (0...prices.size.to_a) => creates an array of all day indices
# combination(2) => generates all possible pairs of days
# max_by => finds pair of days that result in max profit by subtracting buy day price from sell day price: prices[sell] - prices[buy]
# we put prices[sell] first => biggest amount we can sell
# we put prices[buy] last => lowest amount to buy
