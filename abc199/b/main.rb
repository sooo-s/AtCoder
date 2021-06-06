n = gets.to_i # 10
a = gets.split.map(&:to_i) # n = 10, m = 20
b = gets.split.map(&:to_i) # n = 10, m = 20

diff = b.min - a.max

puts diff >= 0 ? diff + 1 : 0
