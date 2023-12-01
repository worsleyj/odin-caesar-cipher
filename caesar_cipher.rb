def caesar_cipher(string, shift)
    cipher = string.chars
    cipher.each { |char| puts (char.ord+shift).chr}
end

caesar_cipher("test", 3)