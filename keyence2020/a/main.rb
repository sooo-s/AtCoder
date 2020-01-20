h = gets.chomp.to_i
w = gets.chomp.to_i
n = gets.chomp.to_i

if (h >= w)
  long = h
  short = w
else
  long = w
  short = h
end

div = (n.to_f / long).ceil

puts div
