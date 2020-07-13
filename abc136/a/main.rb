a,b,c=gets.chomp.split.map &:to_i

space = a - b

puts c <= space ? 0 : c - space
