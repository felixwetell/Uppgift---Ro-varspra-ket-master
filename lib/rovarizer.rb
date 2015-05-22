def rovarize(cleartext:)

  consonant = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Z','b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
  crypt = ""
  text = cleartext.split(//)

  text.each do |char|

    if consonant.include? char
      crypt << char + "o" + char

    else
      crypt << char

    end
  end

  return crypt

end

def derovarize(cipher:)

  consonant = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Z','b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
  decrypt = ""
  text = cipher.split(//)

  text.each do |char|

    if consonant.include? char
      decrypt << char
      text.delete_at(0)
      text.delete_at(1)

    else
      decrypt << char

    end
  end
  return decrypt

end


# text = "Hejsan 2lt Larsson!"
# derovarize(cipher:rovarize(cleartext:text))