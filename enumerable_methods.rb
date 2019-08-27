module Enumerable
    def my_each
        for element in self
            yield element
        end
    end

    def my_each_with_index
        for i in 0...self.length
            yield self[i], i
        end
    end

    def my_select
        output = []
        my_each { |x| output << x if yield x }
        puts output
    end

    def my_all?
        my_each { |x| return false unless yield x }
        true
    end

    def my_any?
        my_each { |x| return true if yield x } 
        false
    end

    def my_none? 
        my_any? { |x| yield x } ? false : true
    end

    def my_count
        counter = 0
        my_each { |x| counter += 1 }
        counter
    end
end