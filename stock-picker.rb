def stock_picker(array)
  max_profit = 0
  best_days = []
  array.each_with_index do |buy_price, buy_day|
    (buy_day + 1...array.length).each do |sell_day|
      sell_price = array[sell_day]
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end
  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
