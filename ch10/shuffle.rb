def shuffle array
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
puts(shuffle([1,2,3,4,5,6,7,8,9]))
