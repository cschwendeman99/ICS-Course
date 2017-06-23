def sort array
  recursive_sort array, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end
  first = unsorted.pop
  new_unsorted = []
  unsorted.each do |word|
    if word < first
      new_unsorted.push first
      first = word
    else
      new_unsorted.push word
    end
  end
  sorted.push first
  recursive_sort new_unsorted, sorted
end

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
puts sort(inputs)
