# Caeser Cipher
  # Replace the letters of a given word or phrase 
  # Do so by substituting new letters a given number of places apart in the alphabet



  # a b c d e f g h i j k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
  # 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25

def caeser_cipher(phrase, n)
  encrypted_phrase = ""
  alphabet = ("a".."z").to_a
  # iterate over each character in given phrase
  phrase.each_char do |char|
    # check if character is a letter
    if /[a-z]|[A-Z]/.match(char)
      # find encrypted character's index and assign encrypted character
      shifted_idx = (alphabet.index(char.downcase) + n) % alphabet.length
      encrypted_char = alphabet[shifted_idx]
      if /([A-Z])/.match(char)
        # check if character in original phrase is capitalized, then capitalize encrypted character if so
        encrypted_char.capitalize!
      end
      # add encrypted character to return phrase
      encrypted_phrase += encrypted_char
    else
      # if charavter is not a letter, add to return phrase as is
      encrypted_phrase += char
    end
  end

  encrypted_phrase
end

puts caeser_cipher('Hello, love!', 34)