header = 'Table of Contents'.center(50)
chapters = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]
number = 1
puts header.center(50)
puts
chapters.each do |chapter|
  name = 'Chapter ' + number.to_s + ':   ' +  chapter[0]
  page = 'page ' + chapter[1].to_s
  puts name.ljust(30) + page.rjust(20)
  number = number + 1
end
