def caesar_cipher(string, shift)
  characters = string.chars 
  p characters
  codes = characters.map {|character| character.ord}
  p codes
end

caesar_cipher("Hello", 5)
