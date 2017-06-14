def old_roman_numeral number
   roman = ''
   roman = roman + 'M' * (number / 1000)
   roman = roman + 'D' * (number % 1000 / 500)
   roman = roman + 'C' * (number % 500 / 100)
   roman = roman + 'L' * (number % 100 / 50)                                              
   roman = roman + 'X' * (number % 50 / 10)
   roman = roman + 'V' * (number % 10 / 5)
   roman = roman + 'I' * (number % 5 / 1)
   roman
end
puts "Enter input number: "
input = gets.chomp.to_i
puts(old_roman_numeral(input))
