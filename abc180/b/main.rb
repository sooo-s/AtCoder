n = gets.to_i # 10
x = gets.split.map { |v| v.to_i.abs } # n = 10, m = 20

man = x.sum
ecu = Math.sqrt(x.map { |v| v**2 }.sum)
che = x.max

puts man, ecu, che
