n = gets.to_i

amari = n % 1000
puts amari == 0 ? 0 : 1000 - n % 1000
