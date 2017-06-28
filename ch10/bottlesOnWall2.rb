def english_number number
  number_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thrity', 'forty', 'fifty', 'sixty', 'seventy',
                'eighty', 'ninty']
  teens = ['eleven', 'twelve', 'thriteen', 'fourteen', 'fifteen','sixteen', 'seventeen',
           'eighteen', 'nineteen']
  expanded = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9],
              ['trillion', 12], ['quadrillion', 15], ['quintillion', 18],
              ['sextillion', 21], ['septillion', 24], ['octillion', 27],
              ['nonillion', 30], ['decillion', 33]]
  
  if number < 0
    return 'Enter a number greater than or equal to zero'
  end
  
  if number > 1000000000000000000000000000000000
    return 'Enter a number less an a decillion'
  end
  
  if number == 0
    return 'zero'
  end
  
  remainder = number
  while expanded.length > 0
    pair = expanded.pop
    name = pair[0]
    base = 10 ** pair[1]
    current = remainder / base
    remainder = remainder - current*base
    if current > 0
      prefix = english_number current
      number_string = number_string + prefix + ' ' + name
      if remainder > 0
        number_string = number_string + ' '
      end
    end
  end
  
  current =  remainder / 10
  remainder = remainder - current*10
  if current > 0
    if ((remainder > 0) and (current == 1))
      number_string = number_string + teens[remainder - 1]
      remainder = 0
    else
      number_string = number_string + tens_place[current - 1]
    end
    if remainder  > 0
      number_string = number_string + '-'
    end
  end
  
  current = remainder
  remainder = 0
  if current > 0
    number_string = number_string + ones_place[current - 1]
  end
  
  number_string
end


start_value = 99
current_value = start_value
while current_value > 2
   puts english_number(current_value).capitalize + ' bottles of beer on the wall, ' +             english_number(current_value) + ' bottles of beer!'
   current_value = current_value - 1
   puts 'Take one down, pass it around, ' + english_number(current_value) +
        ' bottles of beer on the wall!'
   puts ''
end
puts 'Two bottles of beer on the wall, two bottles of beer!'
puts 'Take one down, pass it around, one bottle of beer on the wall!'
puts 'One bottle of beer on the wall, one bottle of beer!'
puts 'Take one down, pass it around, no more bottles of beer on the wall!'
