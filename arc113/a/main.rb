k = gets.to_i # 10

ans = 0
(1..k).each do |a|
  kk = k / a
  (1..kk).each do |b|
    kkk = kk / b
    (1..kkk).each do |c|
      ans += 1 if a * b * c <= k
    end
  end
end

puts ans
