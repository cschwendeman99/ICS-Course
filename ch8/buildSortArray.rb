inputs = []
puts "Enter words to sort: "
while true
   input = gets.chomp
   if input == ''
      break
   end
   inputs.push input
end
puts "Sorted words: "
puts inputs.sort
