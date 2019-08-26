def stock_picker(arr)
    best_profit = 0
    best_days = []
    arr.each_with_index do |num, i|
        arr[i..-1].each_with_index do |cmp, j|
            if num < cmp && cmp - num > best_profit
                best_profit = cmp - num
                best_days = []
                best_days << i
                best_days << j+1
            end
        end
    end
    puts "#{best_days}for a profit of $#{best_profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])