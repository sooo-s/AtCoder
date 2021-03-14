a, b, w = gets.chomp.split.map(&:to_i)

ans = []
(1..10**6).each do |n|
  ans.push n if a * n <= 1000 * w && 1000 * w <= b * n
end

if ans.size.zero?
  puts 'UNSATISFIABLE'
else
  puts "#{ans.first} #{ans.last}"
end
