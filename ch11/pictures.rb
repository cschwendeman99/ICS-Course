Dir.chdir '/home/carolyns/Pictures'
picture_names = Dir["/home/carolyns/Source/**/*.jpg"]
puts 'Enter name of batch of pictures: '
batch_name = gets.chomp
puts
print "Downloading #{picture_names.length} files: "
picture_number = 1
picture_names.each do |name|
  print '.'
  new_name = if picture_number < 10
               "#{batch_name}0#{picture_number}.jpg"
             else              
               "#{batch_name}#{picture_number}.jpg"
             end
  if FileTest.exist?(new_name)
    puts ''
    print 'Overwrite ' + new_name + '[y]? '
    if gets.chomp == 'y'
      File.rename name, new_name
    end
  else
    File.rename name, new_name
  end

  picture_number = picture_number + 1
  
end
puts
puts "Finished"
