birthdays = {}
File.read('birthdays.txt').each_line do |line|
  line = line.chomp
  comma_one = 0
  while line[comma_one] != ',' && comma_one < line.length
    comma_one = comma_one + 1
  end
  name = line [0..(comma_one -1)]
  date = line[(comma_one + 1)..-1]
  birthdays[name] = date
end
puts 'Enter name of person whose birthday you want: '
name = gets.chomp
date = birthdays[name]
if date == nil
  puts 'Do not know that birthday'
else
  puts date
end
