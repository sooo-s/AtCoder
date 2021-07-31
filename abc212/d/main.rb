Q = gets.to_i # 10
query = Q.times.map { gets.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]

ball = Hash.new(0)
min = Float::MAX.to_i

query.each do |q, x|
  case q
  when 1
    ball[x] += 1
    min = x if x < min
  when 2
    ball = ball.transform_keys { |k| k + x }
    min += x
  when 3
    puts min
    ball[min] -= 1
    if ball[min] == 0
      ball.delete(min)
      min = ball.keys.min
    end
  end
end
