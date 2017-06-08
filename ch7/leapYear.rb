puts 'Enter a starting year: '
stating_year = gets.chomp.to_i
puts 'Enter an ending year: '
ending_year = get.chomp.to_i
puts 'The leap years between starting and ending years are: '
year = starting_year
while year <= ending_year
   if year%4 == 0
      if year%100 != 0 || year%400 == 0
	     puts year
      end
   end
   year = year + 1
end
   