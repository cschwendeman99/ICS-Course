puts 'Enter year of birth: '
year = gets.chomp
puts 'Enter month of birth: '
month = gets.chomp
puts 'Enter day of birth: '
day = gets.chomp
puts 'Enter hour of birth: '
hour = gets.chomp
puts 'Enter minute of birth: '
minute = gets.chomp
puts 'Enter second of birth: '
second = gets.chomp
print 'You will be one billion seconds old: '
puts(Time.gm(year.to_i, month.to_i, day.to_i, hour.to_i, minute.to_i, second.to_i) + 10**9)
puts ''

