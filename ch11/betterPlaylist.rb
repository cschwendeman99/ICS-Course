def music_shuffle files
  files = files.sort
  len = files.length

  2.times do
    index_one = 0
    index_two = len/2
    shuffle = []
    while shuffle.length < len
      if shuffle.length%2 == 0
        shuffle.push (files[index_two])
        index_two = index_two + 1
      else
        shuffle.push(files[index_one])
        index_one = index_one + 1
      end
    end
    files = shuffle
  end
  array = []
  random = rand(len)
  index = 0
  while index < len
    array.push(files[(index + random) % len])
    index = index + 1
  end
  array
end
songs = ['song a', 'song b', 'song c', 'song d', 'song e', 'song f', 'song g', 'song h']
puts(music_shuffle(songs))
  
