# need to make a function for caeser cipher
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

# get the string input and the shift factor
# take the string input, save to array and convert to ordinal value
# check if ordinal value is for lower case or upper case
# upper case range = 65 -- 90 
# lower case range = 97 -- 122

def caesar_cipher(string, shift_value)
    ord_arr = string.split("").map {|char| char.ord}
    

    shifted_arr = ord_arr.map do |char|
        if char.between?(65,90)
            if shift_value.positive?
                (((char - 65) + shift_value) % 26) + 65
            else
                (((char - 65) - shift_value) % 26) + 65
            end
        elsif char.between?(97,122)
            if shift_value.positive?
                (((char - 97) + shift_value) % 26) + 97
            else
                (((char - 97) - shift_value) % 26) + 97
            end
        else
            char
        end
    end

    ciphered_string = shifted_arr.map {|char| char.chr}.join
    p ciphered_string
    
end

print "Please enter text to encode with Caeser Cipher:"
string = gets.chomp

print "Please enter the shift factor (+ or -)"
shift_value = gets.chomp.to_i

caesar_cipher(string,shift_value)
