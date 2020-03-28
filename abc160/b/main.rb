x = gets.chomp.to_i

gohyaku_en = x / 500
go_en = (x - gohyaku_en * 500 ) / 5

puts gohyaku_en * 1000 + go_en * 5
