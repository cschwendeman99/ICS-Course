def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end
log 'block 1' do
  log 'block 2' do
    1**1 + 2**2
  end
  log 'block 3' do
    'txet emos'.reverse
  end
  '0' == 0
end
