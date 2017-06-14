def ask question
   while true
     puts question
     input = gets.chomp.downcase
     if input == 'yes'
        return true
     end
     if input == 'no'
        return false
     end
     puts 'Answer "yes" or "no"'
   end
end
puts ask 'Do you like tacos?'


 
