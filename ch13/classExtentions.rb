class Array
  def shuffle
    array = self
    shuffle_array = []
    while array.length > 0
    new_array = []
    random_index = rand(array.length)
      array.each do |item|
        if item == array[random_index]
          shuffle_array.push item
        else
          new_array.push item
        end
      end
     array = new_array
     end
     shuffle_array
  end
end

class Integer
  
  def factorial
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end
  
  def to_roman
    if (self > 3000) || (self < 0)
      puts "The number must be between 1 and 3000"
    else 
      thousands = (self / 1000)
      hundreds = (self % 1000 / 100)
      tenths = (self % 100 / 10)
      ones = (self % 10 / 1)
      roman = 'M' * thousands
      if hundreds == 9
        roman = roman + 'CM'
      elsif hundreds == 4
        roman = roman + 'CD'
      else
        roman = roman + 'D' * (self % 1000 / 500)
        roman = roman + 'C' * (self % 500 / 100)
      end
      if tenths == 9
        roman = roman + 'XC'
      elsif tenths == 4
        roman = roman + 'XL'
      else
        roman = roman + 'L' * (self % 100 / 50)
        roman = roman + 'X' * (self % 50 / 10)
      end
      if ones == 9
        roman = roman + 'IX'
      elsif ones == 4
        roman = roman + 'IV'
      else
        roman = roman + 'V' * (self % 10 / 5)
        roman = roman + 'I' * (self %  5 / 1)
      end
      roman
    end
  end
end
    
puts [1,2,3,4,5,6,7,8,9].shuffle
puts 3.factorial
puts 1945.to_roman
