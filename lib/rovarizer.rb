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