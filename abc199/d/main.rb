n = gets.to_i # 10
s = gets.chomp.to_s #  "string"
s = gets.chomp.chars # ["s", "t", "r", "i", "n", "g"]
n,m = gets.split.map(&:to_i) # n = 10, m = 20
n.times{ array << gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

