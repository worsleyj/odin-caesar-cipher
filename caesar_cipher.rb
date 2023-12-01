puts "Enter String\n"
STRING = gets.chomp

puts "Enter Shift Value\n"
SHIFT = gets.chomp


def upcase?(char)
    true if char == char.upcase && letter?(char)
end

def letter?(char)
    (char.ord >= 65 && char.ord <= 122) # true if char is a-z or A-Z
end

def caesar_cipher(string, shift)
    cipher = string.chars
    cipher.map! do |char|
        is_letter = letter?(char)
        uppercase = upcase?(char) # true if uppercase

        if is_letter
            shifted = (char.ord+shift) # shifted char value
        else
            shifted = (char.ord) # don't shift if it's not a letter
        end

        shifted += 32 if uppercase # when char was uppercase, adjust to lowercase

        if shifted > 122 && is_letter
            shifted -= 26
        elsif shifted < 97 && is_letter
            shifted += 26
        end

        shifted -= 32 if uppercase # adjust back to uppercase
        shifted = shifted.chr
    end
    puts "Original String: \"" + string + "\""
    puts "Modified String: \"" + cipher.join + "\" - shifted by " + shift.to_s + " places."
end

caesar_cipher(STRING, SHIFT.to_i)
