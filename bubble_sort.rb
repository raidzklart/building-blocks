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

# puts bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr, &block)
    swaps = false
    arr.each_with_index do |x, i|
        unless arr[i+1].nil?
            if yield(x, arr[i+1]) > 0
                swaps = true
                arr[i], arr[i+1] = arr[i+1], arr[i]
            end
        end
    end
    bubble_sort_by(arr, &block) if swaps
    puts arr.inspect unless swaps
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end