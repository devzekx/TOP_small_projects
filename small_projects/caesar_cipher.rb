def caesar_cipher(string, shift_factor)
  # downcase the string for easier conversion to ASCII
  lcase_string = string.downcase

  # we also need to return the ciphered string at the end
  ciphered_string = ""

  # now we need to iterate through each character in the string to check if it's in the alphabet
  lcase_string.each_char do |char|
    # lets check if the characters match the alphabet
    if char =~ /[a-z]/

      # lets implement a method to get ASCII values of our characters
      ascii_code = char.ord

      # apply the caesar shift factor
      new_ascii_code = ascii_code + shift_factor

      # lets stay in range of ASCII & alphabet: wrap the around the alphabet
      new_ascii_code = new_ascii_code % 123 if new_ascii_code > 122

      # now we have to convert the new ASCII code back to chars
      new_char = new_ascii_code.chr

      # the converted chars need to be added to the ciphered string
      ciphered_string << new_char
    else
      ciphered_string << char
    end
  end
  ciphered_string
end

puts caesar_cipher("Hello", 5)
