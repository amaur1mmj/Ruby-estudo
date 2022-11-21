
def stock_picker(price_array) 
    temp_profit = 0
    profit = 0 

    for i in 0...price_array.length 
        
        i+= 1 if price_array.max == price_array[0]
        for j in i+1...price_array.length
              
             if price_array[i] < price_array[j]

                    temp_profit = price_array[j] - price_array[i]
                    
                    if profit < temp_profit

                        profit = temp_profit
                        
                        buy_sale = [i,j]               
                    end
              end
        end

    end
    return buy_sale, profit
end


 prices = [17,3,6,9,15,8,6,2,10,1,25]



 better_day, profit =  stock_picker(prices)
 p better_day, profit 

