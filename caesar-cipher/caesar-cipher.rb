def caesar_cipher(string, shift)
  characters = string.chars 
  codes = characters.map {|character| character.ord}
  new_codes = codes.map do |code|
    if code.between?(65, 90)
      code += shift
      unless code.between?(65, 90)
        code = ((((code - 65)) % 26) + 65) 
      end
      code 
    elsif code.between?(97, 122)
      code += shift
      unless code.between?(97, 122)
        code = ((((code - 97)) % 26) + 97)
      end
      code  
    else
      code
    end
  end
  new_codes
  new_characters = new_codes.map {|code| code.chr}
  new_characters.join('')
end
