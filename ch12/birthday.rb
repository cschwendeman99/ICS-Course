puts 'Enter year of birth: '
year = gets.chomp.to_i
puts 'Enter month of birth: '
month = gets.chomp.to_i
puts 'Enter day of birth: '
day = gets.chomp.to_i
b = Time.local(year, month, day)
t = Time.new

age = 1

while Time.local(year + age, month, day) <= t
  puts 'SPANK!'
  age = age + 1
end
