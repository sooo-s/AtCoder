n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort

renzoku = []
tmp = 0
a.push(n + 1).each do |aa|
  long = aa - tmp - 1
  renzoku.push long if long > 0
  tmp = aa
end

k = renzoku.min

puts renzoku.reduce(0) { |sum, r| sum + (r / k.to_f).ceil }
