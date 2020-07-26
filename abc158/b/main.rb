n,a,b = gets.chomp.split.map(&:to_i)

sho,amari = n.divmod(a+b)
nokori = amari >= a ? a : amari
sum = nokori + sho * a
puts sum
