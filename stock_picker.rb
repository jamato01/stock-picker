def stock_picker(stocks)
  biggest_profit = 0
  return_days = [0, 1]
  first_days = stocks[0, stocks.length - 1]

  first_days.each_with_index do |buy_price, buy_date|
    last_days = stocks[buy_date + 1, stocks.length]
    last_days.each_with_index do |sell_price, sell_date|
      profit = sell_price - buy_price
        if profit > biggest_profit
          biggest_profit = profit
          return_days = [buy_date, buy_date + sell_date + 1]
        end
      end
  end
  
  return_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])