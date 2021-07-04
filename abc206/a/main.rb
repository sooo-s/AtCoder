n = gets.to_i # 10

price = (n * 1.08).floor

puts(if price < 206
       'Yay!'
     else
       price == 206 ? 'so-so' : ':('
     end)
