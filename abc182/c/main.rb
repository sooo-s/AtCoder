n = gets.chop.split('').map(&:to_i).map { |v| v % 3 }

goukei = n.sum % 3

if [[2, 2], [1, 1], [1], [2]].include?(n)
  puts(-1)
  exit
end

if goukei.zero?
  puts 0
  exit
end

if n.any?(goukei)
  puts 1
  exit
end

puts 2
