my_array = [17,3,6,9,15,8,6,1,10]
def stock_picker(picks)
  best_dates = []
  picks.each_with_index do |pick, index|
    best_dates << index if pick == picks.max
    best_dates.unshift(index) if pick == picks.min
  end
  p best_dates
  puts "Therefore, i strongly recommend that you buy stocks on day #{best_dates[0]} and sell on day #{best_dates[1]} to get maximum profit "
end

stock_picker(my_array)
