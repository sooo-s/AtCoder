n = gets.to_i # 10

ans = if n <= 125
        4
      else
        n <= 211 ? 6 : 8
      end

puts ans
