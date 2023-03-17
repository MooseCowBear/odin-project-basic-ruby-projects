def stock_picker(prices)
  buy = 0
  max_profit = 0
  result = [0, 0] 
  prices.each_with_index do |price, index|
    if max_profit < prices[index] - prices[buy] #if we sold now, would we do better?
      max_profit = prices[index] - prices[buy]
      result = [buy, index]
    end
    if price < prices[buy] #could we buy for less? 
      buy = index   
    end
  end
  result
end

a = stock_picker([17,3,6,9,15,8,6,1,10])
pp a
b = stock_picker([1, 2, 3, 4, 5, 6, 7, 8])
pp b
c = stock_picker([4, 3, 2, 1])
pp c
d = stock_picker([1])
pp d