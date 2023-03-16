def caesar_cipher(input, shift_factor)
  shift_factor = shift_factor.remainder(26) #so shift factor can be negative, and less than -26
  if shift_factor < 0
    shift_factor = 26 + shift_factor
  end
  input.bytes.map{|code| cipher_shift(code, shift_factor)}.map{|code| code.chr}.join
end

def cipher_shift(ascii_code, shift_factor)
  if ascii_code.between?(97, 122) 
    ascii_code += shift_factor
    if ascii_code > 122
      ascii_code = 96 + (ascii_code - 122)
    end
  elsif ascii_code.between?(65, 90)
    ascii_code += shift_factor
    if ascii_code > 90
      ascii_code = 64 + (ascii_code - 90)
    end
  end
  ascii_code
end