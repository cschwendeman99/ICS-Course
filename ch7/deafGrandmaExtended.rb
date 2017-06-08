puts "What would you like to tell Grandma?"
count = 0
while true
   message = gets.chomp
   if message == 'BYE'
      count = count + 1
   else
      count = 0
   end
   if count >= 3
      puts 'OKAY BYE!'
      break
   end
   if message != message.upcase
      puts 'HUH?! SPEAK UP SONNY!'
   else
      rand_yr = 1900 + rand(50)
      puts 'NO, NOT SINCE ' + rand_yr.to_s + '!'
   end
end
