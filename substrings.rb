dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(str, dict)
    words = str.downcase.split(" ")
    output = Hash.new
    dict.each do |x|
        words.each do |word|
            if word.include? x
                output[x] ||= 0
                output[x] += 1
            end
        end
    end
    puts output
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)