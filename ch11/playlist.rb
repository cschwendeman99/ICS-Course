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

music = shuffle(Dir['**/*.ogg'])
File.open 'playlist.m3u', 'w' do |f|
  music.each do |ogg|
    f.write ogg + "\n"
  end
end
puts "Finished"
