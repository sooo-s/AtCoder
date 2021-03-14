a, b, c = gets.split.map(&:to_i) # n = 10, m = 20

moda = a % 10

case moda
when 0, 1, 5, 6
  puts moda
when 2, 3, 7, 8
  four = b.pow(c, 4)
  four = 4 if four == 0
  puts (moda**four) % 10
when 4, 9
  two = b.pow(c, 2)
  two = 2 if two == 0
  puts (moda**two) % 10
end
