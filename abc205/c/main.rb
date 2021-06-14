a, b, c = gets.chomp.split.map(&:to_i) # n = 10, m = 20

c = c.odd? ? 1 : 2

a **= c
b **= c

ans = if a == b
        '='
      else
        a < b ? '<' : '>'
      end

puts ans
