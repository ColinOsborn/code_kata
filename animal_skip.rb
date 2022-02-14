def skip_animals(animals, skip)
  skipped = []
  animals.each_with_index do |animal, index|
    skipped << "#{index}:#{animal}" if index >= skip
    # skipped << animal if index >= skip
  end
  puts skipped
end

test = skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)
