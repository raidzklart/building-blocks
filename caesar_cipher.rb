def caesar_cipher(str, int)
    builder = ""
    str.each_byte do |b|
        if (b + int).between?(65,90) || (b + int).between?(97,122)
            builder += (b + int).chr
        elsif (b + int).between?(91,(90+int)) || (b + int).between?(123,(122+int))
            builder += ((b + int)-26).chr
        else
            builder += b.chr
        end
    end
    puts builder
end

caesar_cipher("What a string!", 5)