# puts "Enter String\n"
# STRING = gets.chomp

# puts "Enter Shift Value"
# SHIFT = gets.chomp


STRING = "ABCXYZ"
SHIFT = 3

def upcase?(char)
    if char == char.upcase
        true
    else
        false
    end
end

def caesar_cipher(string, shift)
    cipher = string.chars
    cipher.each do |char|
        upper = upcase?(char) # true if uppercase
        shifted = (char.ord+shift) # shifted char value

        if upper == true # when char was uppercase, adjust to lowercase
            shifted += 32
        end

        if shifted > 122 
            shifted -= 26
        elsif shifted < 97
            shifted += 26
        end

        if upper == true # adjust back to uppercase
            shifted -= 32
        end
        puts shifted.chr
    end
end

caesar_cipher(STRING, SHIFT.to_i)
