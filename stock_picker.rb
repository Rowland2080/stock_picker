my_array = [17,3,6,9,15,8,6,1,10]
def stock_picker(picks)
  best_dates = []
  best_stock_prices = []
  picks.each_with_index do |pick, index|
    if pick == picks.max
      best_dates << index
      best_stock_prices << pick
    elsif pick == picks.min
      best_dates.unshift(index)
      best_stock_prices.unshift(pick) 
    end
  end
  puts "Therefore, i strongly recommend that you buy stocks on day #{best_dates[0]} and sell on day #{best_dates[-1]} to get maximum profit of $#{best_stock_prices[-1] - best_stock_prices[0]}."
end

stock_picker(my_array)
