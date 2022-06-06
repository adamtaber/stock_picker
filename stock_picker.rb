
def stock_picker(stock_prices)
  stock_comparison = stock_prices.combination(2).to_a
  profit_array = stock_comparison.map.with_index do |x, index|
    stock_comparison[index][1] - stock_comparison[index][0]
  end
  profit_sort = profit_array.sort
  stock_comparison.each_index do |index|
    if (stock_comparison[index][1] - stock_comparison[index][0]) == profit_sort.last
      output = [stock_prices.find_index(stock_comparison[index][0]), stock_prices.find_index(stock_comparison[index][1])]
      return output
    end
  end
end

stock_prices = [400, 5, 2, 26, 18, 9, 999, 25, 1]

p stock_picker(stock_prices)