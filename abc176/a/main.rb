n, x, t = gets.chomp.split.map(&:to_i)

puts (n / x.to_f).ceil * t
