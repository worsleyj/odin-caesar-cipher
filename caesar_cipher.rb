# puts "Enter String\n"
# STRING = gets.chomp

# puts "Enter Shift Value"
# SHIFT = gets.chomp


STRING = "abcxyz"
SHIFT = 3

def caesar_cipher(string, shift)
    cipher = string.chars
    cipher.each do |char|
        shifted = (char.ord+shift) # shifted char value
        if shifted > 122 
            shifted -= 26
        elsif shifted < 97
            shifted += 26
        end
        puts shifted.chr
    end
end

caesar_cipher(STRING, SHIFT.to_i)