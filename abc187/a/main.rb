a,b = gets.split.map(&:to_s)

sa = a.split('').map(&:to_i).sum
sb = b.split('').map(&:to_i).sum

p sa < sb ? sb : sa
