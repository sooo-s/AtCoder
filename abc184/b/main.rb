n, x = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars

s.each do |ss|
  if ss == 'o'
    x += 1
  else
    x -= 1 unless x.zero?
  end
end

puts x
