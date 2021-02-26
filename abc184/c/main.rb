r1, c1 = gets.chomp.split.map(&:to_i)
r2, c2 = gets.chomp.split.map(&:to_i)

ans =  if [r1, c1] == [r2, c2]
         0
       elsif r1 + c1 == r2 + c2 ||
             r1 - c1 == r2 - c2 ||
             (r1 - r2).abs + (c1 - c2).abs <= 3
         1
       elsif (r1 + r2 + c1 + c2).even? ||
             (r1 - r2).abs + (c1 - c2).abs <= 6 ||
             (r1 + c1 - r2 - c2).abs <= 3 ||
             (r1 - c1 - r2 + c2).abs <= 3
         2
       else
         3
       end

puts ans
