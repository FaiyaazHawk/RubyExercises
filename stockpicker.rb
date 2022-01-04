def stock_picker(prices)
   max_profit = 0
   days = [0,0]
   min_price = prices[0]
   min_index = 0


   prices.each_with_index do |price,index|
      if price < min_price 
         min_price = price
         min_index = index
         next
      end

      if price - min_price > max_profit
         max_profit = price - min_price
         days = [min_index,index]
      end
   end   
   
   p "The best day to buy is #{days[0]} and the best day to sell is #{days[1]} for a profit of #{max_profit}"


end















#test
prices = [17,3,6,9,15,8,6,1,10,16,0,38,5,12,6,98,1,56,4,32,2,23,2,32,0]

stock_picker(prices)