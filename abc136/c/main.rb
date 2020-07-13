n = gets.to_i
h = gets.chomp.split.map(&:to_i).reverse

h.each_with_index do |hh, i|
  next if i == h.size - 1
  diff = h[i] - h[i+1]
  if diff < -1
    puts 'No'
    exit
  end

  if diff == -1
    h[i+1] -= 1
  end
end
puts 'Yes'
