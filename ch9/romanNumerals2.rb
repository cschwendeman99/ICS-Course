def modern_roman_numerals number
  thousands = (number / 1000)
  hundreds = (number % 1000 / 100)
  tenths = (number % 100 / 10)
  ones = (number % 10 / 1)
  roman = 'M' * thousands
  if hundreds == 9
    roman = roman + 'CM'
  elsif hundreds == 4
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (number % 1000 / 500)
    roman = roman + 'C' * (number % 500 / 100)
  end
  if tenths == 9
    roman = roman + 'XC'
  elsif tenths == 4
    roman = roman + 'XL'
  else
    roman = roman + 'L' * (number % 100 / 50)
    roman = roman + 'X' * (number % 50 / 10)
  end
  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (number % 10 / 5)
    roman = roman + 'I' * (number %  5 / 1)
  end
  roman
end
puts "Enter input number: "
input = gets.chomp.to_i
puts(modern_roman_numerals(input))
    
    
    
  
