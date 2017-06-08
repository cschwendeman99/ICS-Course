start_value  = 99
current_value = start_value
while current_value > 2
   puts current_value.to_s + ' bottles of beer on the wall, ' + current_value.to_s +
   		' bottles of beer!'
   current_value = current_value - 1
   puts 'Take one down, pass it around, ' + current_value.to_s +
        ' bottles of beer on the wall!'
end
puts current_value.to_s + ' bottles of beer on the wall, ' + current_value.to_s +
     ' bottles of beer!'
current_value = current_value - 1
puts 'Take one down, pass it around, ' + current_value.to_s +
	 ' bottle of beer on the wall!'
puts current_value.to_s + ' bottle of beer on the wall, ' + current_value.to_s +
     ' bottle of beer!'
puts 'Take one down, pass it around, no more bottles of beer on the wall!'
