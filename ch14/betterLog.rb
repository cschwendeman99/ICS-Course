$indent = 0
def log desc, &block
  prefix = '  ' * $indent
  puts prefix + 'Beginning "' + desc + '"...'
  $indent = $indent + 1
  result = block.call
  $indent = $indent - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end
log 'block 1' do
  log 'block 2' do
    log 'block 3' do
      'SomE TexT'.downcase
    end
    7 * 3 * 2
  end
  log 'block 4' do
    'txet erom'.reverse
  end
  '0' == "0"
end
