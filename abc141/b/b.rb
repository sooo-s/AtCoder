s = gets.chomp.chars

def danceable? arr
  arr.each.with_index(1) do |tap, i|
    return false if i.odd? && %w(L).include?(tap)
    return false if i.even? && %w(R).include?(tap)
  end

  return true
end

puts danceable?(s) ? 'Yes' : 'No'
