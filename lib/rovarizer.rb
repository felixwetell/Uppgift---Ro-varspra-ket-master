def rovarize(cleartext:)

  consonant = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Z', 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
  # Variable to put the crypted text in.
  crypt = ""
  # Splits the string up to individual characters in a array
  text = cleartext.split(//)

  text.each do |char|

    # Checks if variable char exsist in consonant
    if consonant.include? char
      # Puts char in crypt
      crypt << char + "o" + char

    # Puts char in crypt if char is not a consonant
    else
      crypt << char

    end
  end

  # Returns cryted string
  return crypt

end

def derovarize(cipher:)

  consonant = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Z', 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
  # Variable to put the crypted text in.
  decrypt = ""
  # Splits the string up to individual characters in a array
  text = cipher.split(//)

  text.each do |char|

    if consonant.include? char
      # Puts char in decrypt
      decrypt << char
      # Delets first and second characters in array
      text.delete_at(0)
      text.delete_at(1)

    # Puts char in decrypt if char is not a consonant
    else
      decrypt << char

    end
  end

  # Returns decrypted string
  return decrypt

end


text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna metus, venenatis non augue sit amet, scelerisque placerat purus. Nulla viverra ultrices ex ut venenatis. Vivamus sed turpis vel metus pretium placerat eu non sapien. Morbi lobortis faucibus risus a accumsan. Aliquam ornare turpis ac posuere dictum. Donec ac mollis augue. Fusce mollis congue scelerisque."
derovarize(cipher: rovarize(cleartext: text))