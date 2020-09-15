def caesar_cipher(string, int)
  cipher = ""
  string = string.bytes
  string.each do |char|
    if (char > 64 && char < 91) || (char > 96 && char < 123)
      char += int
    end
    if (char > 90 && char < 97)
      char = (char - 90) + 64
    elsif (char > 122)
      char = (char - 122) + 96
    end
    cipher += char.chr
  end
  return cipher
end
