def bubble_sort(arr)
    swaps = false
    arr.each_with_index do |x, i|
        unless arr[i+1].nil?
            if x > arr[i+1]
                swaps = true
                arr[i], arr[i+1] = arr[i+1], arr[i]
            end
        end
    end
    bubble_sort(arr) if swaps
    return arr.inspect
end

puts bubble_sort([4,3,78,2,0,2])