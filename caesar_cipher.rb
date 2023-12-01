# puts "Enter String\n"
# STRING = gets.chomp

# puts "Enter Shift Value"
# SHIFT = gets.chomp


STRING = "ABC XYZ"
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
    cipher.map do |char|
        upper = upcase?(char) # true if uppercase
        shifted = (char.ord+shift) # shifted char value

        shifted += 32 if upper == true # when char was uppercase, adjust to lowercase

        if shifted > 122 
            shifted -= 26
        elsif shifted < 97
            shifted += 26
        end

        shifted -= 32 if upper == true # adjust back to uppercase
        shifted = shifted.chr
    end
    p cipher
end

caesar_cipher(STRING, SHIFT.to_i)
